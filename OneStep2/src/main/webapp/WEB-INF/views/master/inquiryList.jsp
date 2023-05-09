<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 문의 관리 -->
	<div class="row">
		<div class="col-xl-11 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing" style="margin: 0 auto; margin-top: 3%">
			<div>
				<div class="widget-heading">
					<h2 align="center">문의</h2>
				</div>
				<div class="widget-content">
					<div class="table-responsive">
						<table id="basic-dt" class="table table-hover">
							<thead>
								<tr>
									<th><div class="th-content">번호</div></th>
									<th><div class="th-content">제목</div></th>
									<th><div class="th-content">아이디</div></th>
									<th><div class="th-content">날짜</div></th>
									<th><div class="th-content">답변기록</div></th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${inquirylist }" var="inquirylist">
								<tr onclick="location.href='/master/inquirydetail?boardId=${inquirylist.boardId}'">
									<td>${inquirylist.boardId }</td>
									<td>${inquirylist.boardTitle }</td>
									<td>${inquirylist.memId }</td>
									<td>
									<fmt:formatDate value="${inquirylist.boardStart }" pattern="yyyy-MM-dd"/>
									</td>
									<c:forEach items="${answerList }" var="answerList">
										<c:if test="${inquirylist.boardId eq answerList.boardId }">
										<td>답변함</td>										
										</c:if>									
									</c:forEach>
									<td></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>