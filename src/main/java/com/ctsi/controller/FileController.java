package com.ctsi.controller;

import com.ctsi.entity.TbFile;
import com.ctsi.mapper.TbFileMapper;
import com.ctsi.service.MinioService;
import io.minio.MinioClient;
import io.minio.ObjectStat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: Tianyu Xiao
 * @CreateDate: 2021/1/12  21:25
 */
@Controller
public class FileController {
    @Autowired
    private MinioService minioService;
    @Autowired
    private TbFileMapper fileMapper;
    @Autowired
    private MinioClient minioClient;

    @RequestMapping("/toUpload")
    public String toUpload() {
        return "file-add";
    }

    @RequestMapping("/upload")
    @ResponseBody
    public void upload(@RequestParam(name = "file", required = false) MultipartFile[] file) {
        Map<String, List> upload = minioService.upload(file);

        List<String> realNames = upload.get("realName");
        List<String> uuidNames = upload.get("uuidName");
        for(int i=0;i<uuidNames.size();i++) {
            TbFile tbFile = new TbFile();
            tbFile.setCreateTime(new Date());
            tbFile.setName(realNames.get(i));
            tbFile.setPath(minioService.getFileUrlFont()+uuidNames.get(i));
            fileMapper.insert(tbFile);
        }
    }

    @RequestMapping("/file/list")
    @ResponseBody
    public List<TbFile> fileList() {
        return fileMapper.selectList(null);
    }

    @RequestMapping("/file/download/{fileId}")
    @ResponseBody
    public void download(@PathVariable Integer fileId, HttpServletResponse response) {
        TbFile tbFile = fileMapper.selectById(fileId);
        minioService.download(response,tbFile.getPath().split("/cmapp/")[1]);
    }

    @RequestMapping("/file/delete/{fileId}")
    @ResponseBody
    public Integer delete(@PathVariable Integer fileId) {
        try {
            TbFile tbFile = fileMapper.selectById(fileId);
            fileMapper.deleteById(fileId);
            minioService.deleteFile(tbFile.getPath().split("/cmapp/")[1]);
            return 1;
        }catch (Exception e) {
            e.printStackTrace();
            return 0;
        }

    }

}
