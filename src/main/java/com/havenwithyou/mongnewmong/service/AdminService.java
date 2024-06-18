package com.havenwithyou.mongnewmong.service;
import org.springframework.ui.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface AdminService {
    void registerCenter(HttpServletRequest request, HttpServletResponse response);
    void loadUsers(HttpServletRequest request, Model model);
    void loadTeachers(HttpServletRequest request, Model model);
    void loadAllUsers(HttpServletRequest request, Model model);

    void sendInvite(HttpServletRequest request);
}
