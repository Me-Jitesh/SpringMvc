package com.spring.mvc.SpringMvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FormController {

    @RequestMapping("/form")
    public String showForm() {
        return "form";
    }

    //    Using @RequestParam Annotation To Get Data
    @RequestMapping(path = "/form_submitted", method = RequestMethod.POST)
    public String processForm(@RequestParam("first_name") String fName,
                              @RequestParam("last_name") String lName,
                              @RequestParam("email") String email,
                              @RequestParam("password") String password,
                              Model model) {

        model.addAttribute("first_name", fName);
        model.addAttribute("last_name", lName);
        model.addAttribute("email", email);
        model.addAttribute("password", password);

        return "dashboard";
    }

//    Traditional Method To Get Data

//    @RequestMapping(path = "/form_submitted", method = RequestMethod.POST)
//    public String processForm(HttpServletRequest request) {
//        String fName = request.getParameter("first_name");
//        String lName = request.getParameter("last_name");
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//
//        System.out.println(fName);
//        System.out.println(lName);
//        System.out.println(email);
//        System.out.println(password);
//
//        return "dashboard";
//    }
}
