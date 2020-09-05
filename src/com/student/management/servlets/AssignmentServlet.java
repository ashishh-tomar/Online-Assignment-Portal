package com.student.management.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.descriptor.web.MultipartDef;

import com.student.management.dao.AssignmentDao;
import com.student.management.entities.Assignment;
import com.student.management.helper.ConnectionProvider;

/**
 * Servlet implementation class AssignmentServlet
 */
@WebServlet("/AssignmentServlet")

public class AssignmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String title=request.getParameter("title");
		String date=request.getParameter("date");
		String content=request.getParameter("content");
		
		Assignment a=new Assignment(title,content,date);
		AssignmentDao dao=new AssignmentDao(ConnectionProvider.getConnection());
		
		boolean flag=dao.UpdateAssignment(a);
		if(flag==true)
		{
			RequestDispatcher r=request.getRequestDispatcher("admin.jsp");
			r.include(request, response);
			response.getWriter().println("Assinment created");
			
			
		}
		else
		{
			RequestDispatcher r=request.getRequestDispatcher("admin.jsp");
			r.include(request, response);
			response.getWriter().println("Assinment not created");
		}
		
		
		
		
		
		
	
		
	}

}
