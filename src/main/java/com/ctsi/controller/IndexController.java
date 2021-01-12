package com.ctsi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName : IndexController
 * @Description :
 * @Author : Xiaotianyu  //作者
 * @Date: 2021-01-11 14:01
 */
@Controller
public class IndexController {

    //去首页
    @RequestMapping("/")
    public String toIndex() {
        return "index";
    }
}
