<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Icon CSS -->
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/responsive.css" />

<title>后勤服务管理系统</title>
</head>
<body id="page-top">
	<!-- NAVBAR
    ================================================= -->
	<nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top" id="mainNav">
		<div class="container">
			<!-- Brand -->
			<a class="navbar-brand js-scroll-trigger" href="#page-top">
				<img alt="brand" src="img\logo_white.png" style="width: 40x; height: 40px;" id="logo_img" /><span id="logo_text"> 后勤服务管理系统</span>
			</a>

			<!-- Toggler -->
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon-bar"><i class="oi oi-menu"></i></span>
			</button>

			<!-- Collapse -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<!-- Links -->
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#page-top"> 主页 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#news"> 新闻 </a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> 服务 </a>
						<div class=" dropdown-menu">
							<a class="dropdown-item js-scroll-trigger" href="#services">服务总览</a>
							<a class="dropdown-item js-scroll-trigger" href="#service_repaire">故障报修</a>
							<a class="dropdown-item js-scroll-trigger" href="#service_query">记录查询</a>
							<a class="dropdown-item js-scroll-trigger" href="#service_question">问题通知</a>
							<a class="dropdown-item js-scroll-trigger" href="#service_reply">反馈留言</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#about"> 关于 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#contact"> 反馈 </a>
					</li>
					<li class="nav-item">
						<button class="btn btn-cn btn-success js-scroll-trigger" data-toggle="modal" data-target="#loginModal" type="button">登录</button>
					</li>
				</ul>
			</div>
			<!-- / .navbar-collapse -->
		</div>
		<!-- / .container -->
	</nav>

	<!-- LOGIN MODAL
    ================================================== -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">

				<!-- modal header -->
				<div class="modal-header">
					<h3 class="modal-title center-block" id="loginModalTitle">登录</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- / modal header -->

				<!-- modal body -->
				<div class="modal-body">
					<form class="needs-validation" action="LoginServlet" method="post" novalidate>
						<!-- Username -->
						<div class="form-group row justify-content-center">
							<label for="loginInputUsername" class="col-sm-3 col-form-label">用户名</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="loginInputUsername" placeholder="Username" name="id" required>
								<div class="invalid-feedback">请输入用户名</div>
							</div>
						</div>

						<!-- Password -->
						<div class="form-group row justify-content-center">
							<label for="loginInputPassword" class="col-sm-3 col-form-label">密码</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="loginInputPassword" placeholder="Password" name="psw" required>
								<div class="invalid-feedback">请输入密码</div>
							</div>
						</div>

						<!-- Login radio -->
						<div class="form-group row justify-content-center">
							<label class="col-form-label col-sm-3 pt-0">登录方式</label>
							<div class="col-sm-7">
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="method" id="loginRadio1" value="studentLogin" required>
									<label class="custom-control-label" for="loginRadio1"> 学生登录 </label>
								</div>
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="method" id="loginRadio2" value="workerLogin" required>
									<label class="custom-control-label" for="loginRadio2"> 工人登录 </label>
								</div>
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="method" id="loginRadio3" value="managerLogin" required>
									<label class="custom-control-label" for="loginRadio3"> 管理登录 </label>
									<div class="invalid-feedback">请选择登录方式</div>
								</div>
							</div>
						</div>

						<!-- Button -->
						<div class="form-group row justify-content-center">
							<div class="col-auto">
								<button type="submit" class="btn btn-cn btn-success">登录</button>
							</div>
						</div>
					</form>
				</div>
				<!-- / modal body -->
			</div>
		</div>
	</div>

	<!-- HERO
    ================================================== -->
	<section class="section section-top section-full">

		<!-- Cover -->
		<div class="bg-cover" style="background-image: url(img/hero.jpg);"></div>

		<!-- Overlay -->
		<div class="bg-overlay"></div>
		<!-- Content -->
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-md-10 col-lg-7 ">
					<div class="banner-content">
						<!-- Preheading -->
						<p class="text-white text-uppercase text-center text-xs">成都理工大学</p>

						<!-- Heading -->
						<h1 class="text-white text-center mb-4 display-4 font-weight-bold">后勤服务管理系统</h1>

						<!-- Subheading -->
						<p class="lead text-white text-center mb-5">一站式服务，为你的生活排忧解难</p>

						<!-- Button -->
						<p class="text-center mb-0">
							<a href="#services" class="btn btn-primary js-scroll-trigger" style="padding: 0.5rem 2.0rem !important; font-size: 1.5rem;"> 开始 </a>
						</p>
					</div>
				</div>
			</div>
			<!-- / .row -->
		</div>
		<!-- / .container -->
	</section>

	<!-- SECTIONS
    ================================================== -->
	<!-- PAGES
    ================================================== -->

	<!-- News
    ================================================== -->
	<section class="section bg-dark" id="news">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 m-auto text-center">
					<h1 class="text-white">新闻动态</h1>
				</div>
			</div>
		</div>
		<div class="carousel slide" id="review-slider" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#review-slider" data-slide-to="0" class="active"></li>
				<li data-target="#review-slider" data-slide-to="1"></li>
				<li data-target="#review-slider" data-slide-to="2"></li>
			</ol>
			<div class="caousel-inner">
				<div class="container">
					<div class="row">
						<div class="col-lg-10 m-auto">
							<div class="carousel-item active text-center test-content">
								<img src="img/news_1.jpg" alt="" class="img-fluid ">

								<div class="client-text">
									<h3>新起点 新征程</h3>
								</div>
							</div>

							<div class="carousel-item text-center test-content">
								<img src="img/news_2.jpg" alt="" class="img-fluid ">

								<div class="client-text">
									<h3>拨穗正冠 扬帆起航</h3>
								</div>
							</div>

							<div class="carousel-item text-center test-content">
								<img src="img/news_3.jpg" alt="" class="img-fluid ">

								<div class="client-text">
									<h3>定格当下 相伴未来</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- SERVICES
    ================================================== -->
	<section class="section" id="services">
		<div class="container">
			<div class="row justify-content-center mb-4">
				<div class="col-md-8 col-lg-6 text-center">

					<!-- Heading -->
					<h2 class="lg-title mb-2">全面服务</h2>

					<!-- Subheading -->
					<p class="mb-5 ">多种多样，应有尽有</p>

				</div>
			</div>
			<!-- / .row -->

			<div class="row justy-content-center">
				<div class="col-lg-3 col-md-6">
					<div class="text-center feature-block">
						<div class="feature-icon-block mb-4">
							<i class="oi oi-wrench"></i>
						</div>
						<h4 class="mb-3 ">故障报修</h4>
						<p>发现问题，在线报修，方便快捷，省时省力</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="text-center feature-block">
						<div class="feature-icon-block mb-4">
							<i class="oi oi-magnifying-glass"></i>
						</div>
						<h4 class="mb-3">记录查询</h4>
						<p>随时随地查看历史记录、维修进度，实时掌握维修动态</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="text-center feature-block">
						<div class="feature-icon-block mb-4">
							<i class="oi oi-browser"></i>
						</div>
						<h4 class="mb-3">问题通知</h4>
						<p>如有任何问题，我们都会及时通知，您只需要登录即可看到我们的通知</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="text-center feature-block">
						<div class="feature-icon-block mb-4">
							<i class="oi oi-pencil"></i>
						</div>
						<h4 class="mb-3">反馈留言</h4>
						<p>欢迎您对我们提出意见，您的意见使我们前进的动力</p>
					</div>
				</div>
			</div>
		</div>
		<!-- / .container -->
	</section>

	<!-- SERVICE_REPAIRE
    ================================================== -->
	<section class="section bg-light" id="service_repaire" style="padding-bottom: 0rem;">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="about-img">
						<img src="img/services_1.svg" alt="" class="img-fluid">
					</div>
				</div>

				<div class="col-lg-6 ">
					<div class="about-content">
						<h2 class="display-5">故障报修</h2>
						<p>
							发现问题，在线报修，方便快捷，省时省力<br>只需 1 分钟，即可完成报修提交
						</p>

						<p>
							有故障 ?
							<a href="#">马上报修</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- SERVICE_QUERY
    ================================================== -->
	<section class="section bg-light" id="service_query" style="padding-bottom: 0rem;">
		<div class="container">
			<div class="row mt-5 align-items-center ">
				<div class="col-lg-6 col-md-6">
					<div class="about-content-2 ">
						<h2 class="display-5">记录查询</h2>
						<p>每一次报修都会留下记录，随时查询，避免纠纷</p>

						<a href="#" class="btn btn-cn btn-primary">查询记录</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="about-img">
						<img src="img/services_2.svg" alt="" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- SERVICE_QUESTION
    ================================================== -->
	<section class="section bg-light" id="service_question" style="padding-bottom: 0rem;">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="about-img">
						<img src="img/services_3.svg" alt="" class="img-fluid">
					</div>
				</div>

				<div class="col-lg-6 ">
					<div class="about-content">
						<h2 class="display-5">问题通知</h2>
						<p>I make website in a organized way so you can be able to modify as you want.Proper documentation also added with the template for the change.</p>

						<ul class="list-unstyled skill-list ">
							<li>停水停电</li>
							<li>PSD to WordPress</li>
							<li>HTML to WordPress</li>
							<li>Scratch To HTML</li>
							<li>PSD Template Design</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- SERVICE_REPLY
    ================================================== -->
	<section class="section bg-light" id="service_reply">
		<div class="container">
			<div class="row mt-5 align-items-center ">
				<div class="col-lg-6 col-md-6">
					<div class="about-content-2 ">
						<h2 class="display-5">反馈留言</h2>
						<p>Fully responsive template withj latest bootstrap 4 framework and modern UI and technology. Convert your site in a ziffy.</p>

						<a href="#" class="btn btn-cn btn-primary">反馈</a>
					</div>
				</div>

				<div class="col-lg-6 col-md-6">
					<div class="about-img">
						<img src="img/services_1.svg" alt="" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- FOOTER
    ================================================== -->
	<footer class="top-padding bg-dark" id="about">
		<!--Content -->
		<div class="container">
			<div class="row align-self-center">
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget">
						<!-- Brand -->
						<a href="#page-top" class="footer-brand text-white js-scroll-trigger"> 后勤服务管理系统 </a>
						<p>
							<i class="oi oi-people"></i> 专业的管理团队. <br> <i class="oi oi-graph"></i> 高效的组织机构. <br> <i class="oi oi-clock"></i> 24小时服务.<br> <i class="oi oi-heart"></i> 给您最完美的体验.
						</p>
					</div>
				</div>

				<div class="col-lg-2 ml-lg-auto col-md-2">

					<!-- Links -->
					<ul class="footer-link list-unstyled ml-0 justify-content-end">
						<li>
							<a href="#" class="text-white"> 服务 </a>
						</li>
						<li>
							<a href="#" class="text-white"> 动态 </a>
						</li>
						<li>
							<a href="#" class="text-white"> 反馈 </a>
						</li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-4">

					<!-- Links -->
					<ul class="footer-link list-unstyled ml-0 justify-content-end">
						<li>
							<i class="oi oi-phone"></i> +123-4567890
						</li>
						<li>
							<i class="oi oi-location"></i> 成都理工大学
						</li>
						<li>
							<i class="oi oi-link-intact"></i> www.rearservice.manage
						</li>
					</ul>
				</div>
			</div>
			<!-- / .row -->

			<div class="row justify-content-md-center footer-copy">
				<div class="col-lg-8 col-md-6 col-sm-6 text-center">
					<p class="lead text-white-50">&copy; Copyright Reserved to CDUT | Design and Developed by 软件工程2班4组</p>
				</div>
			</div>
		</div>
		<!-- / .container -->
	</footer>

	<!-- JAVASCRIPT
    ================================================== -->
	<!-- Global JS -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/tooltip.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<!-- Plugin JS -->
	<script src="js/jquery.easing.min.js"></script>

	<!-- Theme JS -->
	<script src="js/theme.js"></script>
	
	
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>
</body>
</html>