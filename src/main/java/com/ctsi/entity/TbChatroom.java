package com.ctsi.entity;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;

import java.util.Date;

/**
 * @ClassName : TbChatroom
 * @Description :
 * @Author : Xiaotianyu  //作者
 * @Date: 2021-01-12 13:54
 */
@Data
public class TbChatroom {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer userId;
    private String message;
    private Date createTime;

    @TableField(exist = false)
    private TbUser user;

    @TableField(exist = false)
    private String time;
}
