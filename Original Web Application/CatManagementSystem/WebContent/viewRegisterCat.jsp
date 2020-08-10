<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="cat" class="loginform.Healthc" scope="session" />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cat Registration</title>
  <link rel="stylesheet" href="login.css">
</head>
<body>
<br>

<br>

<table width="400" cellspacing="1" cellpadding="1" border="0" align="center">

<tr>

<td colspan="3" align="center"><font face="Arial, Helvetica, sans-serif" size="2"><b>Cat Registration</b></font></td>

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

<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">Cat ID</font></td>

<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="cat" property="catID" /></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Breed</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="cat" property="weight" /></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Pregnancy</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="cat" property="deworm" /></font></td>

</tr>
<tr>

<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">Vaccinated</font></td>

<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="cat" property="vaccine" /></font></td>

</tr>



<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Breed</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="cat" property="breed" /></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Pregnancy</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="cat" property="preg" /></font></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Breed</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="cat" property="neu" /></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Pregnancy</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><jsp:getProperty name="cat" property="healths" /></font></td>

</tr>
<tr>

<td colspan="3" align="center"><br><font face="Arial, Helvetica, sans-serif" size="2"><a href="mainn.jsp">Main</a></font></td>

</tr>

</table>
</body>
</html>
