<%-- 
    Document   : BookList
    Created on : 4 Oct, 2018, 1:16:17 PM
    Author     : abhishek.panja554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Book List</title>
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
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        
        if(session.getAttribute("username")== null)
        {
            response.sendRedirect("index.jsp");
            
        }
    %>
    <!-- NAVIGATION -->
    <nav>
        <div class="nav-wrapper blue darken-3 z-depth-1-half">
            <a href="#!" class="brand-logo center">BOOK LIST</a>
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
            <div class="row">
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">                           
                            <img class="activator" src="https://99designs-blog.imgix.net/wp-content/uploads/2017/12/attachment_83090027.jpg?auto=format&q=60&fit=max&w=930">                            
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="bookIssue.jsp">Issue This Book</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
                </div>
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9yrp3dlg5oGtqERj3N7KooWV5zEKPTh8tvQjtT_ZkJ73OfFOo">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
                </div>
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://pro2-bar-s3-cdn-cf.myportfolio.com/4573a45834d27f53b119f41019fcc904/18b45fe1-03f1-4457-9891-79d4c7b8186a_rw_1200.jpg?h=2ff34a008adf52c58c99188257c1f3dd">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
                </div>
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://about.canva.com/wp-content/uploads/sites/3/2015/01/children_bookcover.png">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
                </div>
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://pro2-bar-s3-cdn-cf.myportfolio.com/4573a45834d27f53b119f41019fcc904/18b45fe1-03f1-4457-9891-79d4c7b8186a_rw_1200.jpg?h=2ff34a008adf52c58c99188257c1f3dd">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
                </div>
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://pro2-bar-s3-cdn-cf.myportfolio.com/4573a45834d27f53b119f41019fcc904/18b45fe1-03f1-4457-9891-79d4c7b8186a_rw_1200.jpg?h=2ff34a008adf52c58c99188257c1f3dd">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
                </div>
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9yrp3dlg5oGtqERj3N7KooWV5zEKPTh8tvQjtT_ZkJ73OfFOo">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
                </div>
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9yrp3dlg5oGtqERj3N7KooWV5zEKPTh8tvQjtT_ZkJ73OfFOo">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
                </div>
                <div class="col l3 s12">
                    <div class="card small">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9yrp3dlg5oGtqERj3N7KooWV5zEKPTh8tvQjtT_ZkJ73OfFOo">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                      </div>
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