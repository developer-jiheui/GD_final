package com.havenwithyou.mongnewmong.controller;

import com.havenwithyou.mongnewmong.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.Map;

@RequestMapping("/user")
@RequiredArgsConstructor
@Controller
public class UserController {

    private final UserService userService;

    @PostMapping(value="/checkEmail.do", produces="application/json")
    public ResponseEntity<Map<String, Object>> checkEmail(@RequestBody Map<String, Object> params) {
        return userService.checkEmail(params);
    }

    @PostMapping(value="/sendCode.do", produces="application/json")
    public ResponseEntity<Map<String, Object>> sendCode(@RequestBody Map<String, Object> params) {
        return userService.sendCode(params);
    }

    @PostMapping(value="/checkUserName.do", produces="application/json")
    public ResponseEntity<Map<String, Object>> checkUserName(@RequestBody Map<String, Object> params) {
        return userService.checkUserName(params);
    }


    @PostMapping("/signup.do")
    public ResponseEntity<Map<String, Object>> signup(@RequestBody Map<String, Object> params,HttpServletResponse response,HttpServletRequest request ) {
       return userService.signup(params ,request, response);
    }
    //@TODO LOGIN
    @PostMapping("/signin.do")
    public void signin(HttpServletRequest request, HttpServletResponse response) {
        userService.signin(request, response);
    }
//    ADMIN

//    FAMILY

    //@TODO SINGUP
//    ADMIN


    //@TODO PROFILE SETTING
    @GetMapping("profile")
    public String profile() {return "pages/user/profile";}

    @GetMapping("settings")
    public String settings() {return "pages/user/settings";}

    @GetMapping("billing")
    public String billing() {return "pages/user/billing";}

    @PostMapping("/editProfilePhoto")
    public ResponseEntity<Map<String, Object>> editProfilePhoto(MultipartHttpServletRequest multipartRequest) {
        return new ResponseEntity<Map<String,Object>>( Map.of("isRegisterPhoto", userService.registerProfilePhoto(multipartRequest)), HttpStatus.OK );
    }

    @PostMapping("/userType")
    public String userType(HttpServletRequest request, HttpServletResponse response) {
        System.out.println(userService.setType(request, response));

        return "pages/register/"+userService.setType(request, response);
    }

    @GetMapping("/furtherRegister")
    public String furtherRegister(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("page","/WEB-INF/views/pages/register/user/registerDog.jsp");
        return "pages/register/furtherRegister";
    }

}
