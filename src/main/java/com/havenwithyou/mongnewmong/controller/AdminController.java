package com.havenwithyou.mongnewmong.controller;

import com.havenwithyou.mongnewmong.service.AdminService;
import com.havenwithyou.mongnewmong.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
        return "pages/register/admin/register";
    }

    //register daycare
    @PostMapping("/register")
    public String signup(HttpServletResponse response, HttpServletRequest request) {
        adminService.registerCenter(request, response);
        return "pages/register/admin/classInfo";
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
        //adminService.registerClass();
        return "pages/home";
    }


    /*************SETTINGS***************/
    @GetMapping("/settings/admins")
    public String admins() {
        return "pages/settings/admin/admins";
    }

    @GetMapping("/settings/users")
    public String users() {return "pages/settings/admin/users";}

    @GetMapping("/settings/teachers")
    public String teachers() {
        return "pages/settings/admin/teachers";
    }

    @GetMapping("/settings/inviteAdmin")
    public String inviteAdmin(HttpServletRequest request, Model model) {
        adminService.loadAllUsers(request, model);
        return "pages/settings/admin/inviteAdmin";
    }

    @GetMapping("/settings/inviteUser")
    public String inviteUser() {
        return "pages/settings/admin/inviteUser";
    }

    @GetMapping("/settings/inviteTeacher")
    public String inviteTeacher() {
        return "pages/settings/admin/inviteTeacher";
    }

    @GetMapping("/settings/classes")
    public String classes() {
        return "pages/settings/admin/classes";
    }

    @GetMapping("/settings/center")
    public String center() {
        return "pages/settings/admin/center";
    }


}
