package com.spring.mvc.SpringMvc;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        PrintWriter writer=response.getWriter();

        writer.println("<h1> Response From HelloServlet !! : ) </h1>");

    }
}