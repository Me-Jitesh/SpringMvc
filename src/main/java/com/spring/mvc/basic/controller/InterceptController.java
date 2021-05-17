package com.spring.mvc.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class InterceptController {

    @RequestMapping("/welcome")
    public String welcome() {
        return "intercept_welcome";
    }

    @RequestMapping("/interceptHome")
    public String interceptHome(@RequestParam("txt") String txt, Model model) {
        System.out.println(txt);
        model.addAttribute("text", txt);
        return "intercept_home";
    }
}
