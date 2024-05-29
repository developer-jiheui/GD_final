package com.havenwithyou.mongnewmong.controller;

import com.havenwithyou.mongnewmong.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public void signup(HttpServletRequest request, HttpServletResponse response) {
        userService.signup(request, response);
    }
    //@TODO LOGIN
//    ADMIN

//    FAMILY

    //@TODO SINGUP
//    ADMIN


    //@TODO PROFILE SETTING

}
