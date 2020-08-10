<%@ page import="loginform.LoginController,java.sql.*" %>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Cat Registration System</title>
 <link type="text/css" rel="stylesheet" href="login.css">
</head>

<body>

<center>

<font face="arial" size="2">

<br>

<strong>List Of Cats</strong><br>


<table cellspacing="1" cellpadding="1" border="0" width="300" bgcolor="#F4F6F7">

<tr bgcolor="#EEEEEE">

<td align="center">No</td><td align="center">catID</td><td align="center">Name</td><td align="center">Gender</td><td align="center">Color</td>

</tr>

<% 

           String sql = "";

           int count = 0;

           Class.forName("com.mysql.jdbc.Driver");

           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/catregistration","root","Beruang1301#");

           sql="SELECT  catID, name, gender, color FROM catdb";

           Statement statement = con.createStatement();                

           ResultSet resultSet = statement.executeQuery(sql);

           

           //display each selected record in the table

           while (resultSet.next()){

        	   count++;

        	   //retrieve data from the column recordID, name and matricno in the table

        	 
        	 String catID = resultSet.getString("catID");
        	 String name = resultSet.getString("name");

        	 String gender = resultSet.getString("gender");
        	 String color = resultSet.getString("color");

%>

<tr bgcolor="#FFFFFF">

<td align="center"><%= count %></td><td align="center"><%= catID %></td><td>&nbsp;&nbsp;<%= name %></td></td><td>&nbsp;&nbsp;<%= gender %></td></td><td>&nbsp;&nbsp;<%= color %></td>
</tr>

<% 	 

           }

        // close the statement and database connection

           statement.close();

           con.close();

        


 %>

 </table>

 <br>

<a href="register.jsp">Register Here</a>&nbsp;&nbsp;&nbsp;<a href="mains.jsp">Main</a>&nbsp;&nbsp;&nbsp;<a href="logout.jsp">logout</a>

</center>

</font>

</body>

</html>
	
	
