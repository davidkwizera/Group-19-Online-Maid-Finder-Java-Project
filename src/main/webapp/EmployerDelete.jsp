<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maidsdb", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM employer WHERE empid="+id);
String redirectURL = "EmployerDisplay.jsp";
response.sendRedirect(redirectURL);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>