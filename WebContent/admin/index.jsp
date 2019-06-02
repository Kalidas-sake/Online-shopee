<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="fileincludes.jsp"></jsp:include>
<style type="text/css">
.mycol{
margin: auto;
width: 50%;
}


.card-signin {
  border: 0;
  border-radius: 1rem;
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
}

.card-signin .card-body {
  padding: 2rem;
}

.form-signin .btn {
  font-size: 80%;
  border-radius: 5rem;
  letter-spacing: .1rem;
  font-weight: bold;
  padding: 20px;;
  transition: all 0.2s;
  margin: auto;
}

.form-title{
	
	padding-top: 20px;
}

label{
padding-top: 10px;
}

</style>
</head>
<body>

<%
session = request.getSession(false);
//System.out.println(session.getAttribute("userName"));
if(session.getAttribute("userName") != null ){
	response.sendRedirect("home.jsp");
}

%>


<div class="container">
    <div class="mycol">
      <div class="">
        <div class="card">
          <div class="card-signin ">
            <h2 class="text-center form-title">Sign In</h2>
            <form class="form-signin card-body" action="/Online_shopee/LoginController" method="post">
              <div class="form-label-group">
                <label for="inputEmail">Email address</label>
                <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" required autofocus>
              </div>

              <div class="form-label-group">
                <label for="inputPassword">Password</label>
                <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
              </div>

              <div class="">
                <input type="checkbox" class="" id="customCheck1">
                <label class="" for="customCheck1">Remember password</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
              Click <a href="/Online_shopee/">here </a> to go shopping page.
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>