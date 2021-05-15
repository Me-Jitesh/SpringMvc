package com.spring.mvc.SpringMvc.controller;

import com.spring.mvc.SpringMvc.models.Users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormController {

    @ModelAttribute
    public void commonDataForModel(Model model) {
        model.addAttribute("head", "Hola World");
    }

    @RequestMapping("/form")
    public String showForm() {
        return "form";
    }

    //    Store Data At Model Short Method(not need to @RequestParam & model.addAttribute)
    @RequestMapping(path = "/form_submitted", method = RequestMethod.POST)
    public String processForm(@ModelAttribute Users users, Model model) {
        return "dashboard";
    }


/*
//         Store Data At Model
    //    Using @RequestParam Annotation To Get Data
    @RequestMapping(path = "/form_submitted", method = RequestMethod.POST)
    public String processForm(@RequestParam("first_name") String fName,
                              @RequestParam("last_name") String lName,
                              @RequestParam("email") String email,
                              @RequestParam("password") String password,
                              Model model) {

        Users users = new Users(fName, lName, email, password);

        model.addAttribute("first_name", fName);
//        model.addAttribute("last_name", lName);
//        model.addAttribute("email", email);
//        model.addAttribute("password", password);

        model.addAttribute("user", users);

        return "dashboard";
    }
*/

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
