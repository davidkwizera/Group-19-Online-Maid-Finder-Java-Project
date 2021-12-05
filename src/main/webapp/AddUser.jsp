<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>

<%
String fullname=request.getParameter("fullname");
String username=request.getParameter("username");
String password=request.getParameter("password");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maidsdb", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(fullname,username,password)values('"+fullname+"','"+username+"','"+password+"')");

String site = new String("AdminHomepage.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>