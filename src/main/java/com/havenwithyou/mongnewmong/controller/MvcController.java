package com.havenwithyou.mongnewmong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MvcController {
    @GetMapping(value={"/", "/main.page","home"})
    public String welcome() {
        return "pages/home";
    }


}
