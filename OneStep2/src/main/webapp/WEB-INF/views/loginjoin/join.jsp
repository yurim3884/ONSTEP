<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
<title>OneStep 회원가입-일반회원</title>
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
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
	
	    <link href="${pageContext.request.contextPath }/resources/assets/css/forms/form-widgets.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/assets/css/forms/file-upload.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/plugins/dropzone/dropzone.min.css" rel="stylesheet" type="text/css" />
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
<!-- Page Level Plugin/Style Ends -->
<!-- RTL Style Starts -->
<link
	href="${pageContext.request.contextPath }/resources/assets/css/rtl/global.css"
	rel="stylesheet" type="text/css" />
<!-- RTL Style Ends -->
</head>
<body class="sigup-one" onload="Captcha();">
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
		<p class="xato-loader-heading">일반회원 회원가입</p>
	</div>
	<!--  Loader Ends -->
	<!-- Main Body Starts -->
	<div class="container-fluid login-one-container">
		<div class="p-30 h-100">
			<div class="row main-login-one h-100">
				<div class="col-xl-5 col-lg-6 col-md-6 col-sm-12 p-0">
					<div class="login-one-start">
						<h6 class="mt-2 text-primary text-center font-30">일반회원 회원가입</h6>
						<p class="text-center text-muted mt-3 mb-3 font-14">회원정보입력후
							계정을 등록하세요</p>

						<form action="/member/join" id="form" method="post">
							<h6 class="mt-1 text-primary font-20">아이디</h6>
							<div class="login-one-inputs mt-1">
								<input type="text" name="memId" id="memId"
									placeholder="id를 입력하세요" /> <i class="las la-envelope"></i>
								<div id="memCheck"></div>
							</div>
							<h6 class="mt-2 text-primary font-20">비밀번호</h6>
							<div class="login-one-inputs mt-1">
								<input type="password" name="memPw" id="memPw"
									placeholder="비밀번호를 입력하세요" /> <i class="las la-lock"></i>
							</div>
							<h6 class="mt-2 text-primary font-20">이름</h6>
							<div class="login-one-inputs mt-1">
								<input type="text" name="memName" id="memName"
									placeholder="이름 입력하세요" /> <i class="las la-lock"></i>
							</div>
							<h6 class="mt-2 text-primary font-20">닉네임</h6>
							<div class="login-one-inputs mt-1">
								<input type="text" name="memNick" id="memNick"
									placeholder="닉네임을 입력하세요" /> <i class="las la-lock"></i>
							</div>
							<h6 class="mt-2 text-primary font-20">전화번호</h6>
							<div class="login-one-inputs mt-1">
								<input type="text" name="memTel" id="memTel1" style="width: 22%" />-
								<input type="text" name="memTel" id="memTel2" style="width: 26%" />-
								<input type="text" name="memTel" id="memTel3" style="width: 26%" />
							</div>
							<h6 class="mt-2 text-primary font-20">주소</h6>
							주소찾기버튼으로 주소를 입력하세요 <br>
							<button type="button" id="jusoBtn"
								class="btn btn-sm mt-2 btn-primary">주소 찾기</button>
							<br>
							<div class="login-one-inputs mt-1">
								<input type="text" id="memZip" name="memZip" readonly="readonly"
									placeholder="우편번호를 입력하세요" /> <i class="las la-lock"></i>
							</div>
							<div class="login-one-inputs mt-1">
								<input type="text" id="addr1" name="memAddr1"
									readonly="readonly" placeholder="주소를 입력하세요" /> <i
									class="las la-lock"></i>
							</div>
							<div class="login-one-inputs mt-1">
								<input type="text" id="addr2" name="memAddr2"
									placeholder="상세주소를 입력하세요" /> <i class="las la-lock"></i>
							</div>
							<br>
							<h6 class="mt-2 text-primary font-20">생년월일</h6>
							<div class="login-one-inputs mt-1">
								<label for="start">생년월일을 입력하세요</label> <input type="date"
									id="start" name="memBirth" value="2000-01-01" min="1900-01-01"
									max="2023-03-30">
							</div>
							<div class="login-one-inputs mt-1">
								<input type="text" id="memEmail" name="memEmail"
									placeholder="이메일을 입력하세요" /> <i class="las la-lock"></i>
							</div>
							<button type="button" id="mailBtn"
								class="btn btn-sm mt-2 btn-primary">이메일인증</button>
							<br>
							<div class="login-one-inputs mt-1">
								<input type="text" id="joinNum" name="joinNum"
									placeholder="인증번호" style="width: 35%"> <i
									class="las la-lock"></i>
							</div>
							<div id="status"></div>
							<div id="timer"></div>



							<button type="button" id="numCheckBtn"
								class="btn btn-sm mt-1 btn-primary">인증번호확인</button>



							<div id="timer"></div>



							<div class="login-one-inputs mt-1">
								<fieldset>
									<legend>성별</legend>
									<div>
										<input type="radio" id="male" name="memGender" value="male"
											checked> <label for="huey">남자</label> <input
											type="radio" id="femail" name="memGender" value="female">
										<label for="dewey">여자</label>
									</div>

								</fieldset>
							</div>

							<div class="login-one-inputs mt-1">
								<fieldset>
									<legend>메일 수신여부</legend>
									<div>
										<input type="radio" id="mail" name="memEmailApp" value="Y"
											checked> <label for="1">동의</label> <input
											type="radio" id="nomail" name="memEmailApp" value="N">
										<label for="2">미동의</label>
									</div>
								</fieldset>
							</div>
							<div class="login-one-inputs mt-1">
								<fieldset>
									<legend>SMS 수신여부</legend>
									<div>
										<input type="radio" id="sms" name="memMsn" value="Y" checked>
										<label for="3">동의</label> <input type="radio" id="nosms"
											name="memMsn" value="N"> <label for="4">미동의</label>
									</div>
								</fieldset>
							</div>
							<div id="google_recaptha">
								<script src='https://www.google.com/recaptcha/api.js'></script>
								<div class="g-recaptcha"
									data-sitekey="6LfvHUMlAAAAAANq0V1R5e5txLCnIG1sG-bknKDH"></div>
							</div> 
                                            <div class="widget-header">
                                                <div class="row">
                                                    <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                                    <br>
                                                    <fieldset>
                                                        <legend>프로필이미지</legend>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content widget-content-area">
                                                <div class="form-group row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                                        <div class="attached-files">
                                                            <img id="image-preview" width="320">
                                                        </div>
                                                        <label for="file-upload" class="custom-file-upload mb-0">
                                                            <a title="Attach a file" class="mr-2 pointer text-primary">
                                                                <i class="las la-paperclip font-20"></i>
                                                                <span class="font-17">클릭 후 이미지를 넣어주세요</span>
                                                            </a>
                                                        </label>
                                                        <input id="file-upload" name='upload_cont_img' id="inputFile"  type="file" accept="image/*" style="display:none;" onchange="handleFileChange()">
                                                    </div>
                                                </div>
                                            </div>


							<div class="capt mt-3"></div>
							<div class="login-one-inputs mt-1 check">
								<input class="inp-cbx" id="cbx" type="checkbox"
									style="display: none" /> <label class="cbx" for="cbx"><span>
										<svg width="12px" height="10px" viewbox="0 0 12 10">
                                  <polyline points="1.5 6 4.5 9 10.5 1"></polyline>
                                </svg>
								</span><span class="font-13"><a class="text-primary"
										href="/member/PrivacyPolicy" target="_blank">개인정보수집및이용약관에
											동의합니다</a></span></label>
							</div>
							<div class="login-one-inputs mt-5">
								<button
									class="ripple-button ripple-button-primary btn-lg btn-login"
									id="submitBtn" type="button">
									<div class="ripple-ripple js-ripple">
										<span class="ripple-ripple__circle"></span>
									</div>
									회원가입
								</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-xl-7 col-lg-6 col-md-6 d-none d-md-block p-0">
				<div class="slider-half">
					<div class="slide-content">
						<div class="top-sign-up ">
							<div class="about-comp text-white mt-2">One Step</div>
							<div class="for-sign-up">
								<p class="text-white font-12 mt-2 font-weight-300">Already
									have an account ?</p>
								<a href="/member/login">Login</a>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="owl-carousel owl-theme">
							<div class="item">
								<i class="lar la-grin-alt font-45 text-white"></i>
								<h2 class="font-30 text-white mt-2">Start your journey</h2>
								<p class="summary-count text-white font-12 mt-2 slide-text">Everyone
									has been made for some particular work, and the desire for that
									work has been put in every heart</p>
							</div>
							<div class="item">
								<i class="lar la-clock font-45 text-white"></i>
								<h2 class="font-30 text-white mt-2">Save your time</h2>
								<p class="summary-count text-white font-12 mt-2 slide-text">Everyone
									has been made for some particular work, and the desire for that
									work has been put in every heart</p>
							</div>
							<div class="item">
								<i class="las la-hand-holding-usd font-45 text-white"></i>
								<h2 class="font-30 text-white mt-2">Save your money</h2>
								<p class="summary-count text-white font-12 mt-2 slide-text">Everyone
									has been made for some particular work, and the desire for that
									work has been put in every heart</p>
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
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src='https://www.google.com/recaptcha/api.js'></script>
	   <script src="${pageContext.request.contextPath }/resources/assets/js/forms/file-upload.js"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/dropzone/dropzone.min.js"></script>
	<!-- Page Level Plugin/Script Ends -->

	<script type="text/javascript">
		$(function() {
			var jusoBtn = $('#jusoBtn');
			var mailBtn = $('#mailBtn');
			var timer; //타이머
			var isRunning = false; //타이머
			var numCheckBtn = $('#numCheckBtn');
			var emailFlag = false; //메일인증여부
			var idFlag = false; //아이디 중복확인여부 
			var memId = $('#memId');
			var submitBtn = $('#submitBtn');
			var idTest = /^(?=.*[0-9]+)[a-zA-Z][a-zA-Z0-9]{5,19}$/; // 영어로시작하는 영문자 또는 숫자 6~20자
			var mailTest = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; //이메일형식체크
			var nameTest = /^[가-힣]{2,6}$/; //한글 2~6자
			var nickTest = /^[가-힣a-zA-Z0-9]{2,10}$/; //한글영어숫자 2~10자
			var pwTest = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/; // 영문 숫자조합 8~16자
			var telTest1 = /^[0-9]{3}$/;
			var telTest2 = /^[0-9]{3,4}$/;
			var telTest3 = /^[0-9]{4}$/;

			//아이디중복체크

			memId.on("keyup", function() {
				idFlag = false;

				$.ajax({
					type : "get",
					url : "/member/memCheck",
					data : {
						memId : $('#memId').val()
					},
					success : function(result) {
						console.log("result :" + result);
						if (result === "SUCCESS") {

							$('#memCheck').css('color', 'red');
							$('#memCheck').text("이미 사용중인아이디입니다!");

						} else {
							const result2 = idTest.test($('#memId').val());
							if (result2 == false) {
								$('#memCheck').css('color', 'red');
								$('#memCheck').text(
										"아이디는 영어로시작하는 영문자 6~20자여야합니다");
								idFlag = false;
							} else {
								$('#memCheck').css('color', 'green');
								$('#memCheck').text("사용 가능한아이디입니다!");

								idFlag = true;
							}

						}
					}
				});

			});

			jusoBtn
					.on(
							"click",
							function() {
								new daum.Postcode(
										{
											oncomplete : function(data) {
												// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

												// 각 주소의 노출 규칙에 따라 주소를 조합한다.
												// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
												var addr = ''; // 주소 변수
												var extraAddr = ''; // 참고항목 변수

												//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
												if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
													addr = data.roadAddress;
												} else { // 사용자가 지번 주소를 선택했을 경우(J)
													addr = data.jibunAddress;
												}

												// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
												if (data.userSelectedType === 'R') {
													// 법정동명이 있을 경우 추가한다. (법정리는 제외)
													// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
													if (data.bname !== ''
															&& /[동|로|가]$/g
																	.test(data.bname)) {
														extraAddr += data.bname;
													}
													// 건물명이 있고, 공동주택일 경우 추가한다.
													if (data.buildingName !== ''
															&& data.apartment === 'Y') {
														extraAddr += (extraAddr !== '' ? ', '
																+ data.buildingName
																: data.buildingName);
													}
													// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
													if (extraAddr !== '') {
														extraAddr = ' ('
																+ extraAddr
																+ ')';
													}
													// 조합된 참고항목을 해당 필드에 넣는다.
													document
															.getElementById("addr1").value = extraAddr;

												} else {
													document
															.getElementById("addr1").value = '';
												}

												// 우편번호와 주소 정보를 해당 필드에 넣는다.
												document
														.getElementById('memZip').value = data.zonecode;
												document
														.getElementById("addr1").value = addr;
												// 커서를 상세주소 필드로 이동한다.
												document
														.getElementById("addr2")
														.focus();
											}
										}).open();
							});

			//메일 전송

			// 인증번호 발송하고 타이머 함수 실행
			function sendAuthNum() {
				// 남은 시간
				var leftSec = 60 * 5, display = document
						.querySelector('#timer');
				// 이미 타이머가 작동중이면 중지
				if (isRunning) {
					clearInterval(timer);
				} else {
					isRunning = true;
				}
				startTimer(leftSec, display);
			}

			function startTimer(count, display) {
				var minutes, seconds;
				timer = setInterval(function() {
					minutes = parseInt(count / 60, 10);
					seconds = parseInt(count % 60, 10);

					minutes = minutes < 10 ? "0" + minutes : minutes;
					seconds = seconds < 10 ? "0" + seconds : seconds;

					display.textContent = minutes + ":" + seconds;

					// 타이머 끝
					if (--count < 0) {
						clearInterval(timer);
						display.textContent = "";
						isRunning = false;
					}
				}, 1000);
			}

			mailBtn.on("click", function() {

				var toVal = $('#memEmail').val();

				mailObject = {
					to : toVal
				}

				console.log(toVal);

				$.ajax({
					type : "post",
					url : "/member/sendJoin",
					data : JSON.stringify(mailObject),
					contentType : "application/json; charset=utf-8",
					dataType : "text",
					success : function(result) {
						console.log("result :" + result);
						if (result === "SUCCESS") {
							$('#status').text('전송 완료          남은시간');

							sendAuthNum();

						} else {
							alert('올바르지않은 email 계정입니다.');
						}
					}
				});
			});

			//인증번호관련
			numCheckBtn.on("click", function() {
				var joinNumVal = $('#joinNum').val()

				numObject = {
					joinNum : joinNumVal
				}

				$.ajax({
					type : "post",
					url : "/member/numberCheck",
					data : JSON.stringify(numObject),
					contentType : "application/json; charset=utf-8",
					dataType : "text",
					success : function(result) {
						console.log("result :" + result);
						if (result === "SUCCESS") { //인증성공시
							alert("인증완료")
							$('#status').text('인증완료');
							clearInterval(timer); //인터벌함수 종료
							$('#timer').text('');
							$('#numCheckBtn').attr('hidden', 'true');
							$('#joinNum').attr('readonly', 'readonly');
							emailFlag = true;

						} else {
							alert("인증실패")
						}
					}
				});
			});

			//submit 정규식

			submitBtn.on("click", function() {

				if (idFlag == false) {
					alert("id사용가능여부를 확인해주세요");
					return false;
				}

				if (pwTest.test($('#memPw').val()) == false) {
					alert("비밀번호는  8~16자리 영문,숫자조합만 사용할수있습니다.");
					return false;
				}
				if (nameTest.test($('#memName').val()) == false) {
					alert("이름은 2~6자리 한글만 사용할수있습니다.");
					return false;
				}
				if (nickTest.test($('#memNick').val()) == false) {
					alert("닉네임은 2~10자리 한글,영문,숫자만 사용할수있습니다.");
					return false;
				}
				if (telTest1.test($('#memTel1').val()) == false
						|| telTest2.test($('#memTel2').val()) == false
						|| telTest3.test($('#memTel3').val()) == false) {
					alert("휴대전화번호를 확인하세요");
					return false;
				}
				if ($('#memZip').val() == '') {
					alert("주소를 입력해주세요");
					return false;
				}

				if (emailFlag == false) {
					alert("email인증여부를 확인해주세요");
					return false;
				}

				form.submit();

			});

		});
	</script>
</body>
</html>