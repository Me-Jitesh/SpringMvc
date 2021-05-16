<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Serving Static Resources</title>

    <%--    <link  type="text/css" rel="stylesheet" href="<c:url value="/utils/stylesheets/style.css"/>">--%>                    <%-- Not Working In Intellij Gives Error--%>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/utils/stylesheets/style.css">

    <%--    <script src="<c:url value="/utils/js/script.css"/>"></script>--%>                                                                    <%-- Not Working In Intellij Gives Error--%>

    <script src="${pageContext.request.contextPath}/utils/js/script.js"></script>

</head>
<body>

<%--<img src="<c:url value="/utils/images/man.png"/> " alt="img"/>--%>                                                                  <%-- Not Working In Intellij Gives Error--%>

<img src="${pageContext.request.contextPath}/utils/images/man.png" alt="img"/>

</body>
</html>
