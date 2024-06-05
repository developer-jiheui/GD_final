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
    public String register() {
        return "userType/admin/register_pages/register";
    }

    @PostMapping("/register")
    public String classInfo() {
        return "userType/admin/register_pages/classInfo";
    }

    //register daycare
    @PostMapping("/register.do")
    public void signup(HttpServletResponse response, HttpServletRequest request) {
        adminService.registerCenter(request, response);
    }

    @GetMapping("/settings")
    public String adminSettings() {
        return "userType/admin/pages/settings";
    }


    @GetMapping("/home")
    public String adminHome() {
        return "userType/admin/pages/home";
    }

    @PostMapping("/classInfo")
    public String adminRegistered() {
        return "userType/admin/pages/home";
    }


    /*************SETTINGS***************/
    @GetMapping("/settings/admins")
    public String admins() {
        return "userType/admin/pages/settings/admins";
    }

    @GetMapping("/settings/users")
    public String users() {
        return "userType/admin/pages/settings/users";
    }

    @GetMapping("/settings/teachers")
    public String teachers() {
        return "userType/admin/pages/settings/teachers";
    }

    @GetMapping("/settings/inviteAdmin")
    public String inviteAdmin() {
        return "userType/admin/pages/settings/inviteAdmin";
    }

    @GetMapping("/settings/inviteUser")
    public String inviteUser() {
        return "userType/admin/pages/settings/inviteUser";
    }

    @GetMapping("/settings/inviteTeacher")
    public String inviteTeacher() {
        return "userType/admin/pages/settings/inviteTeacher";
    }

    @GetMapping("/settings/classes")
    public String classes() {
        return "userType/admin/pages/settings/classes";
    }

    @GetMapping("/settings/center")
    public String center() {
        return "userType/admin/pages/settings/center";
    }


}
