package com.ctsi.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ctsi.entity.TbActive;
import com.ctsi.entity.TbUser;
import com.ctsi.mapper.TbActiveMapper;
import com.ctsi.mapper.TbAvatarMapper;
import com.ctsi.mapper.TbUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName : TbActiveService
 * @Description :
 * @Author : Xiaotianyu  //作者
 * @Date: 2021-01-13 10:03
 */
@Service
public class TbActiveService {
    @Autowired
    private TbActiveMapper activeMapper;
    @Autowired
    private TbUserMapper userMapper;

    // 添加
    public void add(TbActive active) {
        activeMapper.insert(active);
    }

    //查询
    public List<TbActive> list() {
        QueryWrapper<TbActive> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        List<TbActive> list = activeMapper.selectList(queryWrapper);
        for(TbActive active : list) {
            TbUser user = userMapper.selectById(active.getCreateUserId());
            active.setCreateUser(user);
        }
        return list;
    }

    public TbActive getById(Integer id) {
        TbActive active = activeMapper.selectById(id);
        active.setCreateUser(userMapper.selectById(active.getCreateUserId()));
        return active;
    }
}
