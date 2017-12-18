<!DOCTYPE html>
<%--<%--%>
	<%--String path = request.getContextPath();--%>
	<%--String ${pagecontext.request.getcontextpath} = request.getScheme() + "://" + request.getServerName() + ":" +--%>
						<%--request.getServerPort() + path + "/";--%>
<%--%>--%>
<html>
<head>
<title>主页</title>
<!-- for-mobile-apps -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutelage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/swipebox.css">
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<script src="js/modernizr.custom.js"></script>
<!-- fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Alegreya:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- //fonts -->
	<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<!-- start-smoth-scrolling -->

</head>
<body>
<!-- header -->
<script>
	var suc = ${success};
	if (suc == "1"){
	    alert("密码修改成功");
	}
</script>
<div class="header">
		<div class="container">
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">--%>
							<%--<span class="sr-only">Toggle navigation</span>--%>
							<%--<span class="icon-bar"></span>--%>
							<%--<span class="icon-bar"></span>--%>
							<%--<span class="icon-bar"></span>--%>
						<%--</button>--%>
						<%--<h1><span  class="navbar-brand"><span style="font-size: 30px;position: absolute; top:15%"><i class="glyphicon glyphicon-education" aria-hidden="true"></i>教 & 学</span></span></h1>--%>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a class="hvr-overline-from-center button2 active" href="${pageContext.request.contextPath}/indexinit"><strong>主页</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/queryros"><strong>教师点名</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/leavehis"><strong>学生请假</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/checkreq"><strong>请假批准</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/centerinit"><strong>个人中心</strong></a></li>
							<%--<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/backindexinit"><strong>管理员界面</strong></a></li>--%>
						</ul>
						<%--<div class="search-box">--%>
							<%--<div id="sb-search" class="sb-search">--%>
								<%--<form>--%>
									<%--<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">--%>
									<%--<input class="sb-search-submit" type="submit" value="">--%>
									<%--<span class="sb-icon-search"> </span>--%>
								<%--</form>--%>
							<%--</div>--%>
						<%--</div>--%>
					</div><!-- /navbar-collapse -->
					
					<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->
				</nav>
			</div>
		</div>
</div>

<!-- header -->
<!-- banner -->
<div class="banner">
	<div class="container">
		<script src="js/responsiveslides.min.js"></script>
			<script>
									// You can also use "$(window).load(function() {"
									$(function () {
									 // Slideshow 4
									$("#slider3").responsiveSlides({
										auto: true,
										pager: true,
										nav: false,
										speed: 500,
										namespace: "callbacks",
										before: function () {
									$('.events').append("<li>before event fired.</li>");
									},
									after: function () {
										$('.events').append("<li>after event fired.</li>");
										}
										});
										});
								</script>

			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="banner-info">
							<h3>天道酬勤，笑对人生</h3>
						</div>
					</li>
					<li>
						<div class="banner-info">
							<h3>业精于勤荒于嬉</h3>
						</div>
					</li>
					<li>
						<div class="banner-info">
							<h3>行成于思毁于随</h3>
						</div>
					</li>
					<li>
						<div class="banner-info">
							<h3>记事者必提其要，纂言者必钩其玄</h3>
						</div>
					</li>
				</ul>
			</div>
	</div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom">
	<div class="container">
		<h2 class="tittle">校园动态<a id="tip" style="font-size: 20px;margin: 0 10px" href="${pageContext.request.contextPath}/backindexinit">前往管理员界面</a></h2>
		<script>
			var user = ${user.getStatus()};
			if (user!='2'){
			    document.getElementById("tip").style.display = 'none';
			}
		</script>
		<div class="bottom-grids">
			<div class="col-md-3 bottom-grid">
				<div class="bottom-text">
					<h3>${msg1.types}</h3>
					<br>
					<h5 style="text-align: center">${msg1.modifydate}</h5>
					<p>${msg1.msg}</p>
				</div>
				<div class="bottom-spa"><span class="glyphicon glyphicon-education" aria-hidden="true"></span></div>
			</div>
			<div class="col-md-3 bottom-grid">
				<div class="bottom-text">
					<h3>${msg2.types}</h3>
					<br>
					<h5 style="text-align: center">${msg2.modifydate}</h5>
					<p>${msg2.msg}</p>
				</div>
				<div class="bottom-spa"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></div>
			</div>
			<div class="col-md-3 bottom-grid">
				<div class="bottom-text">
					<h3>${msg3.types}</h3>
					<br>
					<h5 style="text-align: center">${msg3.modifydate}</h5>
					<p>${msg3.msg}</p>
				</div>
				<div class="bottom-spa"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
			</div>
			<div class="col-md-3 bottom-grid">
				<div class="bottom-text">
					<h3>${msg4.types}</h3>
					<br>
					<h5 style="text-align: center">${msg4.modifydate}</h5>

					<p>${msg4.msg}</p>
				</div>
				<div class="bottom-spa"><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //banner-bottom -->
<!-- team -->
<%--<div class="teachers">--%>
	<%--<div class="container">--%>
		<%--<div class="teach-head">--%>
			<%--<h3>OUR TEACHERS</h3>--%>
			<%--<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis --%>
			<%--praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate.</p>--%>
		<%--</div>--%>
		<%--<div class="team-grids">--%>
			<%--<div class="col-md-3 team-grid text-center">--%>
				<%--<div class="team-img">--%>
					<%--<img src="${pageContext.request.contextPath }.images/1.png" alt=""/>--%>
					<%--<h3>FEDERICA</h3>--%>
					<%--<h4>Co-founder</h4>--%>
					<%--<p>Nam libero tempore, cum soluta nobis--%>
					<%--est eligendi optio cumque nihil impedit--%>
					<%--quo minus</p>--%>
					<%--<ul>--%>
						<%--<li><a class="fb" href="#"></a></li>--%>
						<%--<li><a class="twitt" href="#"></a></li>--%>
						<%--<li><a class="goog" href="#"></a></li>--%>
						<%--<li><a class="drib" href="#"></a></li>--%>
					<%--</ul>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="col-md-3 team-grid text-center">--%>
				<%--<div class="team-img">--%>
					<%--<img src="images/2.png" alt=""/>--%>
					<%--<h3>PATRICK</h3>--%>
					<%--<h4>Co-founder</h4>--%>
					<%--<p>Nam libero tempore, cum soluta nobis--%>
					<%--est eligendi optio cumque nihil impedit--%>
					<%--quo minus</p>--%>
					<%--<ul>--%>
						<%--<li><a class="fb" href="#"></a></li>--%>
						<%--<li><a class="twitt" href="#"></a></li>--%>
						<%--<li><a class="goog" href="#"></a></li>--%>
						<%--<li><a class="drib" href="#"></a></li>--%>
					<%--</ul>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="col-md-3 team-grid text-center">--%>
				<%--<div class="team-img">--%>
					<%--<img src="images/3.png" alt=""/>--%>
					<%--<h3>THOMPSON</h3>--%>
					<%--<h4>Co-founder</h4>--%>
					<%--<p>Nam libero tempore, cum soluta nobis--%>
					<%--est eligendi optio cumque nihil impedit--%>
					<%--quo minus</p>--%>
					<%--<ul>--%>
						<%--<li><a class="fb" href="#"></a></li>--%>
						<%--<li><a class="twitt" href="#"></a></li>--%>
						<%--<li><a class="goog" href="#"></a></li>--%>
						<%--<li><a class="drib" href="#"></a></li>--%>
					<%--</ul>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="col-md-3 team-grid text-center">--%>
				<%--<div class="team-img">--%>
					<%--<img src="images/4.png" alt=""/>--%>
					<%--<h3>VICTORIA</h3>--%>
					<%--<h4>Co-founder</h4>--%>
					<%--<p>Nam libero tempore, cum soluta nobis--%>
					<%--est eligendi optio cumque nihil impedit--%>
					<%--quo minus</p>--%>
					<%--<ul>--%>
						<%--<li><a class="fb" href="#"></a></li>--%>
						<%--<li><a class="twitt" href="#"></a></li>--%>
						<%--<li><a class="goog" href="#"></a></li>--%>
						<%--<li><a class="drib" href="#"></a></li>--%>
					<%--</ul>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="clearfix"></div>--%>
		<%--</div>--%>
	<%--</div>--%>
<%--</div>--%>
<!-- team -->
<!-- our facilities -->
<%--<div class="facilities">--%>
	<%--<div class="container">--%>
		<%--<h3 class="tittle">FACILITIES</h3> 	--%>
			<%--<script src="js/jquery.swipebox.min.js"></script> --%>
			<%--<script type="text/javascript">--%>
						<%--jQuery(function($) {--%>
							<%--$(".swipebox").swipebox();--%>
						<%--});--%>
			<%--</script>--%>
				<%--<div class="view view-seventh">--%>
                    <%--<a href="images/g1.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g1.jpg" alt="" >--%>
                    <%--<div class="mask">--%>
                        <%--<h4>TUTELAGE</h4>--%>
                        <%--<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>--%>
                        <%----%>
                    <%--</div></a>--%>
                <%--</div>--%>
                <%--<div class="view view-seventh">--%>
                    <%--<a href="images/g2.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g2.jpg" alt="" >--%>
                    <%--<div class="mask">--%>
                         <%--<h4>TUTELAGE</h4>--%>
                        <%--<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>--%>
                        <%----%>
                    <%--</div></a>--%>
                <%--</div>--%>
                <%--<div class="view view-seventh">--%>
                    <%--<a href="images/g3.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g3.jpg" alt="">--%>
                    <%--<div class="mask">--%>
                         <%--<h4>TUTELAGE</h4>--%>
                        <%--<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>--%>
                        <%----%>
                    <%--</div></a>--%>
                <%--</div>--%>
                <%--<div class="view view-seventh">--%>
                    <%--<a href="images/g4.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g4.jpg" alt="">--%>
                    <%--<div class="mask">--%>
                        <%--<h4>TUTELAGE</h4>--%>
                        <%--<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>--%>
                        <%----%>
                    <%--</div></a>--%>
                <%--</div>--%>
				<%--<div class="view view-seventh">--%>
                    <%--<a href="images/g5.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g5.jpg" alt="">--%>
                    <%--<div class="mask">--%>
                        <%--<h4>TUTELAGE</h4>--%>
                        <%--<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>--%>
                        <%----%>
                    <%--</div></a>--%>
                <%--</div>--%>
				<%--<div class="view view-seventh">--%>
                    <%--<a href="images/g6.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g6.jpg" alt="">--%>
                    <%--<div class="mask">--%>
                        <%--<h4>TUTELAGE</h4>--%>
                        <%--<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>--%>
                        <%----%>
                    <%--</div></a>--%>
                <%--</div>--%>
				<%--<div class="clearfix"></div>--%>
	<%--</div>--%>
<%--</div>--%>
<%--<!-- //our facilities -->--%>
<%--<!-- features -->--%>
<%--<div class="features">--%>
	<%--<div class="container">--%>
		<%--<h3 class="tittle">FEATURES</h3> --%>
		<%--<div class="col-md-5 features-left">--%>
			<%--<img src="images/f1.jpg" alt=""/>--%>
		<%--</div>--%>
		<%--<div class="col-md-7 features-right">--%>
			<%--<h4>SPECIAL CARE ON STUDENTS</h4>--%>
				<%--<p> Neque porro quisquam est, qui dolorem ipsum --%>
				<%--quia dolor sit amet, consectetur, adipisci velit, --%>
				<%--sed quia non numquam eius modi tempora incidunt ut --%>
				<%--labore et dolore magnam aliquam quaerat voluptatem. --%>
				<%--Ut enim ad minima veniam, quis nostrum exercitationem --%>
				<%--ullam corporis suscipit laboriosam, nisi ut aliquid --%>
				<%--ex ea commodi consequatu.</p>--%>
				<%--<p>Temporibus autem quibusdam et aut officiis debitis aut rerum --%>
				<%--necessitatibus saepe eveniet ut et voluptates repudiandae sint et --%>
				<%--molestiae non recusandae. Itaque earum rerum veniam, quis nostrum exercitationem --%>
				<%--ullam corporis suscipit laboriosam, nisi ut aliquid --%>
				<%--ex ea commodi consequatu.</p>--%>

		<%--</div>--%>
		<%--<div class="clearfix"></div>--%>
	<%--</div>--%>
<%--</div>--%>
<%--<!-- //features -->--%>
<%--<!-- footer -->--%>
<%--<div class="footer">--%>
	<%--<div class="container">--%>
		<%--<div class="footer-grids">--%>
			<%--<div class="col-md-3 footer-grid">--%>
				<%--<h3>PERSPICIATIS</h3>--%>
				<%--<ul>--%>
					<%--<li><a href="#">SUMMER CAMPS</a></li>--%>
					<%--<li><a href="#">CELEBRATIONS</a></li>--%>
					<%--<li><a href="#">ONLINE EXAMS</a></li>--%>
					<%--<li><a href="#">COMPETITIONS</a></li>--%>
					<%--<li><a href="#">ACTIVITIES</a></li>--%>
				<%--</ul>--%>
			<%--</div>--%>
			<%--<div class="col-md-3 footer-grid">--%>
				<%--<h3>PRAESENTIUM </h3>--%>
				<%--<ul>--%>
					<%--<li><a href="#">PRESENTATIONS</a></li>--%>
					<%--<li><a href="#">SEMINARS</a></li>--%>
					<%--<li><a href="#">PREPARATIONS</a></li>--%>
					<%--<li><a href="#">CONDUCTING GAMES</a></li>--%>
					<%--<li><a href="#">OTHER ACTIVITIES</a></li>--%>
				<%--</ul>--%>
			<%--</div>--%>
			<%--<div class="col-md-3 footer-grid">--%>
				<%--<h3>DIGNISSIMOS</h3>--%>
				<%--<ul>--%>
					<%--<li><a href="#">SUMMER CAMPS</a></li>--%>
					<%--<li><a href="#">CELEBRATIONS</a></li>--%>
					<%--<li><a href="#">ONLINE EXAMS</a></li>--%>
					<%--<li><a href="#">COMPETITIONS</a></li>--%>
					<%--<li><a href="#">ACTIVITIES</a></li>--%>
				<%--</ul>--%>
			<%--</div>--%>
			<%--<div class="col-md-3 footer-grid">--%>
				<%--<h3>PRAESENTIUM</h3>--%>
				<%--<ul>--%>
					<%--<li><a href="#">PRESENTATIONS</a></li>--%>
					<%--<li><a href="#">SEMINARS</a></li>--%>
					<%--<li><a href="#">PREPARATIONS</a></li>--%>
					<%--<li><a href="#">CONDUCTING GAMES</a></li>--%>
					<%--<li><a href="#">OTHER ACTIVITIES</a></li>--%>
				<%--</ul>--%>
			<%--</div>--%>
			<%--<div class="clearfix"></div>--%>
		<%--</div>--%>
		<%--<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>--%>
<%--</p>--%>
	<%--</div>--%>
<%--</div>--%>
<!-- //footer -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

</body>
</html>
