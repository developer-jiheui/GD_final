package com.havenwithyou.mongnewmong.service;
import org.springframework.ui.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface AdminService {
    void registerCenter(HttpServletRequest request, HttpServletResponse response);

    void loadAllUsers(HttpServletRequest request, Model model);
}
