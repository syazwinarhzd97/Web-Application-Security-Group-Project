
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cat Registration</title>
<link type="text/css" rel="stylesheet" href="login.css">
</head>
<body>
<br>

<form method="post" action="Registration">

<table width="400" cellspacing="1" cellpadding="1" border="0" align="center">

<tr>

<td colspan="3" align="center"><font face="Arial" size="2"><b>New Cat Registration</b></font></td>

</tr>

<tr>

<td colspan="3">&nbsp;</td>

</tr>

<tr bgcolor="#F4F6F7" height="25">

<td colspan="3" align="center"><font face="Arial, Helvetica, sans-serif" size="2">Personal Information</font></td>

</tr>

<tr>

<td colspan="3">&nbsp;</td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Cat ID</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="text" name="catID" size="30"></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Name</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="text" name="name" size="15"></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Select Gender</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td>

<select name="gender">

<option value="Male">Male</option>

<option value="Female">Female</option>



</select>

</td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Color</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="text" name="color" size="15"></td>

</tr>
<tr>

<td colspan="3" align="center"><input type="submit" value="Register"></td>

</tr>

<tr>

<td colspan="3" align="center"><br><font face="Arial, Helvetica, sans-serif" size="2"><a href="main.jsp">Home</a></font></td>

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