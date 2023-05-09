<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<div class="col-10  layout-spacing">
		<div class="col-10"
			style="background-color: #f7f7f7; margin-left: 200px;">
			<br> <span
				style="color: black; font-size: 18pt; vertical-align: middle; ">${board.boardTitle }
				.</span> <span style="float: right;"> ${board.memId } </span> <br> <br>
		</div>
		<hr class="col-10" style="margin-left: 200px;">
		<div class="col-10" style="margin-left: 200px; text-align: right;">
		<fmt:formatDate value="${board.boardStart }" var="boardStart" pattern="yyyy-MM-dd"/>
		<c:out value="${boardStart }" />
		</div>
		<hr class="col-10" style="margin-left: 200px;">
		<div class="col-10" style="margin-left: 200px;">
			<span> <br>
			<br>
			<br> <c:out value="${board.boardContent }" escapeXml="false"/> <br>
			<br> <br>
			<br>
			<br>
			</span>
		</div>
		<hr class="col-10" style="margin-left: 200px;">
		
		</div>

	<hr class="col-10" style="margin-left: 200px;">
		
