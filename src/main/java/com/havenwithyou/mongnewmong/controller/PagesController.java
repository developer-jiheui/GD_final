package com.havenwithyou.mongnewmong.controller;

import com.havenwithyou.mongnewmong.dto.UserDto;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//@TODO A Controller for between pages

@RequestMapping("/pages")
@Controller
public class PagesController {
    @GetMapping(value = {"/", "/pages", "/home"})
    public String home() {return "pages/home";}

    @GetMapping(value = {"/notes"})
    public String notes() {return "pages/notes";}

    @GetMapping(value = {"/news"})
    public String news() {return "pages/news";}

    @GetMapping(value = {"/album"})
    public String album() {return "pages/album";}

    @GetMapping(value = {"/calendar"})
    public String calendar() {return "pages/calendar";}

    @GetMapping(value = {"/diet"})
    public String diet() {return "pages/diet";}

    @GetMapping(value = {"/med"})
    public String med() {return "pages/medication";}

    @GetMapping(value = {"/attendance"})
    public String attendance() {return "pages/attendance";}

    @GetMapping(value = {"/education"})
    public String education() {return "pages/education";}

    //Front pages, Login, Signup
    @GetMapping(value = {"/login"})
    public String login(){ return "pages/register/login";}

    @GetMapping(value = {"/register"})
    public String signUp(){ return "pages/register/register";}

    @GetMapping(value = {"/start"})
    public String start(){ return "pages/register/start";}


    @GetMapping(value = {"/userType"})
    public String userType(){ return "pages/register/userType";}
//
//    @GetMapping(value = {"/furtherRegister"})
//    public String userType(HttpServletRequest request){
//        UserDto user = (UserDto) request.getSession().getAttribute("user");
//        int userType = user.getUserType();
//        request.setAttribute("page", );
//        return "pages/register/userType";}
//

    @GetMapping(value = {"/forgotPw"})
    public String pw(){ return "pages/register/pw";}

    @GetMapping(value = {"/pwCheck"})
    public String pwCheck(){ return "pages/register/pwCheck";}

    @PostMapping(value = {"/pwCheck"})
    public String pwCheckPost(){ return "pages/register/pwCheck";}



    //서류 작성
    @GetMapping(value = {"/entrance"})
    public String entrance() {return "pages/documents/entrance";}

    @GetMapping(value = {"/agreement"})
    public String agreement() {return "pages/documents/doc2";}

    @GetMapping(value = {"/medical"})
    public String medical() {return "pages/documents/doc3";}

    @GetMapping(value = {"/transportation"})
    public String transportation() {return "pages/transportation";}


    @GetMapping(value = {"/page1"})
    public String page1() {return "pages/page1";}
 @GetMapping(value = {"/page2"})
    public String page2() {return "pages/page2";}
 @GetMapping(value = {"/page3"})
    public String page3() {return "pages/page3";}

    //Admin



    //Teachers


    //Families



}
