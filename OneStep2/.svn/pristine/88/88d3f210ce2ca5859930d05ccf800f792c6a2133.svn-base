<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="sub-header-container">
	<header class="header navbar navbar-expand-sm">
		<ul class="navbar-nav flex-row">
			<li>
				<div class="page-header">
					<nav class="breadcrumb-one" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0);">Apps</a></li>
							<li class="breadcrumb-item active" aria-current="page"><span>자유게시판</span></li>
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


<div class="layout-px-spacing">
	<div class="row layout-top-spacing">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-xl-12 col-md-12">
					<div class="card-box email-inbox">
						<div class="email-left">
							<div class="ripple-ripple js-ripple">
								<span class="ripple-ripple__circle"></span>
							</div>
							<div class="email-list mt-4">
								<a href="javascript: void(0);"> <i
									class="las la-exclamation-circle mr-2 font-17"></i>글번호 : &nbsp
									<span>${board.boardId }</span></a> <a href="javascript: void(0);">
									<i class="las la-inbox mr-2 font-17"></i> 작성자 : &nbsp
									${board.memId }
								</a> <a href="javascript: void(0);"> <i
									class="las la-star mr-2 font-17"></i> 작성일 : &nbsp <span><fmt:formatDate
											value="${board.boardStart }" pattern="yyyy-MM-dd" /> </span>
								</a> <a href="javascript: void(0);"> <i
									class="las la-clipboard-list mr-2 font-17"></i> 조회수 : &nbsp <span>${board.boardHit }</span>
								</a>

								<c:choose>
									<c:when test="${ empty goodList}">
										<a href="javascript: void(0);" id="card"><i
											class="far fa-heart" style="color: #f54242"></i>&nbsp 좋아요 </a>
									</c:when>
									<c:otherwise>
										<a href="javascript: void(0);" id="card"><i
											class="fa-solid fa-heart fa-lg" style="color: #f54242"></i>&nbsp
											좋아요 </a>
									</c:otherwise>

								</c:choose>



								<a href="javascript: void(0);" data-toggle="modal"
									data-target="#exampleModalCenter"> <i
									class="las la-trash mr-2 font-17"></i> 신고
								</a>
								<div class="modal fade" id="exampleModalCenter" tabindex="-1"
									aria-labelledby="exampleModalCenterTitle"
									style="display: none;" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalCenterTitle">신고하기</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<i class="las la-times"></i>
												</button>
											</div>
											<div class="modal-body ">
												<div class="form-group left col-10">
													<input type="hidden" class="form-control " id="memId"
														value="${sessionScope.memberVO.memId}" readonly="readonly">
												</div>
												<div class="form-group col-10">
													<input type="hidden" class="form-control " id="reportMem"
														value="${board.memId}" readonly="readonly">
												</div>
												<div class="form-group mb-1">
													<label for="exampleTextarea">신고내용 </label>
													<textarea class="form-control" id="reportContent" rows="10"
														cols="50"></textarea>
												</div>

											</div>
											<div class="modal-footer">
												<button class="btn" data-dismiss="modal">
													<i class="flaticon-cancel-12"></i> 닫기
												</button>
												<button type="button" id="reportBtn" class="btn btn-primary">신고하기</button>
											</div>
										</div>
									</div>
								</div>
								<a href="javascript: void(0);"> <i
									class="las la-tag mr-2 font-17"></i> 댓글 <%-- 										<if test="${board.recnt >0 }"> --%>
									<%-- 												<span style="color: red;">(${board.recnt })</span> --%>
									<!-- 										</if> -->
								</a>

							</div>
							<h6 class="mt-3 email-label">첨부파일</h6>
							<div class="col-md-12">
								<div class="card mb-1 shadow-none border border-light">
									<div class="p-2">
										<div class="row align-items-center">
											<div class="col pl-0">
												<c:if test="${not empty board.boardFileList }">
													<c:forEach items="${board.boardFileList }" var="boardFile">
														<div class="mailbox-attachment-info">
															<i class="fas fa-paperclip"></i>${boardFile.attFileName }
															<!-- 																<span class="mailbox-attachment-size clearfix mt-1"> -->
															<span>${boardFile.attFancySize }</span>
															<c:url value="/board/download" var="downloadURL">
																<c:param name="attId" value="${boardFile.attId }" />
															</c:url>
															<a href="${downloadURL }"> <!-- a태그는 다운로드 할때 쓸 것 -->
																<span class="font-25 text-primary mr-2"> <i
																	class="las la-download"></i>
															</span>
															</a>
															<!-- 																</span> -->
														</div>
													</c:forEach>
												</c:if>
											</div>
											<!--   <div class="col-auto">
                    Button
                    <a href="javascript:void(0);" class="font-25 text-primary mr-2">
                        <i class="las la-download"></i>
                    </a>
                </div> -->
										</div>
									</div>
								</div>
							</div>
							<!-- end col -->
						</div>
						<div class="email-right">
							<div class="email-right-bottom">
								<div class="mt-4 d-block">
									<h1 class="font-18">${board.boardTitle }</h1>
									<hr>
									<p>
										<c:out value="${board.boardContent }" escapeXml="false" />
									</p>
									<br> <br> <br> <br> <br> <br> <br>
									<br> <br> <br> <br> <br>


								</div>
								<!-- end row-->
								<div class="mt-3 text-right">
									<button type="button" class="btn btn-primary" id="listBtn" style="float: right;">
										<i class="">목록</i>
									</button>
									<c:if test="${sessionScope.memberVO.memId eq board.memId }">
										<button type="button" class="btn btn-info" id="updateBtn">수정</button>
										<button type="button" class="btn btn-danger" id="delBtn">삭제</button>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form action="/board/update" method="get" id="nFrm">
		<input type="hidden" name="boardId" value="${board.boardId }">
		<input type="hidden" name="boardCategory"
			value="${board.boardCategory }" id="boardCategory">
	</form>

	<!-- 댓글영역 -->
	<div class="col-12">
		<div class="row">
			<c:forEach items="${advertList }" var="advertList">
				<c:if test="${advertList.advertId == 8 }">
					<div class="col-xl-3">
						<img class="d-block w-100"
							src="/upload/${advertList.advertAtt }"
							onerror="this.src='${pageContext.request.contextPath }/resources/assets/img/111.png'"
							width="300px" height="260px" style="border-radius: 5px;">
					</div>
				</c:if>
			</c:forEach>
			<div class="apps-ticket col-xl-9 col-lg-10 ticket-details"
				style="float: right;">
				<div class="card d-block">
					<div class="card-body">
						<h4 class="mt-0 font-18" id="commTr">댓글</h4>
						<div class="media mt-4">
							<div class="media-body">
								<c:choose>
									<c:when test="${empty list}">
										<p>조회하실 댓글이 존재하지 않습니다.</p>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list}" var="comment">
											<h5 class="mt-0 mb-1 font-15">${comment.commMem }
												<input type="hidden" name="commId" id="commId"
													value="${comment.commId }">
												<!--                                                                 <a href="" class="bs-tooltip font-5 text-primary" title="Edit" data-original-title="Edit"> -->
												<c:if
													test="${sessionScope.memberVO.memId eq comment.commMem }">
													<i class="las la-pen"></i>
													</a>
													<a href="" class="bs-tooltip font-5 text-danger ml-2"
														id="delComm" title="Delete" data-original-title="Delete"><i
														class="las la-trash"></i></a>
												</c:if>
												<small class="text-muted float-right font-11"><fmt:formatDate
														value="${comment.commStart }" /></small>
											</h5>
											<span class="font-13" id="commentContent"
												value="${comment.commContent}">${comment.commContent}</span>
											<br />
											<a href="javascript: void(0);"
												class="text-muted font-13 d-inline-block mt-2"><i
												class="las la-reply"></i> Reply</a>


										</c:forEach>
									</c:otherwise>
								</c:choose>
								<br>
							</div>
						</div>
						<div class="form-group mb-0 align-center d-flex mt-5">
							<textarea id="addComment" name="addComment"
								placeholder="Type here" class="form-control" required=""></textarea>
<!-- 							<i class="las la-paperclip font-25 ml-2 pointer"></i> -->
							<button type="button" id="commentBtn" class="ml-2 btn-sm btn btn-primary">등록</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 댓글영역 -->

		</div>

	</div>
</div>




<script type="text/javascript">
	$(function() {
		var nFrm = $("#nFrm");
		var listBtn = $("#listBtn");
		var updateBtn = $("#updateBtn");
		var delBtn = $("#delBtn");
		var boardCategory = $("#boardCategory").val();
		var reportBtn = $('#reportBtn');

		//댓글
		var commentBtn = $("#commentBtn");
		// 	var commMem = $("#commMem");

		var delComm = $("#delComm"); //삭제버튼

		//////////////////////////////////
		listBtn.on("click", function() {
			location.href = "/board/list/" + boardCategory;
		});
		updateBtn.on("click", function() {
			nFrm.submit();
		});
		delBtn.on("click", function() {
			if (confirm("정말로 삭제하시겠습니까?")) {
				nFrm.attr("action", "/board/delete/" + boardCategory);
				nFrm.attr("method", "post");
				nFrm.submit();
			} else {
				nFrm.reset();
			}
		});

		// 	좋아요

		var card = $('#card');
		var likeval = "${like}";
		var boardId = "${board.boardId}";
		var memId = "${sessionScope.memberVO.memId}";
		// console.log("먼가가 나와야지"+ JSON.stringify(data));
		console.log("likeval이 나와야하는데 ", likeval);

		card.on("click", function(event) {
			var like = event.target.childNodes[0];
			console.log($(like).attr('class'));

			if ($(like).attr('class') == 'far fa-heart') {
				$(like).attr('class', 'fa-solid fa-heart fa-lg');
				$(like).attr('color', '#f54242');

				var object = {
					memId : memId,
					boardId : boardId
				}

				$.ajax({
					url : "/good/insert",
					type : "POST",
					data : JSON.stringify(object),
					contentType : "application/json; charset=UTF-8",
					success : function(res) {

					}
				});

			} else if ($(like).attr('class') == 'fa-solid fa-heart fa-lg') {
				$(like).attr('class', 'far fa-heart');
				$(like).attr('color', '');

				var object = {
					memId : memId,
					boardId : boardId
				}

				$.ajax({
					url : "/good/likeDown",
					type : "POST",
					data : JSON.stringify(object),
					contentType : "application/json; charset=UTF-8",
					success : function(res) {

					}
				});

			}

		});

		//등록 버튼 클릭시 댓글 등록 -- 리로드로 새로고침으로 확인
		commentBtn.on("click", function() {
			var addCommentVal = $("#addComment").val();
			var boardIdVal = "${board.boardId }";
			var memIdVal = "${sessionScope.memberVO.memId}";
			var commObject = {
				commContent : addCommentVal,
				boardId : boardIdVal,
				commMem : memIdVal
			}
			console.log("commObject>>", commObject);
			$.ajax({
				type : "post",
				url : "/comment/insert",
				data : JSON.stringify(commObject),
				contentType : "application/json; charset=UTF-8",
				success : function(result) {
					alert("댓글이 등록되었습니다.");
					// 				if(result ==="success"){
					// 					ComList();
					// 				}
					// 				ComList();
					location.reload();
				}

			});

		});

		delComm.on("click", function() {
			if (confirm("정말 삭제하시겠습니까?")) {
				$("#commentContent").val(this.dataset.no);
				// 		var commentContent = $("#commentContent").val();
				var commIdVal = $("#commId").val();
				// 		var memIdVal = "${sessionScope.memberVO.memId}";
				var commObject = {
					// 				commContent : this.dataset.no,
					commId : commIdVal
				// 				commMem : memIdVal
				}
				console.log("머가 나오려나>>>>>", commObject)

				$.ajax({
					type : "post",
					url : "/comment/delete",
					data : JSON.stringify(commObject),
					contentType : "application/json; charset=UTF-8",
					dataType : "json",
					success : function(result) {
						alert("댓글이 삭제되었습니다.");
						// 				location.reload();
					},
					error : function(result) {
						alert("댓글이 삭제되지 않았습니다.");

					}
				});
			}
		});

		reportBtn.on("click", function() {

			console.log('신고회원 ID :' + $('#memId').val());
			console.log('신고하는회원 ID :' + $('#reportMem').val());
			console.log('내용 :' + $('#reportContent').val());
			console.log('게시글 번호 : ' + '${board.boardId}');

			var obj = {
				memId : $('#memId').val(),
				reportMem : $('#reportMem').val(),
				reportContent : $('#reportContent').val(),
				boardId : '${board.boardId}'
			}
			var jsonObj = JSON.stringify(obj);
			$.ajax({
				url : "/board/report",
				type : "post",
				data : jsonObj,
				contentType : "application/json; charset=UTF-8",
				dataType : "text",
				success : function(res) {
					console.log(res);
					if (res === 'SUCCESS') {
						alert('신고가 완료되었습니다.');
						$('#exampleModalCenter').modal('hide');
					}

				}
			});
		});

	});
	;
</script>
































