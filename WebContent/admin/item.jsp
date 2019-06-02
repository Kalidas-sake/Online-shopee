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

<script type="text/javascript">
            function validate()
            {
            	//alert("in validation");
                var a = document.getElementById("inputItemName");
                var b = document.getElementById("inputPrice");
                var valid = false;
                if(a.value.length<=0 || b.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    else if(!isNaN(b)){
                            alert("Enter a number");
                    valid = false;
                    }
                    else{
                    	valid=true;
                    }
                
                return valid;
            };
        </script>

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
					<h3 class="text-center">Add Item</h3>
						<form action="/Online_shopee/ItemController" method="post"  enctype='multipart/form-data' onsubmit="return validate();">
							<div class="form-group row">
								<label for="inputItemName" class="col-sm-2 col-form-label">Name</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputItemName" name="inputItemName"
										placeholder="Enter item name" required>
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
								<label for="inputPrice" class="col-sm-2 col-form-label" >Price per unit</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="inputPrice" pattern="[0-9]{1-10}" id="inputPrice" 
										placeholder="Price" required>
								</div>
							</div>
							
							<div class="form-group row">
								<label for="inputQuant" class="col-sm-2 col-form-label" pattern="[0-9]">Quantity</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="inputQuant" id="inputQuant" 
										placeholder="Quantity">
								</div>
							</div>

							<div class="form-group row">
								<label for="inputCategory" class="col-sm-2 col-form-label">Select Category</label> 
								<div class="col-sm-10">
								<select id="inputCategory" name="inputCategory"
									class="form-control" required>
									<option value="default" selected >Choose...</option>
								<%
							DBconnection dbc = new DBconnection();
					        Connection con = dbc.getConnection();
							CategoryService cs = new CategoryServicesImpl();
							
							ResultSet rs = cs.getCategories(con);
							while(rs.next()){
								out.print("<option value="+rs.getString("c_name")+">"+rs.getString("c_name")+"</option>");
							}
							dbc.closeCon(con);
							%>
								
								</select>
								</div>
							</div>
								
								
								<div class="form-group row">
									<input type="file" class="" name="inputImage" id="inputImage" >
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

				<!-- Item list table starts here -->
				<div class="container">
				<div class="col-md-10">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Name</th>
									<th scope="col">Description</th>
									<th scope="col">Price</th>
									<th scope="col">Quantity</th>
									<th scope="col">Category</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>
							<tbody>
							<%
							DBconnection dbc1 = new DBconnection();
							Connection con1 = dbc1.getConnection();
							ItemServices iss = new ItemServicesImpl();
							
							ResultSet rs1 = iss.getAllItems(con1);
							
							int i=1;
							while(rs1.next()){
								//out.print("<a class='dropdown-item' href='#'>"+rs.getString("c_name")+"</a>");
								out.print("<tr><th scope='row'>"+ i++ +"</th>");
								out.print("<td>"+ rs1.getString("itemName")+"</td>");
								out.print("<td>"+ rs1.getString("itemDesc")+"</td>");
								out.print("<td>"+ rs1.getString("itemPrice")+"</td>");
								out.print("<td>"+ rs1.getString("quantity")+"</td>");
								out.print("<td>"+ rs1.getString("c_name")+"</td>");
								out.print("<td><a href='deleteitem.jsp?item="+rs1.getString("itemName")+"'>Delete</a></td>");
								out.print("</tr>");
							}
							dbc.closeCon(con);
							
							%>
								
								
								
							</tbody>
						</table>
					</div>
				</div>
				<!-- Item list table ends here -->	


				<!--copy rights start here-->
				<footer class="footer text-center">
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