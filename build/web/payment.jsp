<%-- 
    Document   : payment
    Created on : 22 Nov, 2020, 12:40:08 PM
    Author     : Devil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="
    background: darkseagreen;
">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>Payment</title>
        
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
    <body>
                <form>
       <div style="
    border: black;
    border-style: solid;
    width: 400px;
    margin-left: 400px;
    padding-left: 100px;
    margin-top: 50px;
">
        <h3> Card Details </h3>
        Card Number:<br>
<input type="text" name="cardno" value="">
<br>
Expire Month:<br>
<input type="text" name="expmonth" value="">
<br>
Expire Year:<br>
<input type="text" name="expyear" value="">
<br>
Cvv:<br>
<input type="text" name="cvv" value="xyz">
<button type="button" class="delete" style="
    margin-left: 150px;
    margin-top: 14px;
    margin-bottom: 10px;
">Pay</button>
</div>
                   
        </form>
    
    </body>
</html>
