package com.ctsi.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ctsi.entity.TbChatroom;
import com.ctsi.entity.TbUser;
import com.ctsi.mapper.TbChatroomMapper;
import com.ctsi.mapper.TbUserMapper;
import com.ctsi.util.PageResult;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @ClassName : TbChatroomService
 * @Description :
 * @Author : Xiaotianyu  //作者
 * @Date: 2021-01-12 14:09
 */
@Service
public class TbChatroomService {
    @Autowired
    private TbChatroomMapper chatroomMapper;
    @Autowired
    private TbUserMapper userMapper;

    //分页查询
    public PageResult<TbChatroom> chatroomList(Integer page,Integer size) {
        if(page == null || page <= 0) {
            page = 1;
        }
        PageHelper.startPage(page,size);
        QueryWrapper<TbChatroom> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        List<TbChatroom> list = chatroomMapper.selectList(queryWrapper);
        for(TbChatroom entity : list) {
            TbUser tbUser = userMapper.selectById(entity.getUserId());
            entity.setUser(tbUser);
        }
        PageResult<TbChatroom> pageResult = new PageResult<>(list);
        return pageResult;
    }

    //保存chatroom信息
    public void postChat(String message,Integer userId) {
        TbChatroom entity = new TbChatroom();
        entity.setUserId(userId);
        entity.setMessage(message);
        entity.setCreateTime(new Date());
        chatroomMapper.insert(entity);
    }

}
