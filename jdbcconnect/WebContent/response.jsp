<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<html>
<head>
<title>Successfully Login by JSP</title>
</head>

<body>

<%
String message = session.getAttribute("message").toString();
out.print(message);  
%>

</body>
</html>