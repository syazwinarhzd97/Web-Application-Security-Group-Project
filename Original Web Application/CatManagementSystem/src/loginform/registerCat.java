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

import loginform.Healthc;

/**
 * Servlet implementation class registerCat
 */
@WebServlet("/registerCat")
public class registerCat extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		

		// get the inputs from HTML form  

        String catID = request.getParameter("catID");  

        
       Double weight= Double.parseDouble(request.getParameter("weight"));
        String deworm = request.getParameter("deworm");
String vaccine = request.getParameter("vaccine");  

        
        String breed = request.getParameter("breed");
        String preg = request.getParameter("preg");
        String neu = request.getParameter("neu");
        String healths = request.getParameter("healths");
        
        Healthc cat = new Healthc();
        cat.setCatID(catID);  

       

        cat.setWeight(weight);

        cat.setDeworm(deworm);
        cat.setVaccine(vaccine);  

        

        cat.setBreed(breed);

        cat.setPreg(preg);
        cat.setNeu(neu);

        cat.setHealths(healths);
        //if id exists update existing student record

	       if(request.getParameter("id") != null && !request.getParameter("id").isEmpty()){

	    	   int id = Integer.parseInt(request.getParameter("id"));

	    	   if(cat.updateData(id) == true){

			        // store the studentBean object inside session

			        HttpSession session = request.getSession();

			        session.setAttribute("cat",cat);   

			        response.sendRedirect("views.jsp?id="+id);  

				   

			       }

			       else{

			    	   response.sendRedirect("updates.jsp?error=database&id="+id);  

					     

			       }

	       }

	       //if id is null for new record insertion

	       else{

	    	   

	    	   if(cat.storeData() == true){

			          // store the studentBean object inside session

			          HttpSession session = request.getSession();

			          session.setAttribute("cat",cat);   

			          response.sendRedirect("viewRegisterCat.jsp");  

				     

			         }

			          else{

			        	  response.sendRedirect("Health.jsp?error=database");  

					    

			          }





	       }

	}

	

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response); 

	}

}
