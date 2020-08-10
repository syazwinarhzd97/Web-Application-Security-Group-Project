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

<form method="post" action="Registration">

<input type="hidden" name="id" value="<%=request.getParameter("id")%>">

<table width="300" cellspacing="1" cellpadding="1" border="0" align="center">

<tr>

<td colspan="3" align="center"><font face="Arial, Helvetica, sans-serif" size="2"><b>Cat Information</b></font></td>

</tr>

<tr>

<td colspan="3">&nbsp;</td>

</tr>

<% 

           String sql = "";

           String id = request.getParameter("id");

           Class.forName("com.mysql.jdbc.Driver");

           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cat","root","Beruang1301#");

           sql="SELECT * FROM newcat WHERE recordID = ?";

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

<td><font face="Arial, Helvetica, sans-serif" size="2">Name</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="name" size="15" value="<%=resultSet.getString("name")%>"></font></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Gender</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="gender" size="15" value="<%=resultSet.getString("gender")%>"></font></td>

</tr>
<tr>

<td><font face="Arial, Helvetica, sans-serif" size="2">Color</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>

<td><font face="Arial, Helvetica, sans-serif" size="2"><input type="text" name="color" size="15" value="<%=resultSet.getString("color")%>"></font></td>

</tr>
<tr>

<td colspan="3">&nbsp;</td>

</tr>

<tr>

<td colspan="3" align="center"><input type="submit" value="Update"></td>

</tr>

<tr>

<td colspan="3" align="center"><br><br><a href="main.jsp">Main</a></font></td>

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
