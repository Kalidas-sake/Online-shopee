<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dash-board</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<style type="text/css">
.navbar-fixed-left {
  width: 140px;
  position: fixed;
  border-radius: 0;
  height: 100%;
}

.navbar-fixed-left .navbar-nav > li {
  float: none;  /* Cancel default li float: left */
  width: 139px;
}

.navbar-fixed-left + .container {
  padding-left: 160px;
}

/* On using dropdown menu (To right shift popuped) */
.navbar-fixed-left .navbar-nav > li > .dropdown-menu {
  margin-top: -50px;
  margin-left: 140px;
}


</style>

</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-left">
  <a class="navbar-brand" href="#">Online Shopee</a>
  <ul class="nav navbar-nav">
   <li><a href="#">Category</a></li>
   <li><a href="#">Items</a></li>
   <li><a href="#">Notifications</a></li>
   <li><a href="#">Other</a></li>
  </ul>
</div>
<div class="container">
 <div class="row">
   <h2>Left side Navigation bar (Fixed)</h2>
   
   <p>Left side Navigation</p>
 </div>
</div>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>
</html>