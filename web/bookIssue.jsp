<!DOCTYPE html>
<html lang="en">

<head>
    <title>Book Issue</title>
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
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        
        if(session.getAttribute("username")== null)
        {
            response.sendRedirect("index.jsp");
            
        }
    %>
    <!-- NAVIGATION -->
    <nav>
    <div class="nav-wrapper blue darken-2 z-depth-1-half">
        <div class="brand-logo">{OLMS}</div>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="CusDashboard.jsp">Home</a></li>
                <li><a href="#">Log Out</a></li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                <li><a href="CusDashboard.jsp">Home</a></li>
                <li><a href="#">Log Out</a></li>
            </ul>
        </div>
    </nav>

    <!-- MAIN FORM BODY-->
    <main>
        <div class="container" id="form-container">
            <h4 style="border-left: 4px solid #616161; padding-left: 8px;" class="grey-text text-darken-2">Issue Details</h4>

            <div class="card">
                <div class="card-content">
                    <form action="Issue" method="post">
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">library_books</i>
                                <input type="text" id="booktitle" name="booktitle" value="${BookName}">
                                <label for="booktitle">Book Name</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">mode_edit</i>
                                <input type="text" id="bookid" name="bookid" value="${BID}">
                                <label for="bookid">Book ID</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">peoples</i>
                                <input type="text" id="customerid" name="customerid">
                                <label for="customerid">Customer ID</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">date_range</i>
                                <input type="text" class="datepicker" id="returndate" name="returndate">
                                <label for="returndate">Issue Till</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col s12 center-align">
                                <button class="btn btn-large waves-effect waves-light green" type="submit" name="submit" id="submit">ISSUE</button>
                                
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
    <script>
        // Get current date
        var today = new Date();
        var dd = today.getDate() + 1;
        var mm = today.getMonth(); //January is 0!
        var yyyy = today.getFullYear();

        $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15, // Creates a dropdown of 15 years to control year,
            today: 'Today',
            clear: 'Clear',
            close: 'Ok',
            formatSubmit: 'dd-mm-yyyy',
            hiddenName: true,
            closeOnSelect: false, // Close upon selecting a date,
            container: undefined, // ex. 'body' will append picker to body
            min: new Date(yyyy, mm, dd), // Date validation
        });
    </script>
</body>

</html>