<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
#aa {
	display: none;
}
</style>
</head>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<body>
	<!--  Content Area Starts  -->
	<form action="/free/payss2" method="post" id="form"
		enctype="multipart/form-data">
		<fmt:formatDate value="${now }" pattern="yyyy-MM-dd" var="today" />
		<fmt:formatDate value="${now30 }" pattern="yyyy-MM-dd" var="endDay" />
		<div class="layout-px-spacing " style="margin-top: 3%">
			<div class="row layout-spacing layout-top-spacing" id="cancel-row">
				<div class="col-lg-12">
					<div class="">
						<div class="widget-content searchable-container grid">
							<div class="row mb-6 mt-3">
								<input type="hidden" id="payPay" name="prodPrice" value="50">
								<input type="hidden" id="memId" name="memId" value="${member.memId }">
								<input type="hidden" id="comId" name="companyId" value="${member.companyId }">
								<input type="hidden" id="prodId" name="prodStatus"
									value="매칭서비스">
								<div class="col-md-10" style="margin: 0 auto;">
									<div class="tab-content">
										<div class="tab-pane fade show active">
											<div class="card-box order-detail-table">
												<div class="table-responsive">
													<table class="table table-bordered table-centered mb-0">
														<thead class="thead-light">
															<tr>
																<th>Product name</th>
																<th>Price</th>
															</tr>
														</thead>

														<tbody>
															<tr>
																<th scope="row">매칭서비스</th>
																<td>50</td>
															</tr>
															<tr>
																<th scope="row" class="text-right">Grand Total :</th>
																<td><div class="strong text-success-teal">50</div></td>
															</tr>
														</tbody>
													</table>
													<div>
														<div class="mb-0 row form-group" style="margin-top: 2%">
															<label for="example-textarea"
																class="col-form-label col-md-1 col-form-label">시작
																날짜</label>
															<div class="col-md-5">
																<input class="form-control" type="date"
																	value="${today }" id="example-date-input"
																	name="prodStart" readonly="readonly">
															</div>
															<label for="example-textarea"
																class="col-form-label col-md-1 col-form-label">종료
																날짜 </label>
															<div class="col-md-5">
																<input class="form-control" type="date"
																	value="${endDay }" id="example-date-input"
																	name="prodEnd" readonly="readonly">
															</div>
														</div>
														<div class="mb-0 row form-group" style="margin-top: 2%">
															<label for="example-textarea"
																class="col-form-label col-md-1 col-form-label">
																상품 detail </label>
															<div class="col-md-5">
																<textarea class="form-control" id="example-textarea"
																	rows="3" name="prodContent" >${member.memId }의 매칭서비스  </textarea>
															</div>
														</div>
														<button type="button"
															class="btn btn-dark btn_payment float-right"
															style="margin-top: 2%">
															<i class="las la-shopping-bag"></i> Buy Now
														</button>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<input type="submit" value="" id="aa">
	</form>

	<script type="text/javascript">
		$(".btn_payment").click(function() {
			var payPay = $("#payPay").val();
			var prodId = $("#prodId").val();
			var memId = $("#memId").val();
			var form = $("#form");
			//class가 btn_payment인 태그를 선택했을 때 작동한다.

			IMP.init('imp51656844');
			//결제시 전달되는 정보
			IMP.request_pay({
				pg : 'inicis',
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : prodId /*상품명*/,
				amount : payPay/*상품 가격*/,
				buyer_email : 'iamport@siot.do'/*구매자 이메일*/,
				buyer_name : memId,
				buyer_tel : '010-1234-5678'/*구매자 연락처*/,
				buyer_addr : 'aaaaaa'/*구매자 주소*/,
				buyer_postcode : '123-456'/*구매자 우편번호*/
			}, function(rsp) {
				var result = '';
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					result = '0';
					// 					form.submit();

				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					result = '1';
					form.submit();
				}
				alert(msg);
				if (result == '0') {
					$("#aa").trigger("click");
					location.href = $.getContextPath() + "/pay";
				}
			});
		});
	</script>