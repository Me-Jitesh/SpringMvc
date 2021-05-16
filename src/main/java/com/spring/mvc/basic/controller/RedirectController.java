package com.spring.mvc.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class RedirectController {

    @RequestMapping("/one")
    public String one() {
        System.out.println("Redirecting Using redirect Prefix");
        return "redirect:/redirected";                                          // Redirecting Using redirect Prefix
    }

    @RequestMapping("/two")
    public RedirectView two() {
        System.out.println("Redirecting Using RedirectView");
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl("redirected");
        return redirectView;                                                        //      Redirecting Using RedirectView
    }

    @RequestMapping("/three")
    public void three(HttpServletResponse response) {
        System.out.println("Redirecting Using HttpServletResponse");

        try {
            response.sendRedirect("redirected");           // Redirecting Using HttpServletResponse
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("/redirected")
    public String redirected() {
        System.out.println("Redirected Here");
        return " ";
    }

}
