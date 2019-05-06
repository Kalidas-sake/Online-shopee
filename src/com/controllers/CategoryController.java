package com.controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DBconnection;
import com.services.CategoryService;
import com.services.CategoryServicesImpl;

/**
 * Servlet implementation class CategoryController
 */
@WebServlet("/CategoryController")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("inputCategory");
		
		DBconnection dbc = new DBconnection();
		try {
			Connection con = dbc.getConnection();
			CategoryService cs = new CategoryServicesImpl();
			
			if(cs.createCategory(con, category)) {
				
				response.sendRedirect("admin/errorpage.html");
			}
			else {
				response.sendRedirect("admin/category.jsp");
			}
				
			//RequestDispatcher rd = request.getRequestDispatcher("admin/category.jsp");
			//rd.forward(request, response);
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
