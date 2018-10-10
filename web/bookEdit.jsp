<!DOCTYPE html>
<html lang="en">

<head>
    <title>Book Entry Edit</title>
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
            <h4 style="border-left: 4px solid #616161; padding-left: 8px;" class="grey-text text-darken-2">Book Entry Edit</h4>

            <div class="card">
                <div class="card-content">
                    <form action="">
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">library_books</i>
                                <input type="text" id="booktitle" name="booktitle">
                                <label for="booktitle">Book Title</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">description</i>
                                <textarea id="bookdesc" name="bookdesc" class="materialize-textarea"></textarea>
                                <label for="bookdesc">Book description</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">peoples</i>
                                <input type="text" id="author" name="author">
                                <label for="author">Author(s)</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">mode_edit</i>
                                <input type="number" id="isbn" name="isbn">
                                <label for="isbn">ISBN Number</label>
                            </div>
                        </div>
                    </form>
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
</body>

</html>