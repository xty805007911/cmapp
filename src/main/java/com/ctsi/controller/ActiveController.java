package com.ctsi.controller;

import com.ctsi.entity.TbActive;
import com.ctsi.entity.TbUser;
import com.ctsi.service.TbActiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

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

    //查询
    @RequestMapping("/api/active/list")
    @ResponseBody//json
    public List<TbActive> list() {
        return activeService.list();
    }

    //查询
    @RequestMapping("/api/active/{id}")
    @ResponseBody
    public TbActive getById(@PathVariable Integer id) {
        return activeService.getById(id);
    }
}
