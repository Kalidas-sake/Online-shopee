
<!--header start here-->
				<div class="container">
				<div class="row">
					<div class="col-md-8">
								<h1><a href="index.jsp">Online Shopee <small>Admin Panel</small></a></h1>
							</div>
					
						
						<div class="profile_details w3l col-md-8">		
								<ul class="">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="images/kali.jpg" alt=""> </span> 
												<div class="user-name">
												
												<%
								
											    session = request.getSession(false);
											    if (session.getAttribute("userName") == null || session.getAttribute("userName").equals("")){
											    	response.sendRedirect("index.jsp");
											    
											    }
												else{
												
												
												String name = session.getAttribute("userName").toString();
												out.print("<p>"+name+"</p>");
												}
												
												%>
													
													<span>Administrator</span>
												</div>
												<i class="fa fa-angle-down"></i>
												<i class="fa fa-angle-up"></i>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
								</ul>
							</div>
							</div>
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->

<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->