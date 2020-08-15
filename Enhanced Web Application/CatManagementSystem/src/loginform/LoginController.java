
package loginform;

import java.sql.*;
import java.io.IOException;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.*;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
        String login = request.getParameter("login");
        String password = request.getParameter("password");
       
    	

        try {
        	 
        	MessageDigest md = MessageDigest.getInstance("SHA-256");
	          md.update(password.getBytes());
	          BigInteger Hash = new BigInteger(1 , md.digest());
	          String HashWord = Hash.toString(16);

			     
            Class.forName("com.mysql.jdbc.Driver");
// loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/firstdb", "root", "Beruang1301#"); // gets a new connection

            PreparedStatement ps = c.prepareStatement("select login,password from users where login=? and password=?");
            ps.setString(1, login);
            ps.setString(2, HashWord);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	
                response.sendRedirect("mains.jsp");
                return;
            }
            response.sendRedirect("error.jsp");  
            if(login.equals(login) && HashWord.equals(HashWord)){
            rs.close();

            ps.close(); 
            
            }       
        } catch (ClassNotFoundException | SQLException |NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

}