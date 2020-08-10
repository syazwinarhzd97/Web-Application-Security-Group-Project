<%@page import="java.sql.*,java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link type="text/css" rel="stylesheet" href="login.css">

</head>
<body>
<center>

<font face="arial" size="2">

<br>

<form method="post" action="registerCat">

<input type="hidden" name="id" value="<%=request.getParameter("id")%>">

<table width="300" cellspacing="1" cellpadding="1" border="0" align="center">

<tr>

<td colspan="3" align="center"><font face="Arial, Helvetica, sans-serif" size="2"><b>Health Record</b></font></td>

</tr>

<tr>

<td colspan="3">&nbsp;</td>

</tr>

<% 

           String sql = "";

           String id = request.getParameter("id");

           Class.forName("com.mysql.jdbc.Driver");

           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcat","root","Beruang1301#");

           sql="SELECT * FROM hcats WHERE recordID = ?";

           PreparedStatement statement = con.prepareStatement(sql);

           statement.setString(1, id);

           ResultSet resultSet = statement.executeQuery();

           

           while(resultSet.next()){

%>

<tr>

<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">CatID</font></td>

<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="catID" size="30" value="<%=resultSet.getString("catID")%>"></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Weight</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="weight" size="15" value="<%=resultSet.getString("weight")%>"></font></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Dewormed</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="deworm" size="15" value="<%=resultSet.getString("deworm")%>"></font></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Vaccinated</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="vaccine" size="15" value="<%=resultSet.getString("vaccine")%>"></font></td>

</tr>
<tr>

<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">Breed</font></td>

<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="breed" size="30" value="<%=resultSet.getString("breed")%>"></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Pregnancy</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="preg" size="15" value="<%=resultSet.getString("preg")%>"></font></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Neutered</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="neu" size="15" value="<%=resultSet.getString("neu")%>"></font></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Health Condition</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="healths" size="15" value="<%=resultSet.getString("healths")%>"></font></td>

</tr>
<tr>

<td colspan="3">&nbsp;</td>

</tr>

<tr>

<td colspan="3" align="center"><input type="submit" value="Update"></td>

</tr>


<tr>

<td colspan="3" align="center"><br><br><a href="mainn.jsp">Home</a></font></td>

</tr>

<% } %>

</table>

<br>

</form>

</center>

</font>
</body>
</html>

<% 	 

           
        // close the statement and database connection

           statement.close();

           con.close();

       
    

 %>
