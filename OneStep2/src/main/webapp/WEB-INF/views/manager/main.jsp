<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div
	class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing"
	style="margin: 0 auto;">
	<div class="widget-chart-one">
		<div class="widget-content overflow-hidden">
			<div class="ticker-wrap"
				style="background-color: white; border: solid; border-radius: 20px">
				<div class="ticker-heading" style="background-color: #4165a7">
					<p onclick="location.href='/company/notice'">공지사항</p>
				</div>
				<div class="ticker">
					<c:forEach items="${notice}" var="notice">
						<div class="ticker-item">${notice.boardTitle }</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="layout-px-spacing col-11" style="margin: 0 auto;">
	<div class="row layout-top-spacing">
		<div
			class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 layout-spacing small-profile">
			<div class="widget widget-chart-one"
				style="border: #c2d5ff solid 5px;">
				<div class="text-center mb-4" style="height: 285px;">
					<img
						src="${pageContext.request.contextPath }/resources/assets/img/manager.png"
						alt="Avatar" class="img-thumbnail rounded-circle mb-3"
						width="250px" height="250px">
					<h5 class="mb-0 stronger">${memberVO.memName }</h5>
					<a class="text-primary" href="#">manager</a>
				</div>
			</div>
		</div>
		<div class="col-lg-8 layout-spacing " style="margin-top: 2%">
			<div class="statbox widget box box-shadow mb-4">
				<div class="widget-header" style="background-color: #c2d5ff">
					<div class="row">
						<div class="col-xl-12 col-md-12 col-sm-12 col-12">
							<h4 style="color: white;">TO DO LIST</h4>
						</div>
					</div>
				</div>
				<div class="widget-content widget-content-area">
					<div class="col-md-6">
						<div class="form-group">
							<div class="ripple-checkbox-primary">
								<input class="inp-cbx" id="cbx" type="checkbox"
									style="display: none"> <label class="cbx" for="cbx">
									<span> <svg width="12px" height="10px"
											viewBox="0 0 12 10">
                                                                            <polyline
												points="1.5 6 4.5 9 10.5 1"></polyline>
                                                                        </svg>
								</span> <span class="text-light-black">관리서비스를 사용하는 프리랜서 확인하기</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="ripple-checkbox-success">
								<input class="inp-cbx" id="cbx3" type="checkbox"
									style="display: none"> <label class="cbx" for="cbx3">
									<span> <svg width="12px" height="10px"
											viewBox="0 0 12 10">
                                                                            <polyline
												points="1.5 6 4.5 9 10.5 1"></polyline>
                                                                        </svg>
								</span> <span class="text-light-black">나에게 온 채팅 확인하기</span>
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="ripple-checkbox-warning">
								<input class="inp-cbx" id="cbx4" type="checkbox"
									style="display: none"> <label class="cbx" for="cbx4">
									<span> <svg width="12px" height="10px"
											viewBox="0 0 12 10">
                                                                            <polyline
												points="1.5 6 4.5 9 10.5 1"></polyline>
                                                                        </svg>
								</span> <span class="text-light-black">매칭하기</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="ripple-checkbox-danger">
								<input class="inp-cbx" id="cbx5" type="checkbox"
									style="display: none"> <label class="cbx" for="cbx5">
									<span> <svg width="12px" height="10px"
											viewBox="0 0 12 10">
                                                                            <polyline
												points="1.5 6 4.5 9 10.5 1"></polyline>
                                                                        </svg>
								</span> <span class="text-light-black">매칭 완료 후 정산하기</span>
								</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="col-xl-11 col-lg-12 col-sm-12  layout-spacing"
	style="margin: 0 auto;">
	<div class="widget-content widget-content-area br-6">
		<h4 class="table-header" style="text-align: center;">관리서비스</h4>
		<div class="table-responsive mb-4">
			<table id="basic-dt" class="table table-hover" style="width: 100%">
				<thead>
					<tr>
						<th>상품분류</th>
						<th>회원아이디</th>
						<th>회원이름</th>
						<th>시작날짜</th>
						<th>종료날짜</th>
						<th>이메일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${prodFree }" var="free">
						<tr>
							<td>${free.prodStatus }</td>
							<td>${free.memId }</td>
							<td>${free.memName }</td>
							<fmt:formatDate value="${free.prodStart }" pattern="yyyy-MM-dd"
								var="start" />
							<td>${start }</td>
							<fmt:formatDate value="${free.prodEnd }" pattern="yyyy-MM-dd"
								var="end" />
							<td>${end }</td>
							<td>${free.memEmail }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

