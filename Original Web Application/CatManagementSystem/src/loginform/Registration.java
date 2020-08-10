package loginform;
import java.io.*; 
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		

		// get the inputs from HTML form  

        String catID = request.getParameter("catID");  

        String name = request.getParameter("name");

        String gender = request.getParameter("gender");
        String color = request.getParameter("color");
        
        Cat cats = new Cat();
        cats.setCatID(catID);  

        cats.setName(name);

        cats.setGender(gender);

        cats.setColor(color);
        //if id exists update existing student record

	       if(request.getParameter("id") != null && !request.getParameter("id").isEmpty()){

	    	   int id = Integer.parseInt(request.getParameter("id"));

	    	   if(cats.updateData(id) == true){

			        // store the studentBean object inside session

			        HttpSession session = request.getSession();

			        session.setAttribute("cats",cats);   

			        response.sendRedirect("view.jsp?id="+id);  

				   

			       }

			       else{

			    	   response.sendRedirect("update.jsp?error=database&id="+id);  

					     

			       }

	       }

	       //if id is null for new record insertion

	       else{

	    	   

	    	   if(cats.storeData() == true){

			          // store the studentBean object inside session

			          HttpSession session = request.getSession();

			          session.setAttribute("cats",cats);   

			          response.sendRedirect("viewregistration.jsp");  

				     

			         }

			          else{

			        	  response.sendRedirect("register.jsp?error=database");  

					    

			          }





	       }

	}

	

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response); 

	}

}
