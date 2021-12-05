<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String s = request.getParameter("id");
String driver = "com.mysql.cj.jdbc.Driver";
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users where id="+s;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<title>Online Maid Finder</title><head>
<style type="text/css">
*{
	margin:0;
	padding : 0;
	font-family: timenewromans;
}
.banner{
	width: 100%;
	height: 100vh;
	background-image:url("images/banner.jpg");
	background-size: cover;
	background-position: center;
	background-repeated:repeated-x;}
	
	.logo{
		margin-top: 10px;
		width: 25%;
		cursor: pointer;
	}
	.navbar ul li{
		list-style: none;
		display: inline-block;
		margin: 0 20px;
		position: relative;

	}

	.navbar ul li a{
		text-decoration: none;
		color: black;
		text-transform: togle;
		font-size: 17px;
		text-align:left;
		padding-top: 20px;


	}
	.navbar ul li::after{
		content: '';
		height: 3px;
		width: 0;
		background: #009688;
		position: absolute;
		left: 0;
		bottom: -8px;
		transition: 0.5s;
	}
	.navbar ul li:hover::after{
		width: 100%;

	}
	.content{
		width: 45%;
		position: absolute;
		top: 50%;
		transform: translate(-10%);
		text-align: left;
		color: #fff;
		border: #009688 3px solid;
		position: center;
		margin-left:5%;
		margin-top:0px;
		height:auto;
		backaground-color:white;
		display:inline-block;
		height:40%;
    }
    .content h2{
    	font-size: 30px;
    	margin-top: 70px;
       }
       .content p{
       	margin: 20px auto;
       	font-weight: 100;
       	line-height: 25px;
       	font-size: 20px;
       	margin-top: 20px;
       }
       button{
       	width: 160px;
       	padding: 15px 0;
       	text-align: center;
       	margin: 20px 10px;
       	font-weight: bold;
       	border: 2px solid #009688;
       	border-radius: 25px;
       	background: transparent;
       	color: #fff;
       	cursor: pointer;
       	position: relative;
       	overflow: hidden;
       	width:140px;
       	height:auto;
       }

       span{
       	background: #009688;
       	height: 100%;
       	width: 0;
       	border-radius: 25px;
       	position: absolute;
       	left: 0;
       	bottom: 0;
       	z-index: -1;
       	transition: 0.6s;
       }
       button:hover span{
       	width: 100%;

       }
       button:hover{
       	border: none;
       }
		.dropdown {
  display: inline-block;
  position: relative;
  padding-left:0px;
 color:black;
  width:70px;
  height:auto;
  text-transform: togle;
}
.dropdown-content {
display: none;
position: absolute;
width: 100%;
overflow: auto;
box-shadow: 0px 8px 16px 0px rgba(0,0,0,255);
padding-top:-20px;
width:140px;
background-color:white;
}

.dropdown:hover .dropdown-content {
display: block;
}
.dropdown-content a {
display: block;
color: black;
padding: 5px;
text-decoration: none;

}

.dropdown-content a:hover {
color: #FFFFFF;
background-color: #00A4BD;
}
.header{
background-color:transparent;
padding-left:-90px;
}
h1{
text-align:center;
color:black;
}
input[type=text] {
  width:70%;
  height:30px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width:70%;
  height:30px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.form{
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  
}

  input[type=date] {
  width:70%;
  height:30px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width:70%;
  height:30px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 30%;
  background-color: #009688;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size:15px;
  align:center;
}

input[type=submit]:hover {
  background-color: #74d2e7;;
  width: 40%;
}
.employee{
padding-left:50%;
margin-top:4%;

}
table {
  border: 2px solid black;
  border-radius:2px;
  color:black;
  width:60%;
  border:#74d2e7;
  border-radius:5px;
  text-align:center;
  margin-left:250px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,255);
  
}
a:active{
text-decoration:underline;
}
h1{
font-family: Arial, Helvetica, sans-serif;
}
img{
margin-left:-50px;
margin-top: -70px;
height:110px;
width:30%;
}
		</style></head>
<html>
<body>

	  	
	  	
	 
	  		  
<form method="post" action="UpdateUsersProcess.jsp"><div class="form">
<table width="100%" heigh="100%">
<tr><td colspan="2" font-size="40"><center><b> <h2>Update Data</h2><br></b></center></td></tr>
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<tr><td>Full Name </td><td>
<input type="text" name="fullname" value="<%=resultSet.getString("fullname") %>"></td></tr>
<br>

<tr><td>Username:</td><td>
<input type="text" name="username" value="<%=resultSet.getString("username") %>"></td></tr>
<br>
<tr><td>Password</td><td>
<input type="text" name="password" value="<%=resultSet.getString("password") %>"></td></tr>
<br><br>
<tr><td></td><td><input type="submit" value="Update"></td></tr>
</table></div>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>