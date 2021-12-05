<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/maidsdb";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String empid = request.getParameter("empid");
String fullname=request.getParameter("fullname");
String email=request.getParameter("email");
String username=request.getParameter("username");
String password=request.getParameter("password");

if(empid != null)
{
Connection con = null;
PreparedStatement ps = null;
int n = Integer.parseInt(empid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update employer set empid=?,fullname=?,email=?,username=?,password=? where empid="+empid;
ps = con.prepareStatement(sql);
ps.setString(1,empid);
ps.setString(2, fullname);
ps.setString(3, email);
ps.setString(4, username);
ps.setString(5, password);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
