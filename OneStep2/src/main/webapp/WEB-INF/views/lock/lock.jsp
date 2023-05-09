<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
<title>ONESTEP</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/resources/assets/img/favicon.ico" />
<!-- Common Styles Starts -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/resources/assets/css/main.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/resources/assets/css/structure.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/resources/plugins/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/resources/plugins/highlight/styles/monokai-sublime.css"
	rel="stylesheet" type="text/css" />
<!-- Common Styles Ends -->
<!-- Common Icon Starts -->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<!-- Common Icon Ends -->
<!-- Page Level Plugin/Style Starts -->
<link
	href="${pageContext.request.contextPath }/resources/assets/css/loader.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.carousel.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.theme.default.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/resources/assets/css/authentication/auth_1.css"
	rel="stylesheet" type="text/css">
	
	  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/assets/css/ui-elements/loading-spinners.css">
<!-- Page Level Plugin/Style Ends -->
</head>
<body class="login-one">
	<!-- Loader Starts -->
	<div id="load_screen">
		<div class="boxes">
			<div class="box">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
			<div class="box">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
			<div class="box">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
			<div class="box">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
		<p class="xato-loader-heading">ONESTEP</p>
	</div>
	<!--  Loader Ends -->
	<!-- Main Body Starts -->
	<div class="container-fluid login-one-container">
		<div class="p-30 h-100">
			<div class="row main-login-one h-100">
				<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 p-0">
					<div class="login-one-start" >
						<h6 class="mt-2 text-primary text-center font-20">
							<i class="las la-lock"></i> Locked
						</h6>
						<p class="text-center text-muted mt-3 mb-3 font-14">Please
							enter your password to continue</p>
							<br>
						<div class="col-md-12" >
							<div class="loading-container" style="margin: 0 auto; ">
								<div class="dots-one">
									<span></span> <span></span> <span></span> <span></span>
								</div>
							</div>
						</div>
						<form action="/member/checkPw" method="post">
							<div class="login-one-inputs mt-3">
								<input type="password" placeholder="Password" name="memPw" /> <i
									class="las la-lock"></i>
							</div>
							<div class="login-one-inputs mt-4">
								<button
									class="ripple-button ripple-button-primary btn-lg btn-login"
									type="submit" id="loginBtn">
									<div class="ripple-ripple js-ripple">
										<span class="ripple-ripple__circle"></span>
									</div>
									비밀번호 확인
								</button>
							</div>
						</form>
						<div class="login-one-inputs mt-4 text-center font-12 strong">
							<a href="/member/login" class="text-primary">로그인</a>
						</div>
					</div>
				</div>
				<div class="col-xl-8 col-lg-6 col-md-6 d-none d-md-block p-0">
					<div class="slider-half">
						<div class="slide-content">
							<div class="top-sign-up ">
								<div class="about-comp text-white mt-2">ONESTEP</div>
								<div class="for-sign-up">
									<p class="text-white font-12 mt-2 font-weight-300">Don't
										have an account ?</p>
									<a href="/member/join">Sign Up</a>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="owl-carousel owl-theme">
								<div class="item">
									<i class="lar la-grin-alt font-45 text-white"></i>
									<h2 class="font-30 text-white mt-2">Start your journey</h2>
									<p class="summary-count text-white font-12 mt-2 slide-text">Everyone
										has been made for some particular work, and the desire for
										that work has been put in every heart</p>
								</div>
								<div class="item">
									<i class="lar la-clock font-45 text-white"></i>
									<h2 class="font-30 text-white mt-2">Save your time</h2>
									<p class="summary-count text-white font-12 mt-2 slide-text">Everyone
										has been made for some particular work, and the desire for
										that work has been put in every heart</p>
								</div>
								<div class="item">
									<i class="las la-hand-holding-usd font-45 text-white"></i>
									<h2 class="font-30 text-white mt-2">Save your money</h2>
									<p class="summary-count text-white font-12 mt-2 slide-text">Everyone
										has been made for some particular work, and the desire for
										that work has been put in every heart</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Main Body Ends -->
	<!-- Page Level Plugin/Script Starts -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/loader.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/libs/jquery-3.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.carousel.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/authentication/auth_1.js"></script>
	<!-- Page Level Plugin/Script Ends -->

	<script type="text/javascript">
		$(function() {

			var loginBtn = $('#loginBtn');

			if ('${msg}' != '') {
				alert('${msg}');
			}

			loginBtn.on("click", function() {
				form.submit();
			});
		});
	</script>
</body>
</html>