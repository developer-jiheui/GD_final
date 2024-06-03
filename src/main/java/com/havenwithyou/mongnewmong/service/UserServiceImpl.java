package com.havenwithyou.mongnewmong.service;

import com.havenwithyou.mongnewmong.dto.UserDto;
import com.havenwithyou.mongnewmong.mapper.UserMapper;
import com.havenwithyou.mongnewmong.utils.MyFileUtils;
import com.havenwithyou.mongnewmong.utils.MyJavaMailUtils;
import com.havenwithyou.mongnewmong.utils.MySecurityUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.PrintWriter;
import java.util.Map;


@Transactional
@Service
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;
    private final MyJavaMailUtils myJavaMailUtils;
    private final MyFileUtils myFileUtils;

    public UserServiceImpl(UserMapper userMapper, MyJavaMailUtils myJavaMailUtils, MyFileUtils myFileUtils) {
        super();
        this.userMapper = userMapper;
        this.myJavaMailUtils = myJavaMailUtils;
        this.myFileUtils = myFileUtils;
    }

    @Override
    public ResponseEntity<Map<String, Object>> checkEmail(Map<String, Object> params) {
        return new ResponseEntity<>(Map.of("enableEmail", userMapper.getUserByMap(params) == null)
                , HttpStatus.OK);
    }

    @Override
    public ResponseEntity<Map<String, Object>> sendCode(Map<String, Object> params) {
        // 인증코드 생성
        String code = MySecurityUtils.getRandomString(6, true, true);

        // 개발할 때 인증코드 찍어보기
        System.out.println("인증코드 : " + code);

        // 메일 보내기
        myJavaMailUtils.sendMail((String) params.get("email")
                , "myapp 인증요청"
                , "<div>인증코드는 <strong>" + code + "</strong>입니다.");

        // 인증코드 입력화면으로 보내주는 값
        return new ResponseEntity<>(Map.of("code", code)
                , HttpStatus.OK);
    }

    @Override
    public ResponseEntity<Map<String, Object>> signup(Map<String, Object> params, HttpServletRequest request, HttpServletResponse response) {
        String name = MySecurityUtils.getPreventXss((String) params.get("name"));
        String email = (String) params.get("email");
        String phone = (String) params.get("phone");
        String username = (String) params.get("username");
        String password = MySecurityUtils.getSha256((String) params.get("pw"));
        //int userType = Integer.parseInt(request.getParameter("userType"));


        UserDto userDto = UserDto.builder()
                .name(name).email(email).phoneNo(phone)
                .username(username).pw(password)
                .username(username)
                .userType(-1).build();

        int insertCount = userMapper.insertUser(userDto);

        return new ResponseEntity<>(Map.of("insertCount", insertCount)
                , HttpStatus.OK);


    }

    @Override
    public void leave(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public String getRedirectURLAfterSignin(HttpServletRequest request) {
        return "";
    }

    @Override
    public void signin(HttpServletRequest request, HttpServletResponse response) {

        try {

            String email = request.getParameter("email");
            String pw = MySecurityUtils.getSha256(request.getParameter("pw"));

            String ip = request.getRemoteAddr();

            String userAgent = request.getHeader("User-Agent");
            UserDto user;
            Map<String, Object> params;
            if (email.contains("@")) {
                params = Map.of("email", email
                        , "pw", pw);

                user = userMapper.getUserByMap(params);

            } else {
               params = Map.of("username", email
                        , "pw", pw);
                user = userMapper.getUserByMap(params);

            }
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");

            // 일치하는 회원 있음 (Sign In 성공)
            if (user != null) {
                params = Map.of("userid", user.getUserid()
                        , "pw", pw
                        , "ip", ip
                        , "userAgent", userAgent
                        , "sessionId", request.getSession().getId());
                // 접속 기록 ACCESS_HISTORY_T 에 남기기
                userMapper.insertAccessHistory(params);

                // 회원 정보를 세션(브라우저 닫기 전까지 정보가 유지되는 공간, 기본 30분 정보 유지)에 보관하기
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setMaxInactiveInterval(60 * 10);  // 세션 유지 시간 1800초(30분) 설정

                // Sign In 후 페이지 이동
                out.println("location.href='" + request.getContextPath() + "/pages/home';");

                // 일치하는 회원 없음 (Sign In 실패)
            } else {

                out.println("alert('일치하는 회원 정보가 없습니다.');");
                out.println("location.href='" + request.getContextPath() + "/pages/login';");
            }
                out.println("</script>");
                out.flush();
                out.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void signout(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    public String getNaverLoginURL(HttpServletRequest request) {
        return "";
    }

    @Override
    public String getNaverLoginAccessToken(HttpServletRequest request) {
        return "";
    }

    @Override
    public UserDto getNaverLoginProfile(String accessToken) {
        return null;
    }

    @Override
    public boolean hasUser(UserDto user) {
        return false;
    }

    @Override
    public void naverSignin(HttpServletRequest request, UserDto naverUser) {

    }

    @Override
    public ResponseEntity<Map<String, Object>> checkUserName(Map<String, Object> params) {
        return new ResponseEntity<>(Map.of("availableUserName", userMapper.getDupUserName(params) == null)
                , HttpStatus.OK);
    }

    @Override
    public boolean registerProfilePhoto(MultipartHttpServletRequest multipartHttpServletRequest) {
        MultipartFile multipartFile = multipartHttpServletRequest.getFile("profilePhoto");

        if(multipartFile == null) {
            return false;
        }

        String uploadPath = myFileUtils.getUploadPath();
        System.out.println(uploadPath);
        File dir = new File(uploadPath);
        System.out.println(dir);

        if(!dir.exists()) {
            dir.mkdirs();
            System.out.println("made file");
        }

        String originalFileName = multipartFile.getOriginalFilename();
        String fileSystemName = myFileUtils.getFilesystemName(originalFileName);
        File file = new File(dir, fileSystemName);
        System.out.println(file.getAbsolutePath());
        try {
            multipartFile.transferTo(file);

            userMapper.updateProfilePhoto(
                    Map.of("uploadPath", uploadPath + "/" + fileSystemName,
                            "userid", multipartHttpServletRequest.getParameter("userid"))
            );
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }

        HttpSession session = multipartHttpServletRequest.getSession();
        UserDto user = (UserDto) session.getAttribute("user");
        System.out.println(user);

        user.setAvatar(uploadPath + "/" + fileSystemName);
        session.setAttribute("user", user);

        return true;
    }

}
