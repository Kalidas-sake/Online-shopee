<!--/sidebar-menu-->
				<div class="sidebar-menu">
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                           <div class="menu">
									<ul id="menu" >
										<li><a href="home.jsp"><i class="fa fa-tachometer"></i> <span>Dashboard</span><div class="clearfix"></div></a></li>
										
										
										 <li id="menu-academico" ><a href="category.jsp"><i class="fa fa-th-list nav_icon"></i><span>Categories</span><div class="clearfix"></div></a></li>
									<li><a href="item.jsp"><i class="fa fa-database nav_icon" aria-hidden="true"></i><span>Items</span><div class="clearfix"></div></a></li>
									<li id="menu-academico" ><a href="errorpage.html"><i class="fa fa-bar-chart"></i><span>Gallery</span><div class="clearfix"></div></a></li>
									 <li id="menu-academico" ><a href="/Online_shopee/"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>Shopping Page</span><div class="clearfix"></a></li>
								  </ul>
								</div>
							  </div>
							  <div class="clearfix"></div>		
							
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   
<!-- morris JavaScript -->	
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2014 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2014 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2014 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2014 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2015 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2015 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2015 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2015 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2016 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
				{period: '2016 Q2', iphone: 8442, ipad: 5723, itouch: 1801}
			],
			lineColors:['#ff4a43','#a2d200','#22beef'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>