<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Logout</title>

</head>

<body>
<center><p style="color:dark grey">You have been successfully logout!</p></center>

<%

getServletContext().getRequestDispatcher("/loggin.jsp").include(request, 
response);

%>

</body>

</html>