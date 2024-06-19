package com.havenwithyou.mongnewmong.controller;

import com.havenwithyou.mongnewmong.service.AdminService;
import com.havenwithyou.mongnewmong.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        return "pages/settings/admin/admins";
    }


    @GetMapping("/home")
    public String adminHome() {
        return "pages/home";
    }

    @PostMapping("/classInfo")
    public String adminRegistered() {
        //adminService.registerClass();
        return "pages/home";
    }


    /*************SETTINGS***************/
//    @GetMapping("/userList")
//    public String userList(@RequestParam Integer, Model model) {
//        return "pages/settings/admin/admins";
//    }
//
    //INVITATION


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
        request.setAttribute("loadUserType", 0);
        adminService.loadAllUsers(request, model);
        return "pages/settings/admin/inviteAdmin";
    }

    @GetMapping("/settings/inviteTeacher")
    public String inviteTeacher(HttpServletRequest request, Model model) {
        request.setAttribute("loadUserType", 1);
        adminService.loadAllUsers(request, model);
        return "pages/settings/admin/inviteTeacher";
    }
    @GetMapping("/settings/inviteUser")
    public String inviteUser(HttpServletRequest request, Model model) {
        request.setAttribute("loadUserType", 2);
        adminService.loadAllUsers(request, model);
        return "pages/settings/admin/inviteUser";

    }

    //@SEE INVITE USER
    @PostMapping("/inviteUser")
    public String sendInvite(HttpServletRequest request, Model model) {
        adminService.sendInvite(request);
        request.setAttribute("loadUserType", 0);
        adminService.loadAllUsers(request, model);
        return "pages/settings/admin/inviteAdmin";
    }



    @GetMapping("/settings/classes")
    public String classes() {
        return "pages/settings/admin/classes";
    }

    @GetMapping("/settings/center")
    public String center() {
        return "pages/settings/admin/center";
    }

    @PostMapping(value = "/acceptUser", produces = "application/json")
    public String acceptUser(HttpServletRequest request, @RequestParam(value = "userId", required = false, defaultValue = "0") int userId) {

        adminService.acceptUser(userId);
         return request.getRequestURI();
    }

    @PostMapping(value = "/getStatistics", produces = "application/json")
    public ResponseEntity<Map<String, Object>> getStatistics(HttpServletRequest request, @RequestParam(value = "userId", required = false, defaultValue = "0") int userId) {
        return adminService.getStatistics(userId);
    }


}
