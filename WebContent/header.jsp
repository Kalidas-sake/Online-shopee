<%@ page import="com.connection.*" %>
<%@ page import="com.services.*" %>
<%@ page import="java.sql.*" %>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
	
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Anton|Gugi|Ubuntu" rel="stylesheet">


	

<style>
.body {
	font-family: 'Montserrat', sans-serif;
}

.mybar{
margin-top: 40px;
}

.fonta{
font-family: 'Gugi', cursive;

}

.heading1{
margin-top: 30px;
color:rgb(242,106,68);
font-size:60px;
}

.heading2{
font-family: 'Anton', sans-serif;
color: rgb(0,224,0);
}

.extra-small{
padding: 20px;
font-size: 15px;
}
</style>

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand fonta" href="index.jsp">Online Shopee</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item ">
						<a class="nav-link" href="index.jsp" id="home">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Categories </a>
						<div class="dropdown-menu"> 
							<%
							DBconnection dbc = new DBconnection();
					        Connection con = dbc.getConnection();
							CategoryService cs = new CategoryServicesImpl();
							
							ResultSet rs = cs.getCategories(con);
							while(rs.next()){
								%><a class='dropdown-item' href="category.jsp?cat=<%=rs.getString("c_name") %>" ><%=rs.getString("c_name")%></a><% 
							}
							dbc.closeCon(con);
							%>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="about.jsp" id="about">About
							Us</a></li>
							<li class="nav-item"><a class="nav-link" href="admin/index.jsp" id="about">Admin</a></li>
				</ul>
				<form class="form-inline mt-2 mt-md-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" onclick=categoryfunction() type="submit">Search</button>
				</form>
			</div>
		</nav>
		<div class="mybar"></div>
	</header>
	
	<script type="text/javascript">
	
	function categoryfunction(name){
		
		alert(name);
	}
	
	</script>
</body>