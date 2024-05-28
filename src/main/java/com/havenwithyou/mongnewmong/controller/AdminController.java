package com.havenwithyou.mongnewmong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdminController {

    @GetMapping("/register")
    public String register() {return "userType/admin/register_pages/register";}

    @PostMapping("/register")
    public String classInfo(){return "userType/admin/register_pages/classInfo";}

   @PostMapping("/classInfo")
    public String adminHome(){return "userType/admin/pages/home";}

}
