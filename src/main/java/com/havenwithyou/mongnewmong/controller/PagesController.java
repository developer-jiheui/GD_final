package com.havenwithyou.mongnewmong.controller;

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
    public String login(){ return "pages/frontpages/login";}

    @GetMapping(value = {"/register"})
    public String signUp(){ return "pages/frontpages/register";}

    @GetMapping(value = {"/start"})
    public String start(){ return "pages/frontpages/start";}


    @GetMapping(value = {"/userType"})
    public String userType(){ return "pages/frontpages/userType";}

    @GetMapping(value = {"/forgotPw"})
    public String pw(){ return "pages/frontpages/pw";}

    @GetMapping(value = {"/pwCheck"})
    public String pwCheck(){ return "pages/frontpages/pwCheck";}

    @PostMapping(value = {"/pwCheck"})
    public String pwCheckPost(){ return "pages/frontpages/pwCheck";}



    //서류 작성
    @GetMapping(value = {"/entrance"})
    public String entrance() {return "pages/documents/entrance";}

    @GetMapping(value = {"/agreement"})
    public String agreement() {return "pages/documents/doc2";}

    @GetMapping(value = {"/medical"})
    public String medical() {return "pages/documents/doc3";}

    @GetMapping(value = {"/transportation"})
    public String transportation() {return "pages/transportation";}


    //Admin



    //Teachers


    //Families



}
