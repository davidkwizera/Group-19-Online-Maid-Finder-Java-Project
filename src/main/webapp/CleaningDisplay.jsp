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
                        <a href="EmployerHomepage.jsp" class="btn"><span class="fa fa-pencil-square-o"></span>Back</a>
                        <a href="EmployerLogout.jsp" class="btn"><span class="fa fa-pencil-square-o"></span>Logout</a>
                    </div>
                </div>
                

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "maidsdb";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
</div>
</header>
</div>
</div>

<table>
<tr>
<td><h1 style="font-type:arial;">Book a cleaning maid in the list</h1></td>
</tr>


<tr style="background-color: #74d2e7;">
<td>Maid Type</td><td></td><td></td><td></td><td></td>
<td>Full Name</td><td></td><td></td><td></td><td></td>
<td>Telephone</td><td><td></td><td></td><td></td><td></td>
<td>Years Of Experience</td><td></td><td></td><td></td><td></td><td></td>
<td>Book</td><td></td><td></td><td></td><td></td><td></td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from maids where work_type='cleaning' and status='Not Booked'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("work_type") %></td><td></td><td></td><td></td><td></td>
<td><%=resultSet.getString("fullname") %></td><td></td><td></td><td></td><td></td>
<td><%=resultSet.getString("telephone") %></td><td></td><td></td><td></td><td></td>
<td><%=resultSet.getString("experience") %> </td><td>Years</td><td></td><td></td><td></td><td></td>
<td><a href="">BOOK</a></td><td></td><td></td><td></td><td></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
