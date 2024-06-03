package com.havenwithyou.mongnewmong.controller;

import com.havenwithyou.mongnewmong.service.AdminService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@RequiredArgsConstructor
@RequestMapping("/admin")
@Controller
public class AdminController {

    private final AdminService adminService;

    @GetMapping("/register")
    public String register() {return "userType/admin/register_pages/register";}

    @PostMapping("/register")
    public String classInfo(){return "userType/admin/register_pages/classInfo";}

    //register daycare
    @PostMapping("/register.do")
    public void signup(HttpServletResponse response, HttpServletRequest request ) {
        adminService.registerCenter(request, response);
    }


    @GetMapping("/home")
    public String adminHome(){return "userType/admin/pages/home";}

   @PostMapping("/classInfo")
    public String adminRegistered(){return "userType/admin/pages/home";}

}
