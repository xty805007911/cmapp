package com.ctsi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Description:
 * @Author: Tianyu Xiao
 * @CreateDate: 2021/1/12  22:29
 */
@Controller
public class ActiveController {

    @RequestMapping("/toAddActive")
    public String toAddActive() {
        return "active-add";
    }
}
