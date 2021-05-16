package com.spring.mvc.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServeStaticController {

    @RequestMapping(path = "/static")
    public String serveStatic() {
        System.out.println("Serve Static Chal Gaya");
        return "serving_static_file";
    }
}


