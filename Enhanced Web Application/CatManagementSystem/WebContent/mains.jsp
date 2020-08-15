<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
   <link rel="stylesheet" href="login.css">
</head>
<body>
<center>
<div class = "box">
                <form action="main.jsp" method="post">
                 <table>
                        <center><h2><u>Menu</u></h2></center>

                            <tr>
                                <td> <input type="submit" name="register" value="Cat Registration"></td>
                            </tr>
                        </table>
                    </form>

                    <form action="mainn.jsp" method="post">
                        <table>
                            <tr>
                                <td> <input type="submit" name="health" value="Cat Health Record"></td>
                            </tr>
 

                        </table>
                    </form>
                      <form action="home.jsp" method="post">
                        <table>
                            <tr>
                                <td> <input type="submit" name="adoption" value="Adoption"></td>
                            </tr>
 

                        </table>
                    </form>

    </div>
    <a href="logout.jsp">logout</a>
    </center>
    
</body>
</html>