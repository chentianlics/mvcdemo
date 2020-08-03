package com.css.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/greet")
public class HelloWorldController {
    @RequestMapping("/hello")
    public String selectUser(){
        return "index";
    }
}
