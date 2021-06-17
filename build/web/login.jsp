<!DOCTYPE html>
<html><head>
            <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    
    <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="addflight.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ADMIN</a>
    <a href="register.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">REGISTRATION</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LOGIN</a>
    
   </div>
</div>
    <div style="
    background-image: url(./logo.png);
    padding: 60px;
    margin-top: 25px;
    margin-bottom: -34px;
    background-repeat: no-repeat;
    margin-left: 460px;
    padding-bottom: 91px;
"> 
    </div>
  </head>
 <body bgcolor="lightgray" >

        
       <form action="logincheck" method="post" style="
    margin-left: 300px;
    margin-right: 300px;
">
            <font color="red"></font>
            <div style="text-align: center;">
            <font color="red"><h2 style="
    font-size: -webkit-xxx-large;
    margin-top: 50px;
    color: darkred;
    margin-bottom: 40px;
        font-family: fangsong;
    "><u>login user</u></h2></font>
            <div style="
    border: black;
    border-style: outset;
    padding-top: 38px;
    padding-bottom: 10px;
">
                <font color="red"><b>USERNAME :</b></font>  <input type="text" name="uname">  
            <br>
            <br>
            <font color="red"><b>PASSWORD :</b></font>  <input type="password" name="pass">
            <br>
            <br><input type="submit" value="SUBMIT" align="center">
            

            </div>
            </form>
        <br>
        <br>
        <br>
        
        <div style="text-align: center;">
            <font color="red">
            <a href="forgot.jsp">FORGOT PASSWORD </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </font>      
        </div>
        


</body>
</html>