  <%-- 
    Document   : flightAvailable
    Created on : 21 Oct, 2020, 2:38:55 PM
    Author     : Devil
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="
    background: aqua;
">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>Flight Search</title>
        
                  <div class="w3-top"> 
    <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="booking.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">BOOKING DETAIL</a>
    <a href="register.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">REGISTRATION</a>
    <a href="cancel.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CANCEL FLIGHT</a>
    
   </div>
</div>
    </head>
    <h1 style="
    margin-top: 70px;
    "><u>Book flights</u></h1>
    <table border="1"  style="
    margin-top: 60px;
    margin-left: 240px
">
    <tr>
<td>Flight No </td>
<td>Flight Name</td>
<td>Source</td>
<td>Destination</td>
<td>Date</td>
<td>Time</td>
<td>Airport Name</td>
<td>Ticket Price</td>
<td>book</td>
</tr>
        <%
            try{
        
        
        String from =request.getParameter("from");
        String to =request.getParameter("to");
        
        
            Class.forName("com.mysql.jdbc.Driver");
           
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
           
           
           System.out.println("Conn created");
           
          Statement st = con.createStatement();
                
                
                    
        String qr = "select * from flight;";                    
        ResultSet rs = st.executeQuery(qr);
        
        
                
                    
                

            while(rs.next())
                
            {
               

                if(rs.getString(3).equals(from))
                {
                   
                    if(rs.getString(4).equals(to))
                    {
        

                        %>
                            <tr>  
                                <td><%=rs.getString(1) %></td>
                                <td><%=rs.getString(2) %></td>
                                <td><%=rs.getString(3) %></td>
                                <td><%=rs.getString(4) %></td>
                                <td><%=rs.getString(5) %></td>
                                <td><%=rs.getString(6) %></td>
                                <td><%=rs.getString(7) %></td>
                                <td><%=rs.getInt(8) %></td>
                                <%
                                    
                                    session=request.getSession();  
                                    session.setAttribute("flightNumber",rs.getString(1));
                                
                                %>
                                
                                <td><a href="bookflight.jsp?fl_no=<%=rs.getString(1) %>"><button type="button" class="delete">Book</button></a></td>             
                            </tr><br>
                        <%
                    }
                 else
                {
                    out.print("Sorry no such flight available.");
                    RequestDispatcher rd = request.getRequestDispatcher("flightAvailable.jsp");
                        rd.forward(request, response); 
                }   
                }
                
            }
                   

           con.close();
        }catch(Exception e){
            System.out.println(e);
        }
        %>
    
    </table>    
</html>
