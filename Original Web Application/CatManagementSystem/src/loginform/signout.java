package loginform;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class signout
 */
@WebServlet("/signout")
public class signout extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		

		// get the inputs from HTML form  

        String login = request.getParameter("login");  

        String password = request.getParameter("password");

       
        signin sign = new signin();
        sign.setLogin(login);  

        sign.setPassword(password);
	
      
        //if id exists update existing student record

	   if(sign.storeData() == true){

	          // store the studentBean object inside session

	          HttpSession session = request.getSession();

	          response.sendRedirect("loggin.jsp");  

		     

	         }

	          else{

	        	  response.sendRedirect("register.jsp?error=database");  

			    

	          }}          








	      

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response); 

	}

}
