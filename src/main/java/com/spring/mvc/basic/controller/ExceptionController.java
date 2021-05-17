package com.spring.mvc.basic.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.io.IOException;

@Controller
public class ExceptionController {

    @RequestMapping("/error")
    public String errorGenerator() {
        String str = null;
//        System.out.println(str.length());
        Integer.parseInt("Hola");
        return "about";
    }

    //    Multiple Error Handle In Single Method
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    @ExceptionHandler({NullPointerException.class, IOException.class})
    public String multiExceptionHandler(Model model) {
        model.addAttribute("msg", "NullPointerException or IOException");
        return "exception_page";
    }

    //    Multiple Error Handle in Separate Method

    //    @ExceptionHandler(value = NumberFormatException.class)
    @ExceptionHandler({NumberFormatException.class})
    public String singleExceptionHandler(Model model) {
        model.addAttribute("msg", "NumberFormatException");
        return "exception_page";
    }

    @ResponseStatus(value = HttpStatus.BAD_GATEWAY)
    @ExceptionHandler({ClassNotFoundException.class})
    public String anotherSingleExceptionHandler(Model model) {
        model.addAttribute("msg", "ClassNotFoundException");
        return "exception_page";
    }

    //    All Kind Exception(Generalize Exception) Handling
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler({Exception.class})
    public String genericExceptionHandler(Model model) {
        model.addAttribute("msg", "General Exceptions");
        return "exception_page";
    }
}
