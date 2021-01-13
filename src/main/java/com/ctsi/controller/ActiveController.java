package com.ctsi.controller;

import com.ctsi.entity.TbActive;
import com.ctsi.entity.TbUser;
import com.ctsi.service.TbActiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * @Description:
 * @Author: Tianyu Xiao
 * @CreateDate: 2021/1/12  22:29
 */
@Controller
public class ActiveController {

    @Autowired
    private TbActiveService activeService;
    @Autowired
    private UserRestController userRestController;

    @RequestMapping("/toAddActive")
    public String toAddActive(TbActive active) {
        return "active-add";
    }

    //添加公告
    @RequestMapping("/active/add")
    public String addActive(TbActive active, HttpServletRequest request) {
        TbUser currentUser = userRestController.getCurrentUser(request);
        active.setCreateTime(new Date());
        active.setCreateUserId(currentUser.getId());
        activeService.add(active);
        return "redirect:/";
    }
}
