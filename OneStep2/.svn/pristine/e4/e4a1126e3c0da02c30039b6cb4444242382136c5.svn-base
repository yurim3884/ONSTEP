<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="memberVO" value="${memberVO}"></c:set>

<!--  Navbar Ends / Breadcrumb Area  -->
<!-- Main Body Starts -->
<div class="layout-px-spacing">
	<div class="row layout-spacing layout-top-spacing" id="cancel-row">
		<div class="col-lg-12" style="margin: 0 auto;">
			<br> <br>
			<div class="row">
				<div class="col-sm-5" style="margin: 0 auto; float: left;">
					<form action="/member/updateInfo" id="form" method="post">
						<h2>회원 정보 수정</h2>
						<hr style="border: solid 3px #4165a7;">
						<br>
						<div class="form-group">
							<input type="hidden" id="memId" name="memId"
								value="${memberVO.memId}"> <label for="productname"
								class="strong">닉네임</label> <input id="memNick" name="memNick"
								type="text" value="${memberVO.memNick}"
								class="form-control form-control">
						</div>
						<button type="button" id="jusoBtn"
							class="mt-2 btn btn-sm btn-primary">주소 찾기</button>
						<div class="form-group mt-2">
							<label for="manufacturername" class="">우편번호</label> <input
								id="memZip" name="memZip" readonly="readonly"
								value="${memberVO.memZip}" type="text"
								class="form-control form-control"> <label
								for="manufacturername" class="">주소</label> <input id="addr1"
								name="memAddr1" readonly="readonly" value="${memberVO.memAddr1}"
								type="text" class="form-control form-control"> <label
								for="manufacturername" class="">상세주소</label> <input id="addr2"
								name="memAddr2" value="${memberVO.memAddr2}" type="text"
								class="form-control form-control">
						</div>
						<div class="form-group">
							<label for="manufacturerbrand" class="">전화번호(-를 빼고
								입력해주세요)</label> <input id="manufacturerbrand" name="memTel"
								value="${memberVO.memTel}" type="text"
								class="form-control form-control">
						</div>
						<div class="form-group">
							<button type="button" id="changeInfoBtn"
								class="btn btn-block btn-lg btn-primary" style="float: right;">회원정보
								변경하기</button>
						</div>
						<br> <br> <br>
					</form>
				</div>
				<div class="col-lg-5" style="margin: 0 auto; float: left;">
					<h2>비밀번호 수정</h2>
					<hr style="border: solid 3px #4165a7;">
					<br>
					<div class="form-group">
						<label for="productname" class="strong">현재 비밀번호</label> <input
							id="beforePw" name="productname" type="password"
							class="form-control form-control">
					</div>
					<div class="form-group">
						<label for="productname" class="strong">변경할 비밀번호</label> <input
							id="afterPw" name="productname" type="password"
							class="form-control form-control">
					</div>
					<button type="button" id="changePwBtn"
						class="mr-1 btn btn-block btn-lg btn-primary"
						style="float: right;">비밀변호 변경하기</button>
				</div>
			</div>


		</div>
	</div>
	<hr>


</div>
<!-- Main Body Ends -->

<script>
	if ('${msg}' != '') {
		alert('${msg}');
	}

	$(function() {

		var jusoBtn = $('#jusoBtn');
		var nickTest = /^[가-힣a-zA-Z0-9]{2,10}$/; //한글영어숫자 2~10자
		var pwTest = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/; // 영문 숫자조합 8~16자
		var changeInfoBtn = $('#changeInfoBtn');
		//회원정보수정 
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
															+ extraAddr + ')';
												}
												// 조합된 참고항목을 해당 필드에 넣는다.
												document
														.getElementById("addr1").value = extraAddr;

											} else {
												document
														.getElementById("addr1").value = '';
											}

											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document.getElementById('memZip').value = data.zonecode;
											document.getElementById("addr1").value = addr;
											// 커서를 상세주소 필드로 이동한다.
											document.getElementById("addr2")
													.focus();
										}
									}).open();
						});

		//수정정보 전송
		changeInfoBtn.on("click", function() {
			console.log("안녕");

			if (nickTest.test($('#memNick').val()) == false) {
				alert("닉네임은 2~10자리 한글,영문,숫자만 사용할수있습니다.");
				return false;
			}
			form.submit();

		});

		//
		$('#changePwBtn').on("click", function() {

			var beforePwVal = $('#beforePw').val();
			var afterPwVal = $('#afterPw').val();
			var memIdVal = $('#memId').val();

			if (pwTest.test($('#afterPw').val()) == false) {
				alert("비밀번호는  8~16자리 영문,숫자조합만 사용할수있습니다.");
				return false;
			}

			if (afterPwVal == beforePwVal) {
				alert("동일한 비밀번호로는 변경할수 없습니다.");
				return false;
			}

			$.ajax({
				url : "/member/changePw", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
				data : {
					beforePw : beforePwVal,
					afterPw : afterPwVal,
					memId : memIdVal
				}, // HTTP 요청과 함께 서버로 보낼 데이터
				method : "GET", // HTTP 요청 메소드(GET, POST 등)
				success : function(result) {
					if (result === "SUCCESS") {
						alert('비밀번호 변경이 완료되었습니다.');
					} else {
						alert('현재 비밀번호가 일치하지않습니다.');
					}
				}

			});

		});

	});
</script>


