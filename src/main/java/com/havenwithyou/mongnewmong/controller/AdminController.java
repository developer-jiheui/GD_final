package com.havenwithyou.mongnewmong.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@RequestMapping("/admin")
@Controller
public class AdminController {


    @GetMapping("/register")
    public String register() {return "userType/admin/register_pages/register";}

    @PostMapping("/register")
    public String classInfo(){return "userType/admin/register_pages/classInfo";}

    //register daycare
    @PostMapping("/register.do")
    public void signup(HttpServletResponse response, HttpServletRequest request ) {
//        userService.signup(params ,request, response);
    }


   @PostMapping("/classInfo")
    public String adminHome(){return "userType/admin/pages/home";}

}
