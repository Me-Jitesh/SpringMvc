package com.spring.mvc.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/first")       // Now URL is /first/home
public class HomeController {

    //    @RequestMapping("/home")
    @RequestMapping(path = "/home", method = RequestMethod.GET)
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

    @RequestMapping("/hobby")
    public ModelAndView ideals() {
        ModelAndView view = new ModelAndView();
        view.addObject("game", "Cricket, ISL, Kabaddi");
        view.addObject("Job", "SDE");
        view.addObject("food", "AggRoll");
        LocalDateTime localDateTime = LocalDateTime.now();
        view.addObject("time", localDateTime);

        List<String> cric = new ArrayList<>();
        cric.add("AB De Viliers");
        cric.add("Suresh Raina");
        cric.add("Zaheer Khan");
        cric.add("Kevin Pietersen");
        view.addObject("cric", cric);
        view.setViewName("hobby");
        return view;
    }
}
