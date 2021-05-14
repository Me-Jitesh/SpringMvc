package com.spring.mvc.SpringMvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    @RequestMapping("/home")
//    public String home() {
    public String home(Model model) {

        System.out.println("This Is Home URL");
        model.addAttribute("name", "Jitu Thakur");
        model.addAttribute("city", "Korba,Chhattisgarh");
        model.addAttribute("pin", 495677);

        List<String> language = new ArrayList<>();
        language.add("Java");
        language.add("Javascript");
        language.add("Php");
        language.add("Python");

        model.addAttribute("lang", language);

        return "index";
    }
}
