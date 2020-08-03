package com.css.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/api")
public class LoginController {
    @RequestMapping("/login")
    public String login() {
        return "login";
    }
    @RequestMapping("/dologin")
    public ModelAndView doLogin(@RequestParam("username") String username, @RequestParam("pwd") String pwd) {
        ModelAndView mv = new ModelAndView();
        if (username.equals("oukele") && pwd.equals("oukele")) {
            //登录成功跳转到hello.jsp
            mv.setViewName("index");
        } else {
            //登录失败跳转到Login.jsp继续登录操作
            mv.setViewName("login");
        }
        return mv;
    }

}
