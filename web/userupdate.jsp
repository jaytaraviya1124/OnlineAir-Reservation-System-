<%-- 
    Document   : userupdate
    Created on : 20 Oct, 2020, 5:42:45 PM
    Author     : Devil
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String username = request.getParameter("username");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "airline";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user where username=\""+username+"\"";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html style="
    background: cadetblue;
">
    <head>
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
          <div class="w3-top"> 
    <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="addflight.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ADMIN</a>
    <a href="retrieve.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">USER DATA</a>
    <a href="flightsdata.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">FLIGHTDETAILS</a>
    
   </div>
</div>
    </head>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="userprocess">

<br>
First name:<br>
<input type="text" name="firstname" value="<%=resultSet.getString("firstname") %>">
<br>
Last name:<br>
<input type="text" name="lastname" value="<%=resultSet.getString("lastname") %>">
<br>
User Name:<br>
<input type="text" name="uname" value="<%=resultSet.getString("username") %>">
<br>
Password:<br>
<input type="text" name="password" value="<%=resultSet.getString("password") %>">
<br>
Email Id:<br>
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
