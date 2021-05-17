<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${msg}</h1>

<h3>Yahi Hai Na Image :-</h3>
<img src="${pageContext.request.contextPath}/utils/images/${fileName}" alt="img"/>

</body>
</html>
