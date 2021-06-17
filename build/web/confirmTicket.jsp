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
    "><u>Confirm Ticket</u></h1>
   <form style="
    
    width: 600px;
    margin-left: 400px;
    margin-right: 0px;
    height: 600px;
    padding-left: 25px;
">
  
    
        <%
            try{
        
                String firstName = request.getParameter("fname");
                String lastName = request.getParameter("lname");
                String mobile = request.getParameter("mobile");
                String email = request.getParameter("email");
                int numberPerson = Integer.parseInt( request.getParameter("noofperson"));
                
                String address = request.getParameter("address");
                int totalPrice;
                
                            
                String fNum = (String)session.getAttribute("flightNumber");        
        
            Class.forName("com.mysql.jdbc.Driver");
           
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
           
           
           System.out.println("Conn created");
           
          Statement st = con.createStatement();
                
                
                    
        String qr = "select * from flight;";                    
        ResultSet rs = st.executeQuery(qr);
        
        
                
                    
                

            while(rs.next())
                
            {
               
                    if(fNum.equals(rs.getString(1)))
                    {
        

                        %>
                          <table border="1"  style="
    margin-top: 60px;
    margin-left: 240px
">
                        <div>
                                <tr>Flight Number: <%=rs.getString(1) %></tr> <br>
                                <tr>Flight Name: <%=rs.getString(2) %></tr> <br>
                                <tr>Source: <%=rs.getString(3) %></tr> <br>
                                <tr>Destination: <%=rs.getString(4) %></tr> <br>
                                <tr>Date: <%=rs.getString(5) %></tr> <br>
                                <tr>Time: <%=rs.getString(6) %></tr> <br>
                                <tr>Airport: <%=rs.getString(7) %></tr> <br> 
                                <tr>Ticket Price: <%=rs.getInt(8) %></tr> <br>
                                <tr>First Name: <%=firstName%></tr> <br>
                                <tr>Last Name: <%=lastName%></tr> <br>
                                <tr>Mobile: <%=mobile%></tr> <br>
                                <tr>Email: <%=email%></tr> <br>
                                <tr>Number of Person: <%=numberPerson%></tr> <br>
                                <tr>Total Price: <%=numberPerson*rs.getInt(8)%></tr> <br>
                                
                                <%
                                    try{
                                        
                                    Class.forName("com.mysql.jdbc.Driver");
            
                                       
                                    totalPrice = numberPerson*rs.getInt(8);
                                    
                                    PreparedStatement pst = con.prepareStatement("insert into airline.booked values(?,?,?,?,?,?,?,?,?,?,?)");

                                                           
                                           pst.setString(1, firstName );
                                           pst.setString(2, lastName );
                                           pst.setString(3,  rs.getString(1));
                                           pst.setString(4, rs.getString(2));
                                           pst.setString(5, rs.getString(3) );
                                           pst.setString(6, rs.getString(4));
                                           pst.setString(7, rs.getString(5) );
                                           pst.setString(8, rs.getString(6) );
                                           pst.setInt(9, numberPerson );
                                           pst.setInt(10, totalPrice);
                                           pst.setString(11, mobile );
                                           
                                           pst.executeUpdate();
                                     
                                    }
                                    catch(Exception e){
                                        out.println(e);
                                    }
                                %>
                                
                                
                                <tr><a href="payment.jsp"><button type="button" class="delete" style="
    align-items: center;
    margin-left: 150px;
    margin-top: 14px;
">Confirm</button></a></tr>             
                            <br>
                            </table>  
                            </div>
                        <%
                    }
                 
            }
                   

           con.close();
        }catch(Exception e){
            System.out.println(e);
        }
        %>
        </form>

                          
</html>
