<%-- 
    Document   : delflight
    Created on : 19 Oct, 2020, 4:21:44 PM
    Author     : Devil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fl_no=request.getParameter("fl_no");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM flight WHERE fl_no=\""+fl_no+"\"");
out.println("Data Deleted Successfully!");
RequestDispatcher rd = request.getRequestDispatcher("flightsdata.jsp");
                        rd.forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

