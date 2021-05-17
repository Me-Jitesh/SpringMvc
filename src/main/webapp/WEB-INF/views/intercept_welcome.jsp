<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Interceptor Welcome Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
<div class="container bg-dark vh-100">
    <div class="row">
        <div class="col-sm-8 offset-2 text-white text-center mt-5">
            <h1>Interceptor Welcome Page</h1>
            <form method="get" action="interceptHome">
                <input type="text" name="txt" placeholder="Enter Your name">
                <button class="btn btn-outline-info m-5" type="submit">Say Hello!</button>
            </form>
        </div>

    </div>
</div>
</body>
</html>
