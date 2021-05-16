<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <title>Home Buddy</title>
</head>

<body class="blue-grey darken-3">

<div class="container" style="position: absolute; top: 50%; left: 50%; transform: translate(-50% , -50%);">

    <div class="row">
        <div class="col s8 offset-s2">
            <div class="card blue-grey darken-4">
                <div class="card-content white-text">
                    <span class="card-title center-align">Me Google</span>
                    <div class="row">
                        <form class="col s12" action="submitted" method="post">
                            <div class="row">
                                <div class="input-field col s10 offset-s1">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input id="texty" type="text" class="validate  white-text"
                                           name="texty">
                                    <label for="texty">
                                        Enter Text To Search
                                    </label>
                                    <div class="submit_btn right-align">
                                        <button class="btn waves-effect waves-light" type="submit" name="action">
                                            Submit
                                            <i class="material-icons right">send</i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
