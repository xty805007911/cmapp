package com.ctsi.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.util.Date;

/**
 * @Description:
 * @Author: Tianyu Xiao
 * @CreateDate: 2021/1/12  21:21
 */
@Data
public class TbFile {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String name;
    private String path;
    private Date createTime;
}
