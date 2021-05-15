<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<h1>

    <%--    Your Name--%>
    <%--    ${first_name}--%>
    <%--    ${last_name}--%>
    <%--    <br>--%>
    <%--    Your Email--%>
    <%--    ${email}--%>
    <%--    <br>--%>
    <%--    Your Password--%>
    <%--    ${password}--%>
    <%--    <br>--%>

    ${head}
    <br><br>

    Your Details By Model :-
    <br> <br>
    Welcome ${users.first_name} ${users.last_name}
    <br>
    ${users.email}
    <br>
    ${users.password}
    <br>
</h1>
<h1 style="color: limegreen">
    Success At Index: ${result}
</h1>
</body>
</html>
