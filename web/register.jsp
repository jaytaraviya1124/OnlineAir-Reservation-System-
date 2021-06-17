 <%-- 
    Document   : register
    Created on : 4 Oct, 2020, 2:39:51 PM
    Author     : Devil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html style="
    background: gainsboro;
    "></html><head>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css">
	<style>
	.container {
  width: 500px;
  clear: both;
  
}
.center {
    padding-right: 100px;
    margin-right: 300px;
    margin-left: 200px;
    display: grid;
    padding-left: 200px;
}
label {
    color: blue;
}	
</style>

    <title>Registration form</title>
  </head>
  <body>
      <div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="admin.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ADMIN</a>
    <a href="register.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">REGISTRATION</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LOGIN</a>
    
   </div>
</div>
      <center>
          <h2 style="
    font-size: xxx-large;
    color: red;
    font-family: auto;
    margin-top: 50px;
">NEW USER</h2>
          <h3>
              Already have an account? <a href="login.jsp" style="
    color: blue;
    text-decoration: underline;
"> Log in </a>
          </h3>
      </center>

      <form action="registration" method="POST">
          <div class="container center">
           <div style="
    border: black;
    border-style: solid;
    padding: 20px;
">  
     
          <label>FirstName:</label>
          <input type="text" name="firstname">
          <br><br>
        
          <label>LastName:</label>
          <input type="text" name="lastname">
          <br> 
          <br>
          <label>UserName:</label>
          <input type="text" name="username">
          <br>
          <br>
          <label>Password:</label>
          <input type="password" name="password">
          <br>
          <br>

          <label>Email:</label>
          <input type=text" name="email">  <br><br>
          <center>
          <input type="submit" value="SUBMIT" align="RIGHT">
          </center>
              </div>
          <br>  
          </div>
      </form>
            

</body>
</html>
