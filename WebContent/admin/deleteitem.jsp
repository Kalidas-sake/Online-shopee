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
	String item = request.getParameter("item");
	DBconnection dbc = new DBconnection();
	Connection con = dbc.getConnection();
	ItemServices iss = new ItemServicesImpl();
	iss.deleteItem(con, item);
	
	dbc.closeCon(con);
	response.sendRedirect("item.jsp");
%>
</body>
</html>