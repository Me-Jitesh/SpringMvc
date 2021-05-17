<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>File Uploading Form</title>

</head>
<body>
<div class="container bg-dark vh-100">
    <div class="row">
        <div class="col-sm-8 offset-2 mt-5">
            <div class="card">
                <div class="card-body bg-secondary">
                    <h1 class="card-title">File Upload Karo</h1>
                    <form action="process_image" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="formFile" class="form-label">Select The Image</label>
                            <input class="form-control" type="file" id="formFile" name="img">
                        </div>
                        <button class="btn btn-outline-info" type="submit">Upload</button>
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
