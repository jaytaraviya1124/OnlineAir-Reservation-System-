<%-- 
    Document   : bookflight
    Created on : 22 Oct, 2020, 11:52:54 AM
    Author     : Devil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="
    background: darkgray;
">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>Book Flight</title>
                  <div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="admin.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ADMIN</a>
    <a href="register.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">REGISTRATION</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LOGIN</a>
    
   </div>
</div>
    </head>
    <h2 style="
    text-align: center;
    margin-top: 65px;
"> Book Flight </h2>
    <body>
        <%
            String fnum = request.getParameter("flno");
            
            session=request.getSession();  
            session.setAttribute("fnumber",fnum);  
            
        %>
   <form action="confirmTicket.jsp" method="POST" style="
    margin-left: 200px;
    padding-left: 200px;
    padding-right: 200px;
    margin-right: 200px;
">
    <div style="
    border: black;
    border-style: groove;
    text-align: center;
">
    
     <div style="text-align: initial;padding-left: 20px;margin-top: 20px;">
         <table>  
         <label> First Name:</label>
            <input type="text" name="fname">
            <br><br>
            <label>Last Name:</label>
            <input type="text" name="lname">
            <br><br>
            <label>Mobile:</label>
            <input type="text" name="mobile">
            <br><br>
            <label>Email Id:</label>
            <input type="text" name="email">

            <br><br>
            <label>No Of Person:</label>
            <input type="text" name="noofperson">
            <br><br>
            <label>Address: </label>
            <input type="text" name="address">
            <br><br>
                <div style="
    padding-left: 100px;
    padding-bottom: 20px;
"><input type="submit" value="Process To Payment"></div>
            </div>
            </div>
        </form>
    </body>
</html>
