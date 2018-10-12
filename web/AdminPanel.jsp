<%-- 
    Document   : AdminPanel
    Created on : 4 Oct, 2018, 2:32:55 PM
    Author     : abhishek.panja554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Panel</title>
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
        <div class="nav-wrapper blue darken-3 z-depth-1-half">
            <a href="#!" class="brand-logo center">ADMIN PANEL</a>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
                
                <li><a href="./logout.php">Log Out</a></li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                
                <li><a href="./logout.php">Log Out</a></li>
            </ul>
        </div>
    </nav>

    <!-- MAIN FORM BODY-->
    <main>
        <div class="container z-depth-3" id="form-container">
            <!-- Banner Image -->
            <img class="responsive-img" src="http://www.huntsvillefirst.org/ResizeImage.aspx?img=%2FWebsites%2Fhuntsvillefirst%2FPhotoGallery%2F6095952%2FChurch%20Library%20Banner.jpg&w=1440&29601">

            <h5 class="center">Welcome Admin</h5>
            
            <div class="row">
                <div class="col l4 s12">
                    <a href="BooksMgmnt.jsp">
                        <div class="card-panel valign-wrapper center-align waves-effect waves-red waves-block red lighten-3">
                            <i class="material-icons medium">library_books</i>
                            <p>BOOKS MANAGEMENT</p>
                        </div>
                    </a>
                </div>
                <div class="col l4 s12">
                    <a href="UserMgmnt.jsp">
                        <div class="card-panel valign-wrapper center-align waves-effect waves-orange waves-block orange lighten-3">
                            <i class="material-icons medium">people</i>
                            <p>USER MANAGEMENT</p>
                        </div>
                    </a>
                </div>
                <div class="col l4 s12">
                    <a href="adminAccountEdit.jsp">
                        <div class="card-panel valign-wrapper center-align waves-effect waves-green waves-block green lighten-3">
                            <i class="material-icons medium">edit</i>
                            <p>EDIT ACCOUNT</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </main>

    <footer class="page-footer blue darken-3">
        <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                
              </div>
            </div>
          </div>
        <div class="footer-copyright blue darken-4">
            <div class="container">
                Copyright © 2018. {!ORGANIZATION-NAME}
                <a class="grey-text text-lighten-4 right" href="../dev.html">Designed by {!AUTHOR}</a>
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