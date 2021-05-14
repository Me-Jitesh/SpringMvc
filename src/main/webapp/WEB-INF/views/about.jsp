<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>About</title>
</head>
<body>
<h1>My Name Is Jitesh Singh</h1>
<h3>I am Currently BTech Student at Chhattisgarh </h3>
<h3>Currently Learning : <%=request.getAttribute("working")%>
</h3>
<h3>Future Learning : <%=request.getAttribute("future")%>
</h3>
<h3>Time is : <%=request.getAttribute("time")%>
</h3>
</body>
</html>
