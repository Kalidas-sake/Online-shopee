<%@ page import="com.connection.*" %>
<%@ page import="com.services.*" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	    <% 
	    session = request.getSession(false);
	    if (session.getAttribute("userName") == null){
	    	response.sendRedirect("index.jsp");
	    }
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="fileincludes.jsp"></jsp:include>
<title>Category | Admin Panel :: Online Shopee</title>

<style type="text/css">
.categoryForm{
	border: 1px solid black;
	padding: 15px;
	margin: 40px;
	width: 60%;
	background-color: #333333;
	color: #FFFFFF;
	box-shadow: 3px 3px 5px gray;
}

.myfooter{

margin-top: 200px;
color: #0000FF;
}

</style>
</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="mother-grid-inner">
				<jsp:include page="mainheader.jsp"></jsp:include>

				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
					<li class="breadcrumb-item"><a href="category.jsp">Category</a>
						<i class="fa fa-angle-right"></i></li>
				</ol>

				<!-- Add category form starts here-->
				<div class="container">
					<div class="categoryForm jumbotron">
					<h3 class="text-center">Add Category</h3>
						<form action="/Online_shopee/CategoryController" method="post">
							<div class="form-group row">
								<label for="inputCategory" class="col-sm-2 col-form-label">Name</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputCategory" name="inputCategory"
										placeholder="Category">
								</div>
							</div>
							<!--  <div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="inputPassword3"
										placeholder="Password">
								</div>
							</div>

							<div class="form-group row">
								<label for="inputState" class="col-sm-2 col-form-label">State</label> 
								<div class="col-sm-10">
								<select id="inputState"
									class="form-control">
									<option selected>Choose...</option>
									<option>...</option>
								</select>
								</div>
							</div>-->
							
							
							<div class="form-group row">
							<div class="col-sm-4"></div>
							<input class="btn btn-primary col-sm-4" type="submit" value="SAVE">
							<div class="col-sm-3"></div>
							</div>

						</form>
					</div>
				</div>
				<!-- //Add category form ends here-->
				
				<!-- Category list table starts here -->
				<div class="container">
				<div class="col-md-10">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Category</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>
							<tbody>
							<%
							DBconnection dbc = new DBconnection();
					        Connection con = dbc.getConnection();
							CategoryService cs = new CategoryServicesImpl();
							ResultSet rs = cs.getCategories(con);
							int i=1;
							while(rs.next()){
								//out.print("<a class='dropdown-item' href='#'>"+rs.getString("c_name")+"</a>");
								out.print("<tr><th scope='row'>"+ i++ +"</th>");
								out.print("<td>"+ rs.getString("c_name")+"</td>");
								out.print("<td><a href='deleteCat.jsp?category="+rs.getString("c_name")+"'>Delete</a></td>");
								out.print("</tr>");
							}
							dbc.closeCon(con);
							
							%>
								
								
								
							</tbody>
						</table>
					</div>
				</div>
				<!-- Category list table ends here -->

				<!--copy rights start here-->
				<footer class="footer text-center  ">
				<div class="">
					<h1>OnlineShopee.Com</h1>
					<h6>
						All rights reserved <small>Copyright &copy 2019 </small>
					</h6>
				</div>
				</footer>
				<!--COPY rights end here-->
			</div>
		</div>
	</div>


	<jsp:include page="sidenavbar.jsp"></jsp:include>

</body>
</html>