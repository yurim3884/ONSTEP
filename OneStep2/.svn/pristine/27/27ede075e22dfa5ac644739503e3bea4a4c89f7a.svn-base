<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 공지사항 상세 -->

	<div class="col-10  layout-spacing" style="margin-top: 40px;">
		<div class="col-10"
			style="background-color: #f7f7f7; margin-left: 200px;">
			<br> <span
				style="color: black; font-size: 18pt; vertical-align: middle; ">${noticeDetail.boardTitle }
				.</span> <span style="float: right;"> ${noticeDetail.memId } </span> <br> <br>
		</div>
			<hr class="col-10" style="margin-left: 200px;">
		<div class="col-10" style="margin-left: 200px; text-align: right;">
			<fmt:formatDate value="${noticeDetail.boardStart }" var="boardStart" pattern="yyyy-MM-dd"/>
			<c:out value="${boardStart }" />
		</div>
		<hr class="col-10" style="margin-left: 200px;">
			<div class="col-10" style="margin-left: 200px;">
				<span> <br>
				<br>
				<br> <c:out value="${noticeDetail.boardContent }" escapeXml="false"/> <br>
				<br> <br>
				<br>
				<br>
				</span>
				<div class="widget-footer text-right">
		            <button type="button" class="btn btn-primary mr-2" id="updateBtn" >수정</button>
		            <button type="button" class="btn btn-primary mr-2" id="deleteBtn" >삭제</button>
		            <button type="reset" class="btn btn-outline-primary">취소</button>
		        </div>
			</div>
			<form action="/master/deleteForm" method="post" id="nFrm">
				<input type="hidden" name="boardId" value="${noticeDetail.boardId }">
			</form>
		<hr class="col-10" style="margin-left: 200px;">
	</div>

	<hr class="col-10" style="margin-left: 200px;">
	

<script type="text/javascript">
var updateBtn = $("#updateBtn");
var deleteBtn = $("#deleteBtn");
var nFrm = $("#nFrm");

updateBtn.on("click", function(){
	location.href = "/master/updateForm?boardId=${noticeDetail.boardId}";
});

deleteBtn.on("click", function(){
	if(confirm("정말로 삭제하시겠습니까?")){
		nFrm.submit();
	}else{
		nFrm.reset();
	}
});
</script>
		
