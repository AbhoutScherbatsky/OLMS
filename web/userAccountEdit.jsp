<!DOCTYPE html>
<html lang="en">

<head>
    <title>User Account Settings</title>
    <meta charset="utf-8" />
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style>
        #form-container {
            padding: 2em 0.5em 2em 0.5em;
            margin-top: -1em;
            margin-bottom: 2em;
        }
        .admin-button {
            margin: 0.2em;
        }
        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
        }
        main {
            flex: 1 0 auto;
        }
        a {
            color: inherit;
        }
    </style>
</head>

<body>
    <!-- NAVIGATION -->
    <nav>
    <div class="nav-wrapper blue darken-2 z-depth-1-half">
        <div class="brand-logo">{BRAND-NAME}</div>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="#">Home</a></li>
                <li><a href="./logout.php">Log Out</a></li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                <li><a href="#">Home</a></li>
                <li><a href="./logout.php">Log Out</a></li>
            </ul>
        </div>
    </nav>

    <!-- MAIN FORM BODY-->
    <main>
        <div class="container" id="form-container">
            <h4 style="border-left: 4px solid #616161; padding-left: 8px;" class="grey-text text-darken-2">User Account Edit</h4>

            <div class="card">
                <div class="card-content">
                    <div id="summary_section">
                        <!-- MESSAGE -->
                        <div id="msg" class="center-align">
                        </div>

                        <div class="row">
                            <div class="col s12">
                                User ID: {USER-ID}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                Username: {USER-NAME}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                Display name: {USER-DISPLAY-NAME}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12">
                                Password: ********
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12 center-align">
                                <!-- BUTTON EDIT -->
                                <button class="btn btn-large waves-effect waves-light blue" type="edit" name="edit" id="edit">EDIT</button>
                            </div>
                        </div>
                    </div>

                    <div id="edit_section" style="display: none">
                        <div class="row">
                            <div class="col s12">
                                User ID: {USER-ID}
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">people</i>
                                <input type="text" id="username" name="username" class="autocomplete">
                                <label for="username">Username</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">people_outline</i>
                                <input type="text" id="displayname" name="displayname" class="autocomplete">
                                <label for="displayname">Display name</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">lock</i>
                                <input type="text" id="password" name="password" class="autocomplete">
                                <label for="password">Password</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12 center-align">
                                <!-- BUTTON SUBMIT -->
                                <button class="btn btn-large waves-effect waves-light green" type="submit" name="submit" id="submit">SUBMIT</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="page-footer blue darken-2" style="padding-top: 10px;">
        <div class="footer-copyright">
            <div class="container">
                Copyright &copy; {ORGANIZATION}
                <a class="grey-text text-lighten-4 right" href="#">Developed by {DEV-NAME}</a>
            </div>
        </div>
    </footer>



    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script>
        $(".button-collapse").sideNav();
    </script>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
        $('select').material_select('destroy');
    </script>
    <script>
        $(document).ready(function(){
            $('.sidenav').sidenav();
        });
    </script>
    <script>
        $( document ).ready(function() {
            $('#edit_section').attr('style', 'display: none');

            $('#edit').click(function(){
                $('#summary_section').hide();
                $('#edit_section').attr('style', '');
            });

            $('#submit').click(function(){
                $('#edit_section').attr('style', 'display: none');
                $('#msg').empty().append('<p class=\'green-text\'>Changes saved!</p><br>')
                $('#summary_section').show();
            });
        });
    </script>
</body>

</html>