<%@page import="java.sql.*,java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="login.css">
</head>
<body>
<center>

<font face="arial" size="2">

<br>

<table width="300" cellspacing="1" cellpadding="1" border="0" align="center">

<tr>

<td colspan="3" align="center"><font face="Arial, Helvetica, sans-serif" size="2"><b>Health Record</b></font></td>

</tr>

<tr>

<td colspan="3">&nbsp;</td>

</tr>

<% 

           String sql = "";

           int id = Integer.parseInt(request.getParameter("id"));

           Class.forName("com.mysql.jdbc.Driver");

           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcat","root","Beruang1301#");
           sql="SELECT * FROM hcats WHERE recordID = ?";

           PreparedStatement statement = con.prepareStatement(sql);

           statement.setInt(1, id);

           ResultSet resultSet = statement.executeQuery();

           

           while(resultSet.next()){

%>

<tr>

<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">Cat ID</font></td>

<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("catID")%></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Weight(kg)</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("weight")%></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Dewormed</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("deworm")%></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Vaccinated</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("vaccine")%></font></td>

</tr>
<tr>

<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">Breed</font></td>

<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("breed")%></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Pregnancy</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("preg")%></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Neutered</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("neu")%></font></td>

</tr>

<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Health Condition</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("healths")%></font></td>

</tr>


<tr>

<td colspan="3" align="center"><br><br><a href="mainn.jsp">Home</a>&nbsp;&nbsp;&nbsp;<a href="updates.jsp?id=<%= id %>">Update</a>&nbsp;&nbsp;&nbsp;<a href="Deletions?id=<%= id %>">Delete</a></font></td>

</tr>
<% } %>

</table>

<br>



</center>

</font>
</body>
</html>