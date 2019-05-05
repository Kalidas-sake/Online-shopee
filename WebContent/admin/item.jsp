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


				<!--copy rights start here-->
				<div class="copyrights myfooter">
					<p>
						Online Shopee <small>&copy 2019</small>
					</p>
				</div>
				<!--COPY rights end here-->
			</div>
		</div>
	</div>

	<jsp:include page="sidenavbar.jsp"></jsp:include>

</body>
</html>