<%-- 
    Document   : userprocess
    Created on : 20 Oct, 2020, 5:57:34 PM
    Author     : Devil
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/airline";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
    
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String uname=request.getParameter("uname");
String password=request.getParameter("password");
String email=request.getParameter("email");
String username = request.getParameter("username");

if(username != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update user set firstname=?,lastname=?,username=?,password=?,email=? where username=\""+username+"\"";
ps = con.prepareStatement(sql);

ps.setString(1, firstname);
ps.setString(2, lastname);
ps.setString(3, uname);
ps.setString(4, password);
ps.setString(5, email);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
 getServletContext().getRequestDispatcher("/retrieve.jsp").forward(request, response);
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
