<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
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
                        
                           <li><a href="EmployerLoginForm.jsp">Maid Login</a></li>
                                <li ><a href="EmployerLoginForm.jsp">Employer Login</a></li>
                            
                            <li ><a href="">Contact</a></li>
                        </ul>
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
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-user-circle-o"></span>
                </div>
                
                
                <div class="content-bottom">
                
                    <form action="MaidRegister.jsp" method="post">
                  
                        <div class="field-group">
                        

                            <div class="content-input-field">
                                <input name="fullname" id="text1" type="text" value="" placeholder="Full Name" required="">
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="id_number" id="myInput" type="number" placeholder="Identity Number" required="">
                            </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="username" id="text1" type="text" value="" placeholder="Username" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="telephone" id="text3" type="number" value="" placeholder="Telephone" required="">
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="password" id="myInput" type="Password" placeholder="Password" required="">
                            </div>
                        </div>
                  
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="address" id="myInput" type="text" placeholder="Address" required="">
                              
                            </div>
                              <div class="content-input-field">
                               <input name="status" id="myInput" type="text" value="Not Booked" hidden required="">
                           </div>
                            Work Type<br>
                                    Gardener<input name="work_type"  type="radio" value="gardener"> &nbsp; 
                                   Car Washing<input name="work_type"  type="radio" value="carwashing"> &nbsp; 
                                    Cleaning<input name="work_type"  type="radio" value="cleaning"> &nbsp;
                                    Cook<input name="work_type"  type="radio" value="cook"><br><br>
                                    Years of Experience <br>
                                   <input name="experience" id="myInput" type="radio" value="1"> 1 &nbsp; &nbsp; &nbsp; &nbsp;
                                      <input name="experience" id="myInput" type="radio" value="2"> 2 &nbsp; &nbsp; &nbsp; &nbsp;
                              <input name="experience" id="myInput" type="radio" value="3"> 3 &nbsp; &nbsp; &nbsp; &nbsp;
                                 <input name="experience" id="myInput" type="radio" value="4"> 4 &nbsp; &nbsp; &nbsp; &nbsp;
                                  <input name="experience" id="myInput" type="radio" value="More than 5">  More than 5
                               
                        <div class="content-input-field">
                            <button type="submit" class="btn">Sign Up</button>
                        </div>
                        <div class="list-login-bottom text-center mt-lg-5 mt-4">

                            <a href="#" class="">By clicking Signup, I agree to your terms</a>



                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
   
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
                            <a href="Registermaid.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Sign Up Maid</a>
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
