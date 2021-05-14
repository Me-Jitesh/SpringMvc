<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>
    <%= "Home Page !" %>
    Called By Home Controller
</h1>
<br/>

<h1>Hello !! <%= request.getAttribute("name")%>
</h1>
<br/>

<h1>From - <%= request.getAttribute("city")%>
</h1>
<br/>

<h1>Pin Number -  <%= request.getAttribute("pin")%>
</h1>
<br/>
<h1>
    Programming Languages : -
    <%
        List<String> lang = (List<String>) request.getAttribute("lang");
        for (String l : lang) {
    %>

    <h3>
        <%= l %>
    </h3>

    <%
        }
    %>

</h1>

<a href="hello-servlet">Hello Servlet</a>
</body>
</html>