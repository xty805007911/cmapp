package com.ctsi.controller;

import com.ctsi.entity.TbChatroom;
import com.ctsi.entity.TbUser;
import com.ctsi.service.TbChatroomService;
import com.ctsi.util.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * @ClassName : ChatroomController
 * @Description :
 * @Author : Xiaotianyu  //作者
 * @Date: 2021-01-12 14:30
 */
@Controller
public class ChatroomController {
    @Autowired
    private TbChatroomService chatroomService;
    @Autowired
    private UserRestController userRestController;

    //查询列表
    @GetMapping("/api/chat/room/list")
    @ResponseBody
    public PageResult<TbChatroom> chatList() {
        return chatroomService.chatroomList(1,1000);
    }

    //发消息
    @PostMapping("/api/chat/room/post")
    @ResponseBody
    public Integer postMessage(@RequestBody HashMap<String,String> map,HttpServletRequest request) {
        try{
            String message = map.get("message");
            TbUser currentUser = userRestController.getCurrentUser(request);
            chatroomService.postChat(message,currentUser.getId());
            return 1;
        }catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
