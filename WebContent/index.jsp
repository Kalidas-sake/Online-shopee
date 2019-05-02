<%@ page import="com.connection.*" %>
<%@ page import="com.services.*" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopee</title>
<link rel="stylesheet" href="css/bootstrap.min.css">



<style type="text/css">


</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>



<!-- Crasual effect -->
<div class="fonta">
<div class="jumbotron text-center">
<h1 class="heading1">Everything at One Place</h1>
<h5 class="">Our first online vegetables home delivery shopee.<small>  ___by Ashok Mandage</small> </h5>

</div>

<div class=text-center>
<h3 class="heading2">NEW FRESH ARRIVALS</h3>
<h2 id="myid"></h2>

</div>

</div>


<div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
        
        
        
        <%
        ItemServices is = new ItemServicesImpl();
		ResultSet rs = is.getAllItems();
		while(rs.next()){
			//out.print("<a class='dropdown-item' href='#'>"+rs.getString("c_name")+"</a>");
			
			%>
			
			<div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
            <h4 class="card-title"><%out.print(rs.getString("itemName")); %></h4>
              <p class="card-text"><%out.print(rs.getString("itemDesc")); %></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">Buy Now</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Add to cart</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
			
			
			<%
		}
		
        %>

</div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>