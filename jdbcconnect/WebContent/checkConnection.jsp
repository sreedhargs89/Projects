<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String serverip = request.getParameter("serverip");
String username=request.getParameter("uname");
String dbname = request.getParameter("dbname");
String password = request.getParameter("password");


System.out.println("-------- MySQL JDBC Connection Testing ------------");
 
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
	System.out.println("Where is your MySQL JDBC Driver?");
	e.printStackTrace();
	return;
}

System.out.println("MySQL JDBC Driver Registered!");
Connection connection = null;

try {
	connection = (Connection) DriverManager
	.getConnection("jdbc:mysql://"+serverip+":3306/"+dbname,username, password);

} catch (SQLException e) {
	System.out.println("Connection Failed! Check output console");
	e.printStackTrace();
}
String message;
if (connection != null) {
	message= "<h2>Hi "+username+".. You made it, take control your database "+dbname+" now!</h2><br>";
	message += "Data entered : <br>";
	message += "Server Ip Address: "+ serverip+"<br>";
	message += "UserName: "+ username+"<br>";
	message += "DbName: "+ dbname+"<br>";
	System.out.println("Hi "+username+".. You made it, take control your database "+dbname+" now!");
} else {
	message="<h2>Failed to make connection!</h2><br>";
	message += "Check your database credentials...<br>";
	message += "Data entered : <br>";
	message += "Server Ip Address: "+ serverip+"<br>";
	message += "UserName: "+ username+"<br>";
	message += "DbName: "+ dbname+"<br>";
	
	out.println("Failed to make connection!");
	out.println(message);
}
session.setAttribute("message", message);

response.sendRedirect("response.jsp");

/* RequestDispatcher view = request.getRequestDispatcher("/resonse.jsp");
view.forward(request, response);
 */

%> 

