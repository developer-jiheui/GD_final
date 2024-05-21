package com.havenwithyou.mongnewmong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MvcController {
    @GetMapping(value={"/", "/main.page"})
    public String welcome() {
        return "index";
    }

    @GetMapping(value = {"/home"})
    public String home() {return "home";}
}
