package com.spring.mvc.basic.controller;


import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class CentralizeException {

    //    All Kind Exception(Generalize Exception) Handling
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler({Exception.class})
    public String genericExceptionHandler(Model model) {
        model.addAttribute("msg", "General Exceptions From Centralize Handler");
        return "exception_page";
    }
}
