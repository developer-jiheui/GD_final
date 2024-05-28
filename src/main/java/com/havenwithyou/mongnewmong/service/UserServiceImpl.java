package com.havenwithyou.mongnewmong.service;

import com.havenwithyou.mongnewmong.dto.UserDto;
import com.havenwithyou.mongnewmong.mapper.UserMapper;
import com.havenwithyou.mongnewmong.utils.MyFileUtils;
import com.havenwithyou.mongnewmong.utils.MyJavaMailUtils;
import com.havenwithyou.mongnewmong.utils.MySecurityUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.PrintWriter;
import java.util.Map;


@Transactional
@Service
public class UserServiceImpl implements UserService{

    @Autowired
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
        boolean enableEmail = userMapper.getUserByMap(params) == null
                && userMapper.getLeaveUserByMap(params) == null;
        return new ResponseEntity<>(Map.of("enableEmail", enableEmail)
                , HttpStatus.OK);    }

    @Override
    public ResponseEntity<Map<String, Object>> sendCode(Map<String, Object> params) {
        // 인증코드 생성
        String code = MySecurityUtils.getRandomString(6, true, true);

        // 개발할 때 인증코드 찍어보기
        System.out.println("인증코드 : " + code);

        // 메일 보내기
        myJavaMailUtils.sendMail((String)params.get("email")
                , "myapp 인증요청"
                , "<div>인증코드는 <strong>" + code + "</strong>입니다.");

        // 인증코드 입력화면으로 보내주는 값
        return new ResponseEntity<>(Map.of("code", code)
                , HttpStatus.OK);
    }

    @Override
    public void signup(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        int userType = Integer.parseInt(request.getParameter("userType"));

        UserDto userDto = UserDto.builder()
                .name(username).pw(password)
                .email(email).phoneNo(phone)
                .userType(userType).build();

        int insertCount = userMapper.insertUser(userDto);

        try {

            response.setContentType("text/html;charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");

            // 가입 성공
            if(insertCount == 1) {

                // Sign In 및 접속 기록을 위한 Map
                Map<String, Object> params = Map.of("email", email
                        , "pw", password
                        , "ip", request.getRemoteAddr()
                        , "userAgent", request.getHeader("User-Agent")
                        , "sessionId", request.getSession().getId());

                // Sign In (세션에 user 저장하기)
                request.getSession().setAttribute("user", userMapper.getUserByMap(params));

                // 접속 기록 남기기
                userMapper.insertAccessHistory(params);

                out.println("alert('회원 가입되었습니다.');");
                out.println("location.href='" + request.getContextPath() + "/main.page';");

                // 가입 실패
            } else {
                out.println("alert('회원 가입이 실패했습니다.');");
                out.println("history.back();");
            }
            out.println("</script>");
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

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
}
