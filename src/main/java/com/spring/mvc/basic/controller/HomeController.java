package com.spring.mvc.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class HomeController {

    @RequestMapping("/home")
    public String home() {
        System.out.println("Hola");
        return "home";
    }

    @RequestMapping("/submitted")
    public RedirectView process(@RequestParam("texty") String text) {

        String url="https://www.google.com/search?q="+text;
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(url);
        return redirectView;
    }
}
