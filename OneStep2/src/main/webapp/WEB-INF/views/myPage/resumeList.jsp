<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="sub-header-container">
	<header class="header navbar navbar-expand-sm">
		<ul class="navbar-nav flex-row">
			<li>
				<div class="page-header">
					<nav class="breadcrumb-one" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active" aria-current="page"><span>이력서 관리</span></li>
						</ol>
					</nav>
				</div>
			</li>
		</ul>
		<ul class="navbar-nav d-flex align-center ml-auto right-side-filter">
			<li class="">
				<p class="current-time" id="currentTime"></p>
				<p class="current-date" id="currentDate"></p>
			</li>
		</ul>
	</header>
</div>
<!--  Navbar Ends / Breadcrumb Area  -->
<!-- Main Body Starts -->
<div class="layout-px-spacing">
	<div class="layout-top-spacing mb-2">
		<div class="col-md-12">
			<div class="row">
				<div class="container p-0">
					<div class="row layout-top-spacing date-table-container">
						<!-- Datatable with export options -->
						<div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
							<div class="widget-content widget-content-area br-6">
								<h4 class="table-header">대표 이력서</h4>
								<div class="row">
									<div class="col-sm-8">
	                                    <select class="form-control" required>
											<option value="">대표 이력서를 선택해 주세요.</option>
	                                    	<c:forEach items="${list }" var="resume">
												<c:if test="${sessionScope.memberVO.memId eq resume.memId }">
			                                        <option value="${resume.resumeId }">${resume.resumeTitle }</option>
												</c:if>
											</c:forEach>
	                                    </select>
	                                </div>
	                                <div class="col-sm-4">
	                                    <button type="button" id="btnRepresentative" class="btn btn-primary">이력서 공개하기</button>
	                                    <button type="button" class="btn btn-outline-primary" onclick="location.href='/myPage/resume/insert'">이력서 작성</button>
	                                </div>
                                </div>
								<div class="table-responsive mb-4">	<br>
									<table id="export-dt" class="table table-hover" style="width: 100%; order:[[0, 'desc']];">
										<thead>
											<tr>
												<th style="display:none;">번호</th>
												<th>이력서 제목</th>
												<th>희망 직무 · 직업</th>
												<th>근무지역</th>
												<th>작성일</th>
												<th>희망 연봉</th>
												<th class="no-content"></th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${empty list }">
													<tr>
														<td colspan="6">작성한 이력서가 존재하지 않습니다.</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach items="${list }" var="resume">
														<c:if test="${sessionScope.memberVO.memId eq resume.memId }">
															<tr>
																<td id="resumeId" style="display:none;">${resume.resumeId }</td>
																<c:choose>
																	<c:when test="${resume.resumeRepresentative == '1' }">
																		<td id="badge"><a href="/myPage/resume/detail?resumeId=${resume.resumeId}">${resume.resumeTitle }</a>&nbsp;&nbsp;<span class='badge badge-danger'>대표</span></td>
																	</c:when>
																	<c:otherwise>
																		<td id="badge"><a href="/myPage/resume/detail?resumeId=${resume.resumeId}">${resume.resumeTitle }</a></td>
																	</c:otherwise>
																</c:choose>
																<td>${resume.workfieldList[0].workfield1 } </td>
																<td>${resume.desiredList[0].desiredCity1 }</td>
																<td>${resume.resumeInsertDate} </td>
																<td>${resume.desiredList[0].desiredSalary }만 원</td>
																<td><a href="/myPage/resume/modify?resumeId=${resume.resumeId }" title="Edit" class="font-20 text-primary"><i class="las la-edit"></i></a></td>
															</tr>
														</c:if>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Main Body Ends -->
<!-- <div class="responsive-msg-component"> -->
<!--     <p> -->
<!--         <a class="close-msg-component"><i class="las la-times"></i></a> -->
<!--         Please reload the page when you change the viewport size to view the responsive functionalities correctly -->
<!--     </p> -->
<!-- </div> -->
<!--  </div> -->
<!--  Content Area Ends  -->

<script>
$(document).ready(function() {
    $('#export-dt').DataTable( {
    	order: [[0, 'desc']],
   	ordering: true,
   	serverSide: false,
        dom: '<"row"<"col-md-6"B><"col-md-6"f> ><""rt> <"col-md-12"<"row"<"col-md-5"i><"col-md-7"p>>>',
        buttons: {
            buttons: [
                { extend: 'excel', className: 'btn btn-rounded btn-success' },
                { extend: 'pdf', className: 'btn btn-rounded btn-warning' },
                { extend: 'print', className: 'btn btn-rounded btn-info' }
            ]
        },
        "language": {
            "paginate": {
                "previous": "<i class='las la-angle-left'></i>",
                "next": "<i class='las la-angle-right'></i>"
            }
        },
        "lengthMenu": [7, 10, 20, 50],
        "pageLength": 10 
    });
    
	$(function() {
		var btnRepresentative = $("#btnRepresentative");
		
		btnRepresentative.on("click", function() {
			// 선택된 이력서의 값을 가져옴
			var resumeId = $("select").val();
			console.log("resumeId >> ", resumeId);
		    
			// 이력서 번호가 선택되었는지 확인
			if (resumeId !== "") {
				// ajax 요청으로 이력서 공개 여부 업데이트
				$.ajax({
					url: "/myPage/updateResumeRepresentative",  // 이력서 공개 상태 업데이트를 처리하는 서버의 URL
					method: "POST",
					data: {resumeId: resumeId},
					dataType: "json",  // 서버 응답을 JSON 형식으로 받아옴
					success: function(response) {
						// 성공적으로 업데이트된 경우에 실행될 콜백 함수
						console.log("이력서 공개 상태가 업데이트되었습니다.");
						console.log(response);  // 서버 응답 확인
					    // 선택된 이력서의 대표 배지 업데이트
					    $("td#resumeId").each(function() { // id가 resumeId인 모든 요소 반복 작업 수행
						    var id = $(this).text(); // 현재 이력서의 ID 가져오기
						    console.log("id >> ", id);
						    
						    var badgeElement = $(this).closest("tr").find("#badge"); // 현재 이력서의 대표 배지 요소 찾기
						
						    if (id === resumeId) { // 선택된 이력서와 현재 이력서의 ID 비교
						    	badgeElement.append("&nbsp;&nbsp;<span class='badge badge-danger'>대표</span>"); // 대표 배지 추가
						    } else {
								badgeElement.find(".badge-danger").remove(); // 대표 배지 제거
						    }
						});
	                },
					error: function(xhr, status, error) {
						// 업데이트에 실패한 경우에 실행될 콜백 함수
						console.error("이력서 공개 상태 업데이트 중 오류가 발생했습니다.");
						console.error(error);
					}
	               
				});
			} else {
				// 이력서 번호가 선택되지 않았을 때 알림 메시지 출력
				alert("이력서를 선택해 주세요.");
			}
		});
	});
    
    
    
    
    
});



</script>