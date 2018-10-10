<%-- 
    Document   : UserMgmnt
    Created on : 4 Oct, 2018, 2:54:11 PM
    Author     : abhishek.panja554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Developers | CPC TPO Registration</title>
    <meta charset="utf-8" />
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Font Awesome v5.2.0-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
        crossorigin="anonymous">
    <style>
        #form-container {
            padding: 2em 0.5em 2em 0.5em;
            margin-top: -1em;
            margin-bottom: 2em;
        }

        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
        }

        main {
            flex: 1 0 auto;
        }

        .social-icons {
            font-size: 2em;
        }

        .collection .collection-item.avatar {
            min-height: 100px;
            padding-left: 120px;
        }

        .collection .collection-item.avatar:not(.circle-clipper)>.circle,
        .collection .collection-item.avatar :not(.circle-clipper)>.circle {
            width: 80px;
            height: 80px;
        }
    </style>
</head>

<body>
    <!-- NAVIGATION -->
    <nav>
        <div class="nav-wrapper blue darken-3 z-depth-1-half">
            <a href="#!" class="brand-logo center">USERS</a>
            <a href="#" data-activates="mobile-demo" class="button-collapse">
                <i class="material-icons">menu</i>
            </a>
            <ul class="right hide-on-med-and-down">
                <li>
                    <a href="#">Log Out</a>
                </li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                <li>
                    <a href="#">Log Out</a>
                </li>
            </ul>
        </div>
    </nav>

    <main>
        <div class="container z-depth-3" id="form-container">
            <ul class="collection">
                <li class="collection-item avatar">
                    <img src="https://www.decentfashion.in/wp-content/uploads/2018/02/funny-profile-pictures-s-300x256.jpg" alt="" class="circle">
                    <span class="title">USER 1</span>
                    <div class="secondary-content social-icons">
                        <a class="waves-effect waves-light btn orange">EDIT</a>
                        <a class="waves-effect waves-light btn red">REMOVE</a>
                    </div>
                </li>
                <li class="collection-item avatar">
                    <img src="https://res.cloudinary.com/teepublic/image/private/s--kjDogw6i--/t_Preview/b_rgb:ffffff,c_limit,f_jpg,h_630,q_90,w_630/v1477095667/production/designs/747626_1.jpg" alt="" class="circle">
                    <span class="title">USER 2</span>
                    <div class="secondary-content social-icons">
                        <a class="waves-effect waves-light btn orange">EDIT</a>
                        <a class="waves-effect waves-light btn red">REMOVE</a>
                    </div>
                </li>
                <li class="collection-item avatar">
                    <img src="https://i.ebayimg.com/images/g/FnQAAOSwEeFVEPB~/s-l640.jpg" alt="" class="circle">
                    <span class="title">USER 3</span>
                    </p>
                    <div class="secondary-content social-icons">
                        <a class="waves-effect waves-light btn orange">EDIT</a>
                        <a class="waves-effect waves-light btn red">REMOVE</a>
                    </div>
                </li>
            </ul>
            
             
            <div class="fixed-action-btn">
              <a class="btn-floating btn-large red" href="#">
                <i class="large material-icons">add</i>
              </a>
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
</body>

</html>