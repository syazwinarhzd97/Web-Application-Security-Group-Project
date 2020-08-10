
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

<strong>Cat Health Record</strong><br>


<table cellspacing="1" cellpadding="1" border="0" width="300" bgcolor="#F4F6F7">

<tr bgcolor="#EEEEEE">

<td align="center">No</td><td align="center">catID</td><td align="center">Weight(kg)</td><td align="center">Dewormed</td><td align="center">Vaccinated</td><td align="center">Breed</td><td align="center">Pregnancy</td><td align="center">Neutered/Sprayed</td><td align="center">Health Condition</td>





</tr>

<% 

           String sql = "";

           int count = 0;

           Class.forName("com.mysql.jdbc.Driver");

           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcat","root","Beruang1301#");

           sql="SELECT  recordID, catID, weight, deworm, vaccine, breed, preg, neu, healths FROM hcats";

           Statement statement = con.createStatement();                

           ResultSet resultSet = statement.executeQuery(sql);

           

           //display each selected record in the table

           while (resultSet.next()){

        	   count++;

        	   //retrieve data from the column recordID, name and matricno in the table
 String id = resultSet.getString("recordID");
        	
        	 String catID = resultSet.getString("catID");
        	
        	 Double weight = resultSet.getDouble("weight");
          	

        	 String deworm = resultSet.getString("deworm");
        	 String vaccine = resultSet.getString("vaccine");
        	 String breed = resultSet.getString("breed");
        	 String preg = resultSet.getString("preg");
        	

        	 String neu = resultSet.getString("neu");
        	 String healths = resultSet.getString("healths");


%>

<tr bgcolor="#FFFFFF">

<td align="center"><%= count %></td><td align="center"><a href="views.jsp?id=<%=id%>"><%= catID %></a></td><td>&nbsp;&nbsp;<%= weight %></td><td>&nbsp;&nbsp;<%= deworm %></td><td>&nbsp;&nbsp;<%= vaccine %></td><td>&nbsp;&nbsp;<%= breed %></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= preg %></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= neu %></td><td>&nbsp;&nbsp;<%= healths %></td>
</tr>

<% 	 

           }

        // close the statement and database connection

           statement.close();

           con.close();

        

    

 %>

 </table>

 <br>

<a href="mains.jsp">Main</a>&nbsp;&nbsp;&nbsp;<a href="logout.jsp">Logout</a>

</center>

</font>

</body>

</html>
	
	
