
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cat Health</title>
   <link rel="stylesheet" href="login.css">
<link type="text/css" rel="stylesheet" href="login.css">
</head>
<body>
<br>
<form method="post" action="registerCat">

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

<td><font face="Arial, Helvetica, sans-serif" size="2">Weight</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="text" name="weight" size="30"></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Dewormed</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="text" name="deworm" size="30"></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Vaccinated</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="text" name="vaccine" size="30"></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Select Breed</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td>

<select name="breed">

<option value="Persian">Persian</option>

<option value="BSH">BSH</option>
<option value="Munckin">Munchkin</option>

<option value="Sphynx">Sphynx</option>
<option value="Kampung">Kampung</option>
<option value="Bengal">Bengal</option>
<option value="Ragdoll">Ragdoll</option>

<option value="Siamese">Siamese</option>
<option value="Bombay">Bombay</option>




</select>

</td>

</tr>

 <tr>
 <td><font face="Arial, Helvetica, sans-serif" size="2">Pregnancy</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>
                        <td>
 
                        </td></tr>
                    <tr>   
                        <td>
                            <input type="radio" name="preg" value="Yes">Yes
                        </td>
                        <td>
                            <input type="radio" name="preg" value="No">No
                        </td>
                    </tr>
<tr>
          <td><font face="Arial, Helvetica, sans-serif" size="2">Neutered/Sprayed</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>         
     
                        <td>
 
                        </td></tr>
                    <tr>   
                        <td>
                            <input type="radio" name="neu" value="Yes">Yes
                        </td>
                        <td>
                            <input type="radio" name="neu" value="No">No
                        </td>
                    </tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Health Condition</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><input type="text" name="healths" size="30"></td>

</tr>
<tr>

<td colspan="3" align="center"><input type="submit" value="Register"></td>

</tr>

<tr>

<td colspan="3" align="center"><br><font face="Arial, Helvetica, sans-serif" size="2"><a href="mainn.jsp">Home</a></font></td>

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
