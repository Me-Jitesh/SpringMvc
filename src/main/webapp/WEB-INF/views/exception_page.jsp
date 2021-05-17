<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Error Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
<div class="container bg-danger vh-100">
    <div class="row">
        <div class="col-sm-8 offset-2 text-white text-center mt-5">
            <h1>Oops! Sorry</h1>
            <h3>Something Went Wrong</h3>
            <h4>sorry an error occurred</h4>

            <button class="btn btn-outline-dark m-5">Home</button>
            <button class="btn btn-outline-info m-5">Contact Us</button>

            <h4>Exception Type Is : ${msg}</h4>

        </div>

    </div>
</div>
</body>
</html>
