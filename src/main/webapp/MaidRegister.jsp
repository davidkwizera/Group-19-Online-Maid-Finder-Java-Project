<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>

<%
String fullname=request.getParameter("fullname");
String telephone=request.getParameter("telephone");
String username=request.getParameter("username");
String password=request.getParameter("password");
String address=request.getParameter("address");
String experience=request.getParameter("experience");
String id_number=request.getParameter("id_number");
String work_type=request.getParameter("work_type");
String status=request.getParameter("status");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maidsdb", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into maids(fullname,telephone,username,password,address,experience,id_number,work_type,status)values('"+fullname+"','"+telephone+"','"+username+"','"+password+"','"+address+"','"+experience+"','"+id_number+"','"+work_type+"','"+status+"')");

String site = new String("MaidLoginForm.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>