<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Log In</title>
     <link rel="stylesheet" href="login.css">
</head>
<body>
  <center> 
 <div> 
<form action="LoginController" method="post">
  <form action = "MySQLConnect">
                    <h2>Welcome To Aurora</h2>
                    <h2>Cat Management System</h2><br>
                    
                    <input type = "text" placeholder = "Username" name = "login"><br>
                    <input type = "password" placeholder = "Password" name = "password"><br><br>
                     
                    <input type = "submit" value = "Login">
 <input type = "reset" value = "Clear">
 <tr>

<td colspan="3" align="center"><br><font face="Arial, Helvetica, sans-serif" size="2"><a href="signout.jsp">Sign Up</a></font></td>

</tr>
</form>
</div>
</center>
</body>
</html>