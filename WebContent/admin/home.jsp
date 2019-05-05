<%@ page import="com.connection.*" %>
<%@ page import="com.services.*" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home | Admin Panel :: Online Shopee</title>
<jsp:include page="fileincludes.jsp"></jsp:include>
</head> 
<body>
    <%
    session = request.getSession(false);
    if (session.getAttribute("userName") == null){
    	response.sendRedirect("index.jsp");
    }
    %>
   <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	   <div class="mother-grid-inner">
             <jsp:include page="mainheader.jsp"></jsp:include>
		<ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Home</a> <i class="fa fa-angle-right"></i></li>
            </ol>
<!--four-grids here-->
		<div class="four-grids">
					<div class="col-md-3 four-grid">
						<div class="four-agileits">
							<div class="icon">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
							</div>
							<div class="four-text">
								<h3>Categories</h3>
								
								<tbody>
							<%
							DBconnection dbc = new DBconnection();
					        Connection con = dbc.getConnection();
							CategoryService cs = new CategoryServicesImpl();
							ResultSet rs = cs.getCategories(con);
							int i=0;
							while(rs.next()){
								i++;
							}
							out.print("<h4> "+i+"  </h4>");
							dbc.closeCon(con);
							
							%>
								
								
								
							</div>
							
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-agileinfo">
							<div class="icon">
								<i class="glyphicon glyphicon-folder-open " aria-hidden="true"></i>
							</div>
							<div class="four-text">
								<h3>Items</h3>
								<h4>15</h4>

							</div>
							
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-w3ls">
							<div class="icon">
								<i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
							</div>
							<div class="four-text">
								<h3>Orders</h3>
								<h4>12</h4>
								
							</div>
							
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-wthree">
							<div class="icon">
								<i class="glyphicon glyphicon-briefcase" aria-hidden="true"></i>
							</div>
							<div class="four-text">
								<h3>Delivery</h3>
								<h4>14,430</h4>
								
							</div>
							
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
<!--//four-grids here-->


	


<!--copy rights start here-->
<div class="copyrights">
	 <p>Online Shopee <small>&copy 2019</small> </p>
</div>	
<!--COPY rights end here-->
</div>
</div>
  <!--//content-inner-->
  </div>
<jsp:include page="sidenavbar.jsp"></jsp:include>
</body>
</html>