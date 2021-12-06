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
                        <a href="MaidLogout.jsp" class="btn"><span class="fa fa-pencil-square-o"></span>Logout</a>
                    </div>
                </div>
                
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
</div>
<br><br>
<center>
<h1 style="color:#74d2e7;">List of all maids</h1>
<table  border="1 px" bordercolor=" #74d2e7">
<tr style="background-color: #74d2e7;">
<td>Maid Type</td>
<td>Full Name</td>
<td>Identity Number</td>
<td>Address</td>
<td>Telephone</td>
<td>Years Of Experience</td>

<td>Status</td>

<td>Update</td>
<td>Delete</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from maids";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("work_type") %></td>
<td><%=resultSet.getString("fullname") %></td>
<td><%=resultSet.getString("id_number") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("telephone") %></td>
<td><%=resultSet.getString("experience") %> Years</td>
<td><%=resultSet.getString("status") %></td>
<td><a href="UpdateMaids.jsp?id=<%=resultSet.getString("mid")%>">Update</a></td>
<td><a href="DeleteMaid.jsp?id=<%=resultSet.getString("mid") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</center>
</body>
</html>
