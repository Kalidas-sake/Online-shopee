<%@ page import="com.connection.*" %>
<%@ page import="com.services.*" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="fileincludes.jsp"></jsp:include>
<title>Item | Admin Panel :: Online Shopee</title>

<style type="text/css">
.myfooter{
	margin-top: 40px;
}

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
					<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
					<li class="breadcrumb-item"><a href="item.jsp">Item</a> <i
						class="fa fa-angle-right"></i></li>
				</ol>



				<!-- Add items form starts here-->
				<div class="container">
					<div class="categoryForm jumbotron">
					<h3 class="text-center">Add Category</h3>
						<form action="/Online_shopee/ItemController" method="post">
							<div class="form-group row">
								<label for="inputItemName" class="col-sm-2 col-form-label">Name</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputItemName" name="inputItemName"
										placeholder="Enter item name">
								</div>
							</div>
							  <div class="form-group row">
								<label for="inputDesc" class="col-sm-2 col-form-label">Description</label>
								<div class="col-sm-10">
									<textarea type="textarea" class="form-control" name="inputDesc"
										placeholder="Describe"></textarea>
								</div>
							</div>

							<div class="form-group row">
								<label for="inputPrice" class="col-sm-2 col-form-label" pattern="[0-9]">Price per unit</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="inputPrice"
										placeholder="Price">
								</div>
							</div>

							<div class="form-group row">
								<label for="inputCategory" class="col-sm-2 col-form-label">Select Category</label> 
								<div class="col-sm-10">
								<select id="inputCategory"
									class="form-control">
									<option selected>Choose...</option>
								<%
							DBconnection dbc = new DBconnection();
					        Connection con = dbc.getConnection();
							CategoryService cs = new CategoryServicesImpl();
							
							ResultSet rs = cs.getCategories(con);
							while(rs.next()){
								out.print("<option>"+rs.getString("c_name")+"</option>");
							}
							dbc.closeCon(con);
							%>
								
								</select>
								</div>
							</div>
							
							
							<div class="form-group row">
							<div class="col-sm-4"></div>
							<input class="btn btn-primary col-sm-4" type="submit" value="SAVE">
							<div class="col-sm-3"></div>
							</div>

						</form>
					</div>
				</div>
				<!-- //Add items form ends here-->	

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