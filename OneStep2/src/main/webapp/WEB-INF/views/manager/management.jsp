<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="col-xl-11 col-lg-12 col-sm-12  layout-spacing" style="margin: 0 auto;">
	<div class="widget-content widget-content-area br-6">
		<h4 class="table-header" style="text-align: center;">관리서비스</h4>
		<div class="table-responsive mb-4">
			<table id="basic-dt"  class="table table-hover" style="width: 100%">
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
					<tr onclick="location.href='/manager/datail/${free.memId }'">
						<td>${free.prodStatus }</td>
						<td>${free.memId }</td>
						<td>${free.memName }</td>
						<fmt:formatDate value="${free.prodStart }" pattern="yyyy-MM-dd" var="start"/>
						<td>${start }</td>
						<fmt:formatDate value="${free.prodEnd }" pattern="yyyy-MM-dd" var="end"/>
						<td>${end }</td>
						<td>${free.memEmail }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>