package com.ctsi.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @ClassName : TbActive
 * @Description :
 * @Author : Xiaotianyu  //作者
 * @Date: 2021-01-13 08:32
 */
@Data
public class TbActive {

    @TableId(type = IdType.AUTO)
    private Integer id;

    private String title;
    private String content;
    private Date createTime;
    private Integer createUserId;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date joinTime;
    @TableField(exist = false)
    private TbUser createUser;

}
