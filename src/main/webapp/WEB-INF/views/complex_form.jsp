<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>Complex Form</title>
</head>
<body class="bg-dark">
<div class="container h-100">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card m-2 bg-info"
                 style="position: absolute; top: 50%; left: 50%; transform: translate(-50% , -50%);">
                <div class="card-body">
                    <h1 class="card-title text-center m-5">Register Here</h1>

                    <form class="row g-3" method="post" action="processor">
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Email</label>
                            <input type="email" class="form-control" id="inputEmail4" name="email">
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Password</label>
                            <input type="password" class="form-control" id="inputPassword4" name="password">
                        </div>
                        <div class="col-6">
                            <label for="id" class="form-label">ID</label>
                            <input type="text" class="form-control" id="id" name="id">
                        </div>
                        <div class="col-6">
                            <label for="inputAddress" class="form-label">Address</label>
                            <input type="text" class="form-control" id="inputAddress" name="address">
                        </div>
                        <div class="col-md-6">
                            <label for="dob" class="form-label">Date Of Birth</label>
                            <input type="text" class="form-control" id="dob" placeholder="dd/mm/yyyy" name="dob">
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Branch</label>
                            <select id="inputState" class="form-select" name="branch">
                                <option>CSE</option>
                                <option>Civil</option>
                                <option>Electrical</option>
                                <option>Mining</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <select class="form-select" multiple aria-label="multiple select example" name="courses">
                                <option selected>Courses</option>
                                <option value="Java">Java</option>
                                <option value="C++">C++</option>
                                <option value="Golang">Golang</option>
                                <option value="Python">Python</option>
                            </select>
                        </div>

                        <div class="col-6 p-5">
                            <div class="form-group">
                                <input class="form-check-input" type="radio" name="gender"
                                       id="male" value="male">
                                <label class="form-check-label" for="male">
                                    Male
                                </label>
                                <input class="form-check-input" type="radio" name="gender"
                                       id="female" value="female">
                                <label class="form-check-label" for="female">
                                    Female
                                </label>
                            </div>
                        </div>

                        <div class="col-6">
                            <label for="city" class="form-label">City</label>
                            <input type="text" class="form-control" id="city" name="permanentAddress.city">
                        </div>
                        <div class="col-6">
                            <label for="state" class="form-label">State</label>
                            <input type="text" class="form-control" id="state" name="permanentAddress.state">
                        </div>

                        <div class="col-6">
                            <label for="pin" class="form-label">Pin No</label>
                            <input type="text" class="form-control" id="pin" name="permanentAddress.pin">
                        </div>

                        <div class="col-6">
                            <label for="country" class="form-label">Country</label>
                            <input type="text" class="form-control" id="country" name="permanentAddress.country">
                        </div>

                        <div class="col-12 text-center">
                            <button type="submit" class="btn btn-secondary text-white">Submit</button>
                        </div>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>
