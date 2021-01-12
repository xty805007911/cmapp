package com.ctsi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @Description:页面跳转
 * @Author: Tianyu Xiao
 * @CreateDate: 2020/12/26  6:51
 */
@Controller
public class PageToController {
    @Autowired
    private UserRestController userRestController;

    //去登陆页面
    @RequestMapping("/toLogin")
    public String toLogin(HttpServletRequest request) {
        request.setAttribute("msg","");
        return "login";
    }

    //去注册页面
    @RequestMapping("/toRegister")
    public String toRegister(HttpServletRequest request) {
        request.setAttribute("msg","");
        return "register";
    }


}
