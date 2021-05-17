package com.spring.mvc.basic;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InterceptorHandler extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("This Is PreHandler , It Runs Before Controller ");

        String text = request.getParameter("txt");
        if (text.startsWith("d")) {
            response.setContentType("text/html");
            response.getWriter().println("<h1>Invalid Name.... Name Should Not Start With 'd' </h1>");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("This Is postHandle , It Runs After Controller");
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("This Is afterCompletion , It Runs After ViewResolver And Before Response");
        super.afterCompletion(request, response, handler, ex);
    }
}
