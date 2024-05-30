package com.havenwithyou.mongnewmong.service;

import com.havenwithyou.mongnewmong.mapper.CenterMapper;
import com.havenwithyou.mongnewmong.mapper.UserMapper;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
@RequiredArgsConstructor
@Service
public class AdminServiceImpl implements AdminService{

    private final UserMapper userMapper;
    private final CenterMapper centerMapper;

    @Override
    public void registerCenter(HttpServletRequest request, HttpServletResponse response) {

    }
}
