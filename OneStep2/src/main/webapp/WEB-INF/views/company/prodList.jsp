<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:formatDate value="${now }" pattern="yyyy-MM-dd" var="today" />

<c:set value="${annoList}" var="annolist" />

<div class="col-xl-11 col-lg-12 col-sm-12  layout-spacing" style="margin: 0 auto; ">
	<div class="widget-content widget-content-area br-6">
		<div class="table-responsive mb-4">
			<table id="basic-dt" class="table table-hover" style="width: 100%">
				<thead>
					<tr>
						<th width="10%" style="text-align: center;">상품 분류</th>
						<th width="40%" style="text-align: center;">상품 내용</th>
						<th width="15%" style="text-align: center;">시작날짜</th>
						<th width="15%" style="text-align: center;">종료날짜</th>
						<th width="10%" style="text-align: center;">진행</th>
						<th class="no-content" width="10%"></th>
					</tr>
				</thead>
				<tbody id="tbody">

					<c:forEach items="${prod}" var="prod">
						<tr>
							<td><c:out value="${prod.prodStatus }" /></td>
							<td><c:out
									value="${prod.prodContent }" /></td>
							<fmt:formatDate value="${prod.prodStart }"
								pattern="yyyy-MM-dd" var="Start" />
							<td style="text-align: center;">${Start }</td>
							<fmt:formatDate value="${prod.prodEnd }"
								pattern="yyyy-MM-dd" var="end" />
							<td style="text-align: center;">${end } </td>
							<td><c:choose>
									<c:when test="${end > today }">
										<p style="text-align: center;">O</p>
									</c:when>
									<c:otherwise>
										<p style="text-align: center;">X</p>
									</c:otherwise>
								</c:choose></td>
							<td class="text-center">
								<div class="dropdown custom-dropdown">
									<a class="dropdown-toggle font-20 text-primary" href="#"
										role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> <i class="las la-cog"></i>
									</a>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
