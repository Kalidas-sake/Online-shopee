<%@ page import="com.connection.*" %>
<%@ page import="com.services.*" %>
<%@ page import="java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<style>
.body {
	font-family: 'Montserrat', sans-serif;
}

.mybar{
margin-top: 40px;
}
</style>

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="#">Online Shopee</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown"
						href="#">Categories </a>
						<div class="dropdown-menu"> 
							<%
							CategoryService cs = new CategoryServicesImpl();
							ResultSet rs = cs.getCategories();
							while(rs.next()){
								out.print("<a class='dropdown-item' href='#'>"+rs.getString("c_name")+"</a>");
							}
							
							%>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="about.jsp">About
							Us</a></li>
				</ul>
				<form class="form-inline mt-2 mt-md-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>
		<div class="mybar"></div>
	</header>
</body>