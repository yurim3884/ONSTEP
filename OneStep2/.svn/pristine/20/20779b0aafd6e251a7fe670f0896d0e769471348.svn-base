<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 문의 답변 작성 -->

<div class="layout-px-spacing">
	<div class="layout-top-spacing mb-2">
	    <div class="col-md-12">
	        <div class="row">
	            <div class="container p-0">
	                <div class="row layout-top-spacing">
		                <c:set value="답변" var="name"/>
						<c:if test="${status eq 'u' }"><c:set value="답변 수정" var="name"/></c:if>
		                <div class="widget-heading">
							<h5 class="">문의 ${name }</h5>
						</div>
	                    <div class="col-lg-12 layout-spacing">
	                        <div class="statbox widget box box-shadow mb-4">
	                        <form action="/master/insertAnswer" method="post" id="answerForm">
		                        	<input type="hidden" value="${boardId }" name="boardId">
		                     		<c:if test="${status eq 'u' }">
										<input type="hidden" name="answerId" value="${updateAnswer.answerId }">
									</c:if>
	                            <div class="widget-content widget-content-area">
	                                <div class="form-group">
	                                    <label>제목<span class="text-danger"></span></label>
	                                    <input type="text" class="form-control" name="answerTitle" id="answerTitle" value="${updateAnswer.answerTitle }">
	                                </div>
	                                <div class="form-group">
	                                    <label for="exampleInputPassword1">내용<span class="text-danger"></span></label>
	                                    <textarea rows="10" class="form-control"  name="answerContent" id="answerContent">${updateAnswer.answerContent }</textarea>
	                                </div>
	                            </div>
						        <div class="widget-footer text-right">
										<input type="button" value="${name }" id="insertBtn" class="btn btn-primary mr-2">
										<input type="button" value="목록" id="listBtn" class="btn btn-outline-primary"> 
									<c:if test="${status eq 'u' }">
										<input type="button" value="취소" id="cancelBtn" class="btn btn-outline-primary"> 
									</c:if>
						        </div>
					        </form>
						    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$(function(){
	CKEDITOR.replace('answerContent',{
		
	});
});

var listBtn = $("#listBtn");
var insertBtn = $("#insertBtn");
var answerForm = $("#answerForm");
var cancelBtn = $("#cancelBtn");

cancelBtn.on("click", function(){
	location.href = "/master/inquirydetail?boardId=${inquirydetail.boardId}";
});

listBtn.on("click", function(){
	location.href = "/master/inquirylist";
});

insertBtn.on("click", function(){
	// 입력 데이터 일반 검증
	var answerTitle = $("#answerTitle").val();
	var answerContent = CKEDITOR.instances.answerContent.getData();
	
	if(answerTitle == "" || answerTitle == null){
		alert("제목을 입력해주세요!");
		return false;
	}
	
	if(answerContent == "" || answerContent == null){
		alert("내용을 입력해주세요!");
		return false;
	}
	
	if($(this).val() == "답변 수정"){
		answerForm.attr("action", "/master/updateAnswer");	
	}
	
	answerForm.submit();
});
</script>