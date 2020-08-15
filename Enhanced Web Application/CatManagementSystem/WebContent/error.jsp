<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login Error</title>

</head>

<body>

<center><p style="color:red">Invalid login, please try again!</p></center>

<%

getServletContext().getRequestDispatcher("/loggin.jsp").include(request, 
response);

%>

</body>

</html>