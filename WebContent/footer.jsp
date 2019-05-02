<footer class="footer text-center bg-dark ">
<div class="jumbotron">
<h1>OnlineShopee.Com</h1>
<h6>All rights reserved <small>Copyright &copy 2019 </small></h6>
</div>
</footer>

<script src="js/jquery.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
	$(document).ready(function() {
		
		
		
		if(document.location.pathname == "/Online_shopee/index.jsp" )
			{
			$('#home').addClass("active");
			}
		else if(document.location.pathname == "/Online_shopee/about.jsp")
			{
			$('#about').addClass("active");
			}
	
	});
</script>