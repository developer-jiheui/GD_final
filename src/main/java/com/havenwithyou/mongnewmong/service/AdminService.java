package com.havenwithyou.mongnewmong.service;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.Map;

public interface AdminService {
    void registerCenter(HttpServletRequest request, HttpServletResponse response);
    void loadUsers(HttpServletRequest request, Model model);
    void loadTeachers(HttpServletRequest request, Model model);
    void loadAllUsers(HttpServletRequest request, Model model);

    void sendInvite(HttpServletRequest request);

    ResponseEntity<Map<String, Object>> getStatistics(int userId);

    void acceptUser(int userId);
}
