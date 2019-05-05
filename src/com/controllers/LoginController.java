package com.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.connection.DBconnection;
import com.mysql.cj.protocol.Resultset;
import com.services.UserServices;
import com.services.UserServicesImpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		
		DBconnection dbc = new DBconnection();
		ResultSet rs;
		HttpSession hs = request.getSession();
		Connection con;
		try {
			
			con = dbc.getConnection();
		
			
			UserServices us = new UserServicesImpl();
			rs = us.selectUser(con, user.getEmail());
			
			//System.out.println();
			while(rs.next()) {
				hs.setAttribute("userName", rs.getString("name"));
				hs.setAttribute("userEmail", rs.getString("email"));
			}
			
			System.out.println(hs.getAttribute("userName"));
			System.out.println(hs.getAttribute("userEmail"));
			dbc.closeCon(con);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//RequestDispatcher rd = request.getRequestDispatcher("admin/home.jsp");
		//rd.forward(request, response);
		
		response.sendRedirect("admin/home.jsp");
	}

}
