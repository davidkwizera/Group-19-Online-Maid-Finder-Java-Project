<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Online Maid Finder</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
   
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
    <div class="main-sec">
        <!-- //header -->
        <header class="py-sm-3 pt-3 pb-2" id="home">
            <div class="container">
                <!-- nav -->
                <div class="top-w3pvt d-flex">
                    <div id="logo">
                        <h1> <a href="index.jsp"><span class="log-w3pvt">O</span>nline</a> <label class="sub-des">Maid Finder</label></h1>
                    </div>

                    <div class="forms ml-auto">
                    
                        <a href="MaidRegisterForm.jsp" class="btn"><span class="fa fa-pencil-square-o"></span>Maid  Sign Up</a>
           
                         <a href="LoginForm.jsp" class="btn"><span class="fa fa-pencil-square-o"></span>Admin Login</a>
                    </div>
                </div>
                <div class="nav-top-wthree">
                    <nav>
                        <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu">
                            <li class="active"><a href="index.jsp">Home</a></li>
                        
                           <li><a href="MaidLoginForm.jsp">Maid Login</a></li>
                                <li ><a href="EmployerLoginForm.jsp">Employer Login</a></li>
                            
                            <li ><a href="">Contact</a></li>
                        </ul>
                    </nav>
                    <!-- //nav -->
                    <div class="search-form ml-auto">
                        <div class="form-w3layouts-grid">
                         
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </header>
        <!-- //header -->
        <!--/banner-->
        <div class="banner-wthree-info container">
            <div class="row">
                <div class="col-lg-5 banner-left-info">
                    <h3>Register TO   <span>Find Maid</span></h3>
                    <a href="EmployerRegister.jsp" class="btn shop">Register As Employer </a>
                </div>

                <div class="col-lg-7 banner-img">
                    <img src="images/logomaid.png" alt="part image" class="img-fluid">
                </div>
            </div>
        </div>
    </div>

    <!-- //banner-->
    <!--/banner-bottom -->
    
    <!-- footer -->
    <div class="footer_agileinfo_topf py-5">
        <div class="container py-md-5">
            <div class="row">
                <div class="col-lg-3 footer_wthree_gridf mt-lg-5">
                    <h2><a href="index.jsp"><span>O</span>nline
                        </a> </h2>
                    <label class="sub-des2">Maid Finder</label>
                </div>
                <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-4">
                    <ul class="footer_wthree_gridf_list">
                        <li>
                            <a href="index.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Home</a>
                        </li>
                        <li>
                            <a href="about.html"><span class="fa fa-angle-right" aria-hidden="true"></span> Contact</a>
                        </li>
                        <li>
                            <a href="shop.html"><span class="fa fa-angle-right" aria-hidden="true"></span> Registration</a>
                        </li>
                        <li>
                            <a href="shop.html"><span class="fa fa-angle-right" aria-hidden="true"></span>Login</a>
                        </li>

                    </ul>
                </div>
                

            <div class="w3ls-fsocial-grid">
                <h3 class="sub-w3ls-headf">Follow Us</h3>
                <div class="social-ficons">
                    <ul>
                        <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
                        <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                        <li><a href="#"><span class="fa fa-google"></span>Google</a></li>
                    </ul>
                </div>
            </div>
            <div class="move-top text-center mt-lg-4 mt-3">
                <a href="#home"><span class="fa fa-angle-double-up" aria-hidden="true"></span></a>
            </div>
        </div>
    </div>
    <!-- //footer -->

    <!-- copyright -->
    <div class="cpy-right text-center py-3">
        <p>© Online Maid Finder. All rights reserved | Design by
          Computer Science Year Two Java Programming Group 19
        </p>

    </div>
    <!-- //copyright -->

</body>

</html>
