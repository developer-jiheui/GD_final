package com.havenwithyou.mongnewmong.service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface AdminService {
    void registerCenter(HttpServletRequest request, HttpServletResponse response);
}
