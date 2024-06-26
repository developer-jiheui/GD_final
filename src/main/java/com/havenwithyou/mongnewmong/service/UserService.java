package com.havenwithyou.mongnewmong.service;

import com.havenwithyou.mongnewmong.dto.DogDto;
import com.havenwithyou.mongnewmong.dto.UserDto;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.Map;

public interface UserService {
    ResponseEntity<Map<String, Object>> checkEmail(Map<String, Object> params);

    ResponseEntity<Map<String, Object>> sendCode(Map<String, Object> params);

    ResponseEntity<Map<String, Object>> signup(Map<String, Object> params, HttpServletRequest request, HttpServletResponse response);

    void leave(HttpServletRequest request, HttpServletResponse response);

    // 로그인 및 로그아웃
    String getRedirectURLAfterSignin(HttpServletRequest request);

    void signin(HttpServletRequest request, HttpServletResponse response);

    void signout(HttpServletRequest request, HttpServletResponse response);

    // 네이버 로그인
    String getNaverLoginURL(HttpServletRequest request);

    String getNaverLoginAccessToken(HttpServletRequest request);

    UserDto getNaverLoginProfile(String accessToken);

    boolean hasUser(UserDto user);

    void naverSignin(HttpServletRequest request, UserDto naverUser);

    ResponseEntity<Map<String, Object>> checkUserName(Map<String, Object> params);

    boolean registerProfilePhoto(MultipartHttpServletRequest multipartHttpServletRequest);

    String setType(HttpServletRequest request, HttpServletResponse response);

    int addDog(MultipartHttpServletRequest multipartRequest);

   // void loadDogList(HttpServletRequest request);

    ResponseEntity<Map<String, Object>> loadDogList(HttpServletRequest request);
    int removeDog(HttpServletRequest request, int dogId);


    ResponseEntity<Map<String, Object>> loadDogDetail(int dogId);

    int editDog(MultipartHttpServletRequest multipartRequest);
}