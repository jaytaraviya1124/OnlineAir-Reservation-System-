<%-- 
    Document   : deldata
    Created on : 12 Oct, 2020, 4:15:49 PM
    Author     : Devil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM user WHERE username=\""+username+"\"");
out.println("Data Deleted Successfully!");
RequestDispatcher rd = request.getRequestDispatcher("retrieve.jsp");
                        rd.forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
