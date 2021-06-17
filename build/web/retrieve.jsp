<%-- 
    Document   : retrieve
    Created on : 11 Oct, 2020, 7:52:17 PM
    Author     : Devil
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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
<!DOCTYPE html>
<html style="background: powderblue;text-align: -webkit-center;">
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

<h1 style="
    margin-top: 70px;
">Retrieve data from database in jsp</h1>
<table border="1"  style="
    margin-top: 125px;
">
<tr>
<td>first name</td>
<td>last name</td>
<td>Username</td>
<td>Password</td>
<td>Email</td>
<td>Edit</td>
<td>delete</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("email") %></td>
<td><a href="userupdate.jsp?username=<%=resultSet.getString("username")%>"><button type="button" class="edit">Edit</button></a></td>
<td><a href="deldata.jsp?username=<%=resultSet.getString("username") %>"><button type="button" class="delete">Delete</button></a></td>

</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>