<%@ page import="com.connection.*"%>
<%@ page import="com.services.*"%>
<%@ page import="java.sql.*"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<html>
	<head>
	</head>
	<body>
<%
	String category = request.getParameter("category");
	DBconnection dbc = new DBconnection();
	Connection con = dbc.getConnection();
	CategoryService cs = new CategoryServicesImpl();
	cs.deleteCategory(con, category);
	
	dbc.closeCon(con);
	response.sendRedirect("category.jsp");
%>
</body>
</html>