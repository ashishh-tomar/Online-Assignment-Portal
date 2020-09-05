package com.student.management.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String person=request.getParameter("person");
		if(person.equals("student")) 
		{
			if(name.equalsIgnoreCase("student") && password.equals("student"))
				{
					RequestDispatcher r=request.getRequestDispatcher("student.jsp");
					r.forward(request, response);
				}
			else
			{
				response.sendRedirect("index.jsp");
			}
		}
		else
		{
			if(name.equals("admin") && password.equalsIgnoreCase("admin"))
			{
				RequestDispatcher r=request.getRequestDispatcher("admin.jsp");
				r.forward(request, response);
			}
			else
			{
				response.sendRedirect("index.jsp");
			}
		}
		
		
	}

}
