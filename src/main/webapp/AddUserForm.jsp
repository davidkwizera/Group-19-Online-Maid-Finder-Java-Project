<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Baggage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <!-- //Fonts -->

</head>

<body>
    <div class="main-sec inner-page">
        <!-- //header -->
        <header class="py-sm-3 pt-3 pb-2" id="home">
            <div class="container">
                <!-- nav -->
                <div class="top-w3pvt d-flex">
                    <div id="logo">
                        <h1> <a href="index.html"><span class="log-w3pvt">O</span>nline</a> <label class="sub-des">Maid Finder</label></h1>
                    </div>

                    <div class="forms ml-auto">
                       <a href="AdminHomepage.jsp" class="btn"><span class="fa fa-pencil-square-o"></span>Back</a>
                        <a href="LoginForm.jsp" class="btn"><span class="fa fa-pencil-square-o"></span>Logout</a>
                    </div>
                </div>
                <div class="nav-top-wthree">
                    <nav>
                        <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                        <input type="checkbox" id="drop" />
                        
                    </nav>
                    <!-- //nav -->
                
                    <div class="search-form ml-auto">
                        
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </header>
        <!-- //header -->

    </div>

    <!-- //banner-->
    <!--/login -->
    <section class="banner-bottom py-5">
        <div class="container">
                <section class="banner-bottom py-5">
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-user-circle-o"></span>
                </div>
                <div class="content-bottom">
                    <form action="AddUser.jsp" method="post">
                    

                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="fullname" id="text1" type="text" value="" placeholder="Full Name" required="">
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="username" id="myInput" type="text" placeholder="Username">
                            </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="password" id="text1" type="password" value="" placeholder="Password" required="">
                            </div>
                        </div>
                        
                        
                               
                        <div class="content-input-field">
                            <button type="submit" class="btn">Add User</button>
                        </div>
                        <div class="list-login-bottom text-center mt-lg-5 mt-4">

                            



                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
   
   
</body>

</html>
