<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hobby</title>
</head>
<body>
<h1>
    Favourite Game :=
    ${game}
</h1>

<h1>
    Favourite Food :=
    ${food}
</h1>

<h1>
    Favourite Job :=
    ${Job}
</h1>

<h1>
    Tme :=
    ${time}
</h1>

<h1>
    Favourite Cricketers :=
    <c:forEach var="item" items="${cric}">
        ${item}
    </c:forEach>
</h1>

</body>
</html>
