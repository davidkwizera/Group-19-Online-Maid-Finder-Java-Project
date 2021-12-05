<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/maidsdb";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String mid = request.getParameter("mid");
String fullname=request.getParameter("fullname");
String telephone=request.getParameter("telephone");
String username=request.getParameter("username");
String password=request.getParameter("password");
String address=request.getParameter("address");
String experience=request.getParameter("experience");
String id_number=request.getParameter("id_number");
String status=request.getParameter("status");
if(mid != null)
{
Connection con = null;
PreparedStatement ps = null;
int n = Integer.parseInt(mid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update maids set mid=?,fullname=?,telephone=?,username=?,password=?,address=?,experience=?,id_number=?,work_type=?,status=? where mid="+mid;
ps = con.prepareStatement(sql);
ps.setString(1, mid);
ps.setString(2, fullname);
ps.setString(3, telephone);
ps.setString(4, username);
ps.setString(5, password);
ps.setString(6, address);
ps.setString(7, experience);
ps.setString(8, id_number);
ps.setString(9, status);

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
