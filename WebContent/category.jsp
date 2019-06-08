<%@ page import="com.connection.*" %>
<%@ page import="com.services.*" %>
<%@ page import="java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop by category | MyCakeSelection</title>

<style>
.cathead{
	margin-top: 75px;

}

</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<% String cat = request.getParameter("cat"); %>

	<div class="text-center cathead">
		<h3 class="heading2"><%=cat.toUpperCase() %></h3>
		<h2 id="myid"></h2>

	</div>



	<div class="album py-5 bg-light">
    <div class="container bgimage">

      <div class="row" id="itemscard">
        
        
        
        <%
       
        
        DBconnection dbc = new DBconnection();
        Connection con = dbc.getConnection();
        ItemServices is = new ItemServicesImpl();
		ResultSet rs = is.getCategoryItems(con, cat);
		String imagefile="";
		
		
		if(rs.next()){
		while(rs.next()){
			//out.print("<a class='dropdown-item' href='#'>"+rs.getString("c_name")+"</a>");
			imagefile="uploads/"+rs.getString("thumb");
			%>
			
			<div class="col-md-4 nopacit">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">
            
            <image height="225" width="100%" xlink:href=<%=imagefile %> /></svg>
            
            <div class="card-body">
            <h4 class="card-title"><%out.print(rs.getString("itemName")); %><small class="text-secondary extra-small">  Category: <%out.print(rs.getString("c_name")); %></small></h4>
            <h6 class="text-primary">Rate (per unit): <mark>Rs.<%out.print(rs.getString("itemPrice")); %></mark></h6>
              <p class="card-text"><%out.print(rs.getString("itemDesc")); %></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-success">Buy Now</button>
                  <button type="button" class="btn btn-sm btn-warning">Add to cart</button>
                </div>
                
              </div>
            </div>
          </div>
        </div>
			
			
			<%
		}}
		else{
			%>
			<div class="text-center">
			<h2>No Records Found</h2>
			</div>
			<%
		}
		dbc.closeCon(con);
        %>

</div>
</div>
</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>