<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to LMS</title>
        <link rel="stylesheet" type="text/css" href="index.css">
        
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
        
        <script type="text/javascript">
        	$(document).ready(function(){
                    $("#content2").hide();
                    $(".customer_login").click(function(){
                            $("#content1").show();
                            $("#content2").hide();
                            $(".customer_login").addClass('active');
                            $(".admin_login").removeClass('active');
                    });
                    $(".admin_login").click(function(){
                            $("#content2").show();
                            $("#content1").hide();
                            $(".admin_login").addClass('active');
                            $(".customer_login").removeClass('active');
                    });
        	});
        </script>
    </head>
    <body>
        <h1 align="center">Welcome</h1>
        <p align="center">This is a Library Management System. Please login to continue.</p><br>
        <div class="login-page">
            <div id="tab-btn">
                <a href="#" class="customer_login active">Customer Login</a>
                <a href="#" class="admin_login">Admin Login</a>
            </div>
            <div class="form">
                <form action="mainlogin" method="post" class="login-form">
                    <div id = "content1">
                        <h3 align="center">Customer Login</h3>
                        <input type="text" name="cusname" placeholder="username"/>
                        <input type="password" name="cuspass" placeholder="password"/>
                        <input type="submit" value="Login">
                    </div>
                </form>
                <form action="adminlogin" method="post" class="login-form">    
                    <div id = "content2">
                        <h3 align="center">Admin Login</h3>
                        <input type="text" name="adname" placeholder="username"/><br>
                        <input type="password" name="adpass" placeholder="password"/><br>
                        <input type="submit" value="Login">
                    </div>

                    
                </form>
            </div>
        </div>
    </body>
</html>