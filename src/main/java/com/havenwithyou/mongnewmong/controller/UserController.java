package com.havenwithyou.mongnewmong.controller;

import com.havenwithyou.mongnewmong.dto.DogDto;
import com.havenwithyou.mongnewmong.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@RequestMapping("/user")
@RequiredArgsConstructor
@Controller
public class UserController {

    private final UserService userService;

    @PostMapping(value = "/checkEmail.do", produces = "application/json")
    public ResponseEntity<Map<String, Object>> checkEmail(@RequestBody Map<String, Object> params) {
        return userService.checkEmail(params);
    }

    @PostMapping(value = "/sendCode.do", produces = "application/json")
    public ResponseEntity<Map<String, Object>> sendCode(@RequestBody Map<String, Object> params) {
        return userService.sendCode(params);
    }

    @PostMapping(value = "/checkUserName.do", produces = "application/json")
    public ResponseEntity<Map<String, Object>> checkUserName(@RequestBody Map<String, Object> params) {
        return userService.checkUserName(params);
    }


    @PostMapping("/signup.do")
    public ResponseEntity<Map<String, Object>> signup(@RequestBody Map<String, Object> params, HttpServletResponse response, HttpServletRequest request) {
        return userService.signup(params, request, response);
    }

    //@TODO LOGIN
    @PostMapping("/signin.do")
    public void signin(HttpServletRequest request, HttpServletResponse response) {
        userService.signin(request, response);
    }
//    ADMIN



    //@TODO PROFILE SETTING
    @GetMapping("profile")
    public String profile() {
        return "pages/user/profile";
    }

    @GetMapping("settings")
    public String settings() {
        return "pages/user/settings";
    }

    @GetMapping("billing")
    public String billing() {
        return "pages/user/billing";
    }

    @PostMapping("/editProfilePhoto")
    public ResponseEntity<Map<String, Object>> editProfilePhoto(MultipartHttpServletRequest multipartRequest) {
        return new ResponseEntity<Map<String, Object>>(Map.of("isRegisterPhoto", userService.registerProfilePhoto(multipartRequest)), HttpStatus.OK);
    }

    @PostMapping("/userType")
    public String userType(HttpServletRequest request) {
        return userService.setType(request);
    }

    @GetMapping("/furtherRegister")
    public String furtherRegister(HttpServletRequest request, HttpServletResponse response) {
        return "pages/register/user/registerDog";
    }

    @GetMapping(value = "/invitedOrNot")
    public String invite() {
        return "pages/invited";
    }


    @GetMapping(value = "/centerList", produces = "application/json")
    public ResponseEntity<Map<String, Object>> centerList(HttpServletRequest request) {
        return userService.loadAllCenters();
    }

    @PostMapping(value = "/checkInviteCode", produces = "application/json")
    public ResponseEntity<Map<String, Object>> checkInviteCode(@RequestBody Map<String, Object> params) {
        return userService.checkInviteCode(params);
    }

    @PostMapping("/finalSignUp")
    public String finalSignUp(HttpServletRequest request) {
        return userService.finalSignUp(request);
    }

    @GetMapping("/registerDog")
    public String registerDogPage() {
        return "pages/register/user/registerDog";
    }

    //@TODO SINGUP
//    ADMIN

    @GetMapping(value = "/getUserDetail", produces = "application/json")
    public ResponseEntity<Map<String, Object>> getUserById(@RequestBody Map<String, Object> params) {

        System.out.println("----------------CONTROLLER--------------------");
        System.out.println("----------------CONTROLLER--------------------");
        System.out.println(params);
        System.out.println("----------------CONTROLLER--------------------");
        System.out.println("----------------CONTROLLER--------------------");
        return userService.getUserDetail(params);
    }


    @PostMapping(value = "/getUserDetail", produces = "application/json")
    public ResponseEntity<Map<String, Object>> getUserDetail(HttpServletRequest request, @RequestParam(value = "userId", required = false, defaultValue = "0") int userId) {
        return userService.getUserById(userId);
    }




//    USER

    @PostMapping("/registerDog")
    public String registerDog(MultipartHttpServletRequest multipartRequest
            ) {
        //redirectAttributes.addFlashAttribute("inserted", );
        System.out.println("REGISTER DOG-------------");
        System.out.println(multipartRequest.getRequestURI());
        userService.addDog(multipartRequest);
        return "pages/register/user/registerDog";
    }
    @GetMapping("/editDog")
    public String editDog() {return "pages/register/user/registerDog";}

    @PostMapping("/editDog")
    public String editDog(MultipartHttpServletRequest multipartRequest
            , RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("inserted", userService.editDog(multipartRequest));
        return "pages/register/user/registerDog";
    }

    @GetMapping("/dogList")
    public String list() {
        return "pages/register/user/registerDog";
    }

    @PostMapping(value = "/dogList", produces = "application/json")
    public ResponseEntity<Map<String, Object>> getDogList(HttpServletRequest request) {
        return userService.loadDogList(request);
    }

    @GetMapping(value = "/removeDog")
    public String removeDog() {
        return "pages/register/user/registerDog";
    }

    @GetMapping("/dogDetail" )
    public String detail() {
    return "pages/register/user/registerDog";
}
    @PostMapping(value = "/dogDetail", produces = "application/json")
    public ResponseEntity<Map<String, Object>> dogDetail(HttpServletRequest request, @RequestParam(value = "dogId", required = false, defaultValue = "0") int dogId) {
        return userService.loadDogDetail(dogId);
    }



    @PostMapping(value = "/removeDog", produces = "application/json")
    public ResponseEntity<Map<String, Object>> removeDog(@RequestParam(value = "dogId", required = false, defaultValue = "0") int dogId, HttpServletRequest request) {
        return ResponseEntity.ok(Map.of("removeResult", userService.removeDog(request, dogId) == 1 ? "삭제되었습니다." : "삭제되지 않았습니다."));
    }



}
