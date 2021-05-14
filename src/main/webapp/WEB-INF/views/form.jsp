<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>

<body class="blue-grey darken-3">
<div class="container" style="position: absolute; top: 50%; left: 50%; transform: translate(-50% , -50%);">

    <div class="row">
        <div class="col l8 offset-l2 col m8 offset-m2 col col xl6 offset-xl3">
            <div class="row blue-grey">
                <div class="col l12 ">
                    <div class="card blue-grey darken-4">
                        <div class="card-content white-text">
                            <span class="card-title center-align">Sign Up</span>
                            <div class="row ">
                                <form class="col l12" action="form_submitted" method="post">
                                    <div class="row">
                                        <div class="input-field col l6 col s6">
                                            <i class="material-icons prefix">account_circle</i>
                                            <input id="first_name" type="text" class="validate  white-text"
                                                   name="first_name">
                                            <label for="first_name">
                                                First Name
                                            </label>
                                        </div>
                                        <div class="input-field col l6 col s6">
                                            <i class="material-icons prefix">recent_actors </i>
                                            <input id="last_name" type="text" class="validate  white-text"
                                                   name="last_name">
                                            <label for="last_name">Last Name</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col l12 col s12">
                                            <i class="material-icons prefix">email</i>
                                            <input id="email" type="email" class="validate  white-text" name="email">
                                            <label for="email">Email</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col l12 col s12">
                                            <i class="material-icons prefix">keyboard</i>
                                            <input id="password" type="password" class="validate  white-text"
                                                   name="password">
                                            <label for="password">Password</label>
                                        </div>
                                    </div>
                                    <div class="submit_btn right-align">
                                        <button class="btn waves-effect waves-light" type="submit"
                                                name="action">Submit
                                            <i class="material-icons right">send</i>
                                        </button>
                                    </div>
                                </form>
                            </div>

                            <div class="loader center-align"
                                 style="position: absolute; top: 50%; left: 50%; transform: translate(-50% , -50%); display: none;">
                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="gap-patch">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="gap-patch">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="gap-patch">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="gap-patch">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>