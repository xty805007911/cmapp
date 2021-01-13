package com.ctsi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @ClassName : IndexController
 * @Description :
 * @Author : Xiaotianyu  //作者
 * @Date: 2021-01-11 14:01
 */
@Controller
public class IndexController {

    @Autowired
    private UserRestController userRestController;

    //去首页
    @RequestMapping("/")
    public String toIndex(HttpServletRequest request) {
        request.setAttribute("userList",userRestController.userList());
        return "index";
    }
}
