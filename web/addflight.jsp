<%-- 
    Document   : addflight
    Created on : 7 Oct, 2020, 5:54:04 PM
    Author     : Devil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> ADD FLIGHTS </title>
         <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title></title>
          <div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="admin.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ADMIN</a>
    <a href="retrieve.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">USER DATA</a>
    <a href="flightsdata.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">FLIGHTDETAILS</a>
    
   </div>
</div>
    </head>
    <body style="
    background: darkgrey;
">
      
       
         <h1> <u>ADD FLIGHTS </u></h1>
       <form action="flightdetails" method="POST" style="
    padding-left: 200px;
    margin-left: 200px;
    padding-top: 50px;
">
                       <div>
            <label> Flight No : </label>
            <input type="text" name="fl_no">
            <br>
            <br>
            <label>Flight Name :</label>
            <input type="text" name="fl_name">
            <br><br>
            <label>Source :</label>
            <input type="text" name="src">
            <br><br>
            <label> Destination :</label>
            <input type="text" name="dest">
            <br><br>
            <label>Date :</label>
            <input type="text" name="date">
            <br><br>
            <label>Time :</label>
            <input type="text" name="time">
            <br><br>
            <label>Airport Name :</label>
            <input type="text" name="airport_name">
            <br><br>
            <label>Ticket Price :</label>
            <input type="text" name="ticket_price">
            <br><br>
            <div style="
    padding-left: 100px;
    padding-top: 20px;
"><input type="submit" value="Add Flight"></div>
           </div>
           </body>
    
</html>
