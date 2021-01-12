package com.ctsi.controller;

import com.ctsi.config.Constant;
import com.ctsi.entity.TbUser;
import com.ctsi.service.TbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @Description:
 * @Author: Tianyu Xiao
 * @CreateDate: 2021/1/7  20:58
 */
@Controller
public class UserManageController {
    @Autowired
    private TbUserService userService;


}
