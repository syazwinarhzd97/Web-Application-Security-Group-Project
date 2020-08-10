package loginform;
import java.io.*; 
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import loginform.Adopter;

/**
/**
 * Servlet implementation class registerAdopt
 */
@WebServlet("/registerAdopt")
public class registerAdopt extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		

		// get the inputs from HTML form  

        String adopt = request.getParameter("adopt");  
        String IC= request.getParameter("IC");
String gender = request.getParameter("gender");  
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String catID = request.getParameter("catID");
    

        Adopter adopts = new Adopter();
        adopts.setAdopt(adopt);  
        adopts.setIC(IC);
        adopts.setGender(gender);
        adopts.setAddress(address);  
        adopts.setPhone(phone);
        adopts.setDate(date);
        adopts.setCatID(catID);
      

        //if id exists update existing student record

	    	   

	    	   if(adopts.storeData() == true){

			          // store the studentBean object inside session

			          HttpSession session = request.getSession();

			          session.setAttribute("adopts",adopts);   

			          response.sendRedirect("viewRegistAdopt.jsp");  

				     

			         }

			          else{

			        	  response.sendRedirect("registAdopt.jsp?error=database");  

					    

			          }





	       }

	

	

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response); 

	}

}
