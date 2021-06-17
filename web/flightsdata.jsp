<%-- 
    Document   : flightsdata
    Created on : 19 Oct, 2020, 4:12:45 PM
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
<html style="background: bisque;text-align: -webkit-center;">
    <head>
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
          <div class="w3-top"> 
    <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="addflight.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ADD FLIGHTS</a>
    <a href="retrieve.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">USER DATA
    <a href="flightsdata.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">FLIGHT DETAILS</a>
    
   </div>
</div>
    </head>
    
<body>

<h1 style="
    margin-top: 70px;
    "><u>Flights Data</u></h1>
<table border="1"  style="
    margin-top: 125px;
">
<tr>
<td>Flight No</td>
<td>Flight Name</td>
<td>Source</td>
<td>Destination</td>
<td>Time</td>
<td>Airport Name</td>
<td>Ticket Price</td>
<td>Action</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from flight";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("fl_no") %></td>
<td><%=resultSet.getString("fl_name") %></td>
<td><%=resultSet.getString("src") %></td>
<td><%=resultSet.getString("dest") %></td>
<td><%=resultSet.getString("time") %></td>
<td><%=resultSet.getString("airport_name") %></td>
<td><%=resultSet.getString("ticket_price") %></td>
<td><a href="delflight.jsp?fl_no=<%=resultSet.getString("fl_no") %>"><button type="button" class="delete">Delete</button></a></td>

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