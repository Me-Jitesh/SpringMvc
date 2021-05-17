package com.spring.mvc.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Controller
public class FileController {

    @RequestMapping("/fileupload")
    public String fileUpload() {
        return "file_form";
    }

    @RequestMapping(path = "/process_image", method = RequestMethod.POST)
    public String processFile(@RequestParam("img") CommonsMultipartFile file, HttpSession session, Model model) {
        System.out.println("file Uploaded");
        System.out.println(file.getSize());
        System.out.println(file.getName());
        System.out.println(file.getContentType());
        System.out.println(file.getOriginalFilename());
        System.out.println(file.getStorageDescription());

        byte[] fileBytes = file.getBytes();

        String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "utils" + File.separator + "images" + File.separator + file.getOriginalFilename();
        System.out.println(path);
        try {
            FileOutputStream fileInputStream = new FileOutputStream(path);
            fileInputStream.write(fileBytes);
            fileInputStream.close();
            System.out.println("Upload Ho Gya Bachcha");

            model.addAttribute("msg", "Upload Ho Gya Bachcha");
            model.addAttribute("fileName", file.getOriginalFilename());

        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Error Bachcha");
            model.addAttribute("msg", "Error Bachcha");
        }


        return "upload_success";
    }
}

