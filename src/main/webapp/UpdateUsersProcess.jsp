<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/maidsdb";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String fullname=request.getParameter("fullname");
String username=request.getParameter("username");
String password=request.getParameter("password");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int n = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update users set id=?,fullname=?,username=?,password=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, fullname);

ps.setString(3, username);
ps.setString(4, password);

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
