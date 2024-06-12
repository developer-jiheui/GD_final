package com.havenwithyou.mongnewmong.service;

import com.havenwithyou.mongnewmong.dto.DogDto;
import com.havenwithyou.mongnewmong.dto.UserDto;
import com.havenwithyou.mongnewmong.mapper.DogMapper;
import com.havenwithyou.mongnewmong.mapper.UserMapper;
import com.havenwithyou.mongnewmong.utils.MyFileUtils;
import com.havenwithyou.mongnewmong.utils.MyJavaMailUtils;
import com.havenwithyou.mongnewmong.utils.MySecurityUtils;
import jakarta.mail.Session;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.*;


@Transactional
@Service
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;
    private final MyJavaMailUtils myJavaMailUtils;
    private final MyFileUtils myFileUtils;
    private final DogMapper dogMapper;

    public UserServiceImpl(UserMapper userMapper, MyJavaMailUtils myJavaMailUtils, MyFileUtils myFileUtils, DogMapper dogMapper) {
        super();
        this.userMapper = userMapper;
        this.myJavaMailUtils = myJavaMailUtils;
        this.myFileUtils = myFileUtils;
        this.dogMapper = dogMapper;
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
                .build();

        int insertCount = userMapper.insertUser(userDto);
        if (insertCount > 0) {
            ArrayList<DogDto> doglist = new ArrayList<>();
            userDto.setDoglist(doglist);
        }

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

                if (user.getUserType() == 2) {
                    ArrayList<DogDto> dogList = (ArrayList<DogDto>) dogMapper.getDogList(user.getUserid());
                    user.setDoglist(dogList);
                }


                // 회원 정보를 세션(브라우저 닫기 전까지 정보가 유지되는 공간, 기본 30분 정보 유지)에 보관하기
                HttpSession session = request.getSession();

                session.setAttribute("user", user);
                session.setMaxInactiveInterval(600 * 10);  // 세션 유지 시간 1800초(30분) 설정


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

        if (multipartFile == null) {
            return false;
        }

        String uploadPath = myFileUtils.getUploadPath();
        File dir = new File(uploadPath);

        if (!dir.exists()) {
            dir.mkdirs();
        }

        String originalFileName = multipartFile.getOriginalFilename();
        String fileSystemName = myFileUtils.getFilesystemName(originalFileName);
        File file = new File(dir, fileSystemName);
        try {
            multipartFile.transferTo(file);

            String contentType = Files.probeContentType(file.toPath());
            int hasThumbnail = contentType != null && contentType.startsWith("image") ? 1 : 0;

            // 이미지의 썸네일 만들기
            if(hasThumbnail == 1) {
                File cutFile = new File(dir, "s_" + fileSystemName);
                Thumbnails.of(file)             // 원본 이미지 파일
                        .size(100, 100)         // 가로 96px, 세로 64px
                        .toFile(cutFile);   // 썸네일 이미지 파일
            }
            userMapper.updateProfilePhoto(
                    Map.of("uploadPath", uploadPath + "/" + fileSystemName,
                            "userid", multipartHttpServletRequest.getParameter("userid"))
            );
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        HttpSession session = multipartHttpServletRequest.getSession();
        UserDto user = (UserDto) session.getAttribute("user");

        user.setAvatar(uploadPath + "/" + fileSystemName);
        session.setAttribute("user", user);

        return true;
    }

    @Override
    public String setType(HttpServletRequest request, HttpServletResponse response) {
        int userType = Integer.parseInt(request.getParameter("userType"));
        String role;
        HttpSession session = request.getSession();

        UserDto user = (UserDto) session.getAttribute("user");
        user.setUserType(userType);
        int userTypeCount = userMapper.setUserType(user);
        if (userTypeCount == 0) {
            role = "admin";
        } else if (userTypeCount == 1) {
            role = "user/registerDog";
        } else {
            role = "teacher";
        }

        session.setAttribute("user", user);
        return role;
    }

    @Override
    public int addDog(MultipartHttpServletRequest multipartRequest) {
        String dogName = multipartRequest.getParameter("modalDogName");
        String parent1Name = multipartRequest.getParameter("parent1Name");
        String parent2Name = multipartRequest.getParameter("parent2Name");
        String parent1phone = multipartRequest.getParameter("parent1phone");
        String parent2phone = multipartRequest.getParameter("parent2phone");
        String birthday = (String) multipartRequest.getParameter("birthday");
        String breed = multipartRequest.getParameter("breed");
        int weight = Integer.parseInt(multipartRequest.getParameter("weight"));
        String zipcode = multipartRequest.getParameter("zipcode");
        String address = multipartRequest.getParameter("address");
        String detailAddress = multipartRequest.getParameter("detailAddress");
        String extraAddress = multipartRequest.getParameter("extraAddress");
        String fullAddress = "(" + zipcode + ")" + address + ", " + detailAddress + ", " + extraAddress;
        String avatar;
        String classes = multipartRequest.getParameter("classes");



        // avatar for dogs
        List<MultipartFile> files = multipartRequest.getFiles("files");

        String uploadPath = myFileUtils.getUploadPath();
        File dir = new File(uploadPath);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        if (files.get(0).getSize() > 0) {
            String originalFilename = files.get(0).getOriginalFilename();
            String fileSystemName = myFileUtils.getFilesystemName(originalFilename);
            File file = new File(dir, fileSystemName);
            try {
                MultipartFile multipartFile = files.get(0);
                multipartFile.transferTo(file);

                // 이미지의 썸네일 만들기
                    File cutFile = new File(dir, "s_" + fileSystemName);
                    Thumbnails.of(file)             // 원본 이미지 파일
                            .size(200, 200)         // 가로 96px, 세로 64px
                            .toFile(cutFile);   // 썸네일 이미지 파일


            } catch (Exception e) {
                e.printStackTrace();
                avatar = "/resources/images/roundStickers/kisses.png";
            }
            avatar = uploadPath + "/s_" + fileSystemName;

        } else {
            avatar = "/resources/images/roundStickers/kisses.png";
        }


        HttpSession session = multipartRequest.getSession();
        UserDto user = (UserDto) session.getAttribute("user");



        DogDto dog = DogDto.builder()
                .userid(user.getUserid())
                .name(dogName)
                .parent1Name(parent1Name)
                .parent2Name(parent2Name)
                .parent1Phone(parent1phone)
                .parent2Phone(parent2phone)
                .address(fullAddress)
                .breed(breed)
                .weight(weight)
                .birthday(birthday)
                .avatar(avatar)
                .classes(classes)
                .build();


        int insertDogCount = dogMapper.addDog(dog);

        if (insertDogCount == 1) {

            ArrayList<DogDto> dogList = (ArrayList<DogDto>) dogMapper.getDogList(user.getUserid());
            user.setDoglist(dogList);
            int currDogcount = dogList.size();

            user.setDogNo(currDogcount);
            userMapper.updateDogNo(user);
        }

        return user.getUserid();
    }

    @Transactional(readOnly = true)
    @Override
    public void loadDogList(HttpServletRequest request) {

        HttpSession session = request.getSession();
        UserDto user = (UserDto) session.getAttribute("user");
        int dogCount = user.getDogNo();
        session.setAttribute("dogList", dogMapper.getDogList(user.getUserid()));

    }

    @Override
    public int removeDog(HttpServletRequest request, int id) {
        DogDto deleteDog = dogMapper.getDogById(id);
        int deleteCount = dogMapper.deleteDog(id);

        if (deleteCount == 1) {
            HttpSession session = request.getSession();
            UserDto user = (UserDto) session.getAttribute("user");

            ArrayList<DogDto> dogList = (ArrayList<DogDto>) dogMapper.getDogList(user.getUserid());
            dogList.remove(deleteDog);

            user.setDoglist(dogList);
            int currDogcount = dogList.size();

            user.setDogNo(currDogcount);
            userMapper.updateDogNo(user);

        }
        return deleteCount;
    }

    @Override
    public void loadDogDetail(int dogId, Model model) {

        DogDto dogDetail = dogMapper.getDogById(dogId);
        String fullAddress = dogDetail.getAddress();

        String zipCode = fullAddress.substring(1,6);
        String restAdd = fullAddress.substring(7);
        String[] restAddList = restAdd.split(", ");
        String address ="";
        String detailAddress="";
        String extraAddress="";
        String classes = dogDetail.getClasses().replace(",", "");



//        System.out.println("------------------");
//        System.out.println("------------------");
//        System.out.println("-------CLASS-----------");
//        System.out.println(classes);
//        System.out.println(classes.replace(",", ""));
//        System.out.println("------------------");
//        System.out.println("------------------");

        for (int i = 0; i <restAddList.length; i++) {
            if(i==0){
             address = restAddList[i];
            }
            if(i==1){detailAddress = restAddList[i];}
            if(i==2){extraAddress = restAddList[i];}
        }



        model.addAttribute("dogDetail", dogDetail);
        model.addAttribute("zipCode", zipCode);
        model.addAttribute("address", address);
        model.addAttribute("detailAddress", detailAddress);
        model.addAttribute("extraAddress", extraAddress);
        model.addAttribute("classes", classes);

    }

    @Override
    public int editDog(MultipartHttpServletRequest multipartRequest) {
        return 0;
    }


}
