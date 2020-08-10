<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="adopts" class="loginform.Adopter" scope="session" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adoption</title>
   <link rel="stylesheet" href="login.css">
</head>
<body>
<br>
<br>

<table width="400" cellspacing="1" cellpadding="1" border="0" align="center">

<tr>

<td colspan="3" align="center"><font face="Arial, Helvetica, sans-serif" size="2"><b>Adopter Registration</b></font></td>

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

<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">Name</font></td>

<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="adopts" property="adopt" /></font></td>

</tr>



<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">IC Number</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="adopts" property="IC" /></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Gender</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="adopts" property="gender" /></font></td>

</tr>
<tr>

<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">Address</font></td>

<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="adopts" property="address" /></font></td>

</tr>



<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Phone Number</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="adopts" property="phone" /></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Date Adopt</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="adopts" property="date" /></font></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Cat ID</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="adopts" property="catID" /></font></td>

</tr>
<center><p style="color:black">Successfully Registered!</p></center>
<tr>

<td colspan="3" align="center"><br><font face="Arial, Helvetica, sans-serif" size="2"><a href="home.jsp">Home</a></font></td>

</tr>

</table>
</body>
</html>
