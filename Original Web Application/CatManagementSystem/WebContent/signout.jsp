
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link type="text/css" rel="stylesheet" href="login.css">
</head>
<body>
<br>
<form method="post" action="signout">

<table width="400" cellspacing="1" cellpadding="1" border="0" align="center">


</tr>

<tr bgcolor="#F4F6F7" height="25">

<td colspan="3" align="center"><font face="Arial, Helvetica, sans-serif" size="2">New User</font></td>

</tr>

<tr>

<td colspan="3">&nbsp;</td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Username</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="text" name="login" size="30"></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Password</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="password" name="password" size="30"></td>

</tr>

<tr>

<td colspan="3" align="center"><input type="submit" value="Sign Up"></td>

</tr>

<tr>

<td colspan="3" align="center"><br><font face="Arial, Helvetica, sans-serif" size="2"><a href="loggin.jsp">logout</a></font></td>

</tr>

</table>

</form>
<center>

<font face="Arial, Helvetica, sans-serif" size="2" color="red">

<% if(request.getParameter("error")!= null && request.getParameter("error") == "database"){ %>  

Database Error!

<% } %>  

</font>

</center>
</body>
</html>
