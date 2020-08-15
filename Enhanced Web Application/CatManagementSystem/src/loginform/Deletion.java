package loginform;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*; 

import javax.servlet.*;

import javax.servlet.annotation.*;

import javax.servlet.http.*;


/**
 * Servlet implementation class Deletion
 */
@WebServlet("/Deletion")
public class Deletion extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  // if user is a valid user

  


      // get the inputs from HTML form  

      int id = Integer.parseInt(request.getParameter("id"));  



	

	   //instantiate studentBean class

       Cat deletebean = new Cat();

    

        //delete value from database

        if(deletebean.deleteData(id) == true){

          RequestDispatcher dispatch = request.getRequestDispatcher("main.jsp");  

          dispatch.forward(request, response);

        }

        else{

	      RequestDispatcher dispatch = request.getRequestDispatcher("main.jsp?error=database");  

	      dispatch.forward(request, response);   
        }}
       

    

  

public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

doPost(request, response);

}

}