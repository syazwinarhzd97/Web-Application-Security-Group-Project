
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Adoption</title>
 <link type="text/css" rel="stylesheet" href="login.css">
</head>

<body>

<center>

<font face="arial" size="2">

<br>

<strong>Adopter List</strong><br>


<table cellspacing="1" cellpadding="1" border="0" width="300" bgcolor="#F4F6F7">

<tr bgcolor="#EEEEEE">

<td align="center">No</td><td align="center">Name</td><td align="center">IC Number</td><td align="center">Gender</td><td align="center">Address</td><td align="center">Phone Number</td><td align="center">Date Adopt</td><td align="center">Cat ID</td>





</tr>

<% 

           String sql = "";

           int count = 0;

           Class.forName("com.mysql.jdbc.Driver");

           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adoption","root","Beruang1301#");

           sql="SELECT adopt, ic, gender, address, phone, date, catID FROM adoptions";

           Statement statement = con.createStatement();                

           ResultSet resultSet = statement.executeQuery(sql);

           

           //display each selected record in the table

           while (resultSet.next()){

        	   count++;

        	   //retrieve data from the column recordID, name and matricno in the table

        	
        	 String adopt = resultSet.getString("adopt");
        	 String IC = resultSet.getString("IC");
        	
          	

        	 String gender = resultSet.getString("gender");
        	 String address = resultSet.getString("address");
        	 String phone = resultSet.getString("phone");
        	 String date = resultSet.getString("date");
        	

        	 String catID = resultSet.getString("catID");
       


%>

<tr bgcolor="#FFFFFF">

<td align="center"><%= count %></td><td align="center"><%= adopt %></a></td><td>&nbsp;&nbsp;<%= IC %></td><td>&nbsp;&nbsp;<%= gender %></td><td>&nbsp;&nbsp;<%= address %></td><td>&nbsp;&nbsp;<%= phone %></td><td>&nbsp;&nbsp;<%= date %></td><td>&nbsp;&nbsp;<%= catID %></td>
</tr>

<% 	 

           }

        // close the statement and database connection

           statement.close();

           con.close();

        

    

 %>

 </table>

 <br>

<a href="registAdopt.jsp">Register Here</a>&nbsp;&nbsp;&nbsp;<a href="mains.jsp">Main</a>&nbsp;&nbsp;&nbsp;<a href="loggin.jsp">Logout</a>

</center>

</font>

</body>

</html>
	
	
