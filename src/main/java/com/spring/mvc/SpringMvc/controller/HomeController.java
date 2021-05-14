package com.spring.mvc.SpringMvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;
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

    @RequestMapping("/about")
    public ModelAndView about() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("working", "Java Spring FrameWork");
        modelAndView.addObject("future", "Python ML Library");
        LocalDateTime localDateTime = LocalDateTime.now();
        modelAndView.addObject("time", localDateTime);
        modelAndView.setViewName("about");
        return modelAndView;
    }
}
