package com.ctsi.service;

import com.ctsi.entity.TbActive;
import com.ctsi.mapper.TbActiveMapper;
import com.ctsi.mapper.TbAvatarMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    // 添加
    public void add(TbActive active) {
        activeMapper.insert(active);
    }
}
