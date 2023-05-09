<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:formatDate value="${now }" pattern="yyyy-MM-dd" var="today" />

<style>
.card-title {
	width: 150px; /* 너비는 변경될수 있습니다. */
	text-overflow: ellipsis; /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
	white-space: nowrap; /* 줄바꿈을 하지 않습니다. */
	overflow: hidden; /* 내용이 길면 감춤니다 */
	display: block; /* ie6이상 현재요소를 블럭처리합니다. */
}

.card-text {
	width: 125px; /* 너비는 변경될수 있습니다. */
	text-overflow: ellipsis; /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
	white-space: nowrap; /* 줄바꿈을 하지 않습니다. */
	overflow: hidden; /* 내용이 길면 감춤니다 */
	display: block; /* ie6이상 현재요소를 블럭처리합니다. */
}
</style>

<div class="col-xl-12 col-lg-12 col-md-12"
	style="width: 80%; margin: 0 auto;">
	<div class="row">
		<div class="col-md-12">
			<div class="input-group m-t-10">
				<input type="text" id="text" class="form-control"
					placeholder="원하는기업을 검색해보세요"> <span
					class="input-group-append">
					<button type="button" class="btn btn-primary">Search</button>
				</span>
			</div>
			<div class="col-xl-12 col-lg-12 col-md-12">
				<table class="table mb-0" id="searchTable" style="display: none;">
					<thead>
						<tr>
							<th>기업명</th>
						</tr>
					</thead>
					<tbody id="table">
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<p class="display-4 " style="margin-top: 5%" align="center">채용 정보</p>
	<br> <br>

	<div class="row">
		<div id="tabsWithIcons" class="col-xl-10 layout-spacing">
			<div
				class="widget-content widget-content-area rounded-corner-pills-icon">
				<ul class="nav nav-pills mb-4 mt-3  justify-content-center"
					id="rounded-corner-pills-icon-tab" role="tablist">
					<li class="nav-item ml-2 mr-2"><a
						class="nav-link mb-2 active text-center"
						id="rounded-corner-pills-icon-home-tab" data-toggle="pill"
						href="#rounded-corner-pills-icon-home" role="tab"
						aria-controls="rounded-corner-pills-icon-home"
						aria-selected="true"><i class="las la-home"></i> 회사 유형</a></li>
					<li class="nav-item ml-2 mr-2"><a
						class="nav-link mb-2 text-center"
						id="rounded-corner-pills-icon-about-tab" data-toggle="pill"
						href="#rounded-corner-pills-icon-about" role="tab"
						aria-controls="rounded-corner-pills-icon-about"
						aria-selected="false"><i class="las la-user-tie"></i> 지역</a></li>
					<li class="nav-item ml-2 mr-2"><a
						class="nav-link mb-2 text-center"
						id="rounded-corner-pills-icon-messages-tab" data-toggle="pill"
						href="#rounded-corner-pills-icon-messages" role="tab"
						aria-controls="rounded-corner-pills-icon-messages"
						aria-selected="false"><i class="las la-envelope-open-text"></i>
							모집분야</a></li>
				</ul>
				<div class="tab-content" id="rounded-corner-pills-icon-tabContent">
					<div class="tab-pane fade show active"
						id="rounded-corner-pills-icon-home" role="tabpanel"
						aria-labelledby="rounded-corner-pills-icon-home-tab">
						<div id="searchBtn" style="width: 100%;">
							<button type="button" class="btn btn-outline-info btn-rounded">개발</button>
							<button type="button" class="btn btn-outline-info btn-rounded">교육</button>
							<button type="button" class="btn btn-outline-info btn-rounded">금융/재무</button>
							<button type="button" class="btn btn-outline-info btn-rounded">기획/경영</button>
							<button type="button" class="btn btn-outline-info btn-rounded">데이터</button>
							<button type="button" class="btn btn-outline-info btn-rounded">디자인</button>
							<button type="button" class="btn btn-outline-info btn-rounded">마케팅/시장조사</button>
							<button type="button" class="btn btn-outline-info btn-rounded">미디어/홍보</button>
							<button type="button" class="btn btn-outline-info btn-rounded">법률/법무</button>
							<button type="button" class="btn btn-outline-info btn-rounded">생산/제조</button>
							<button type="button" class="btn btn-outline-info btn-rounded">생산관리/품질관리</button>
							<button type="button" class="btn btn-outline-info btn-rounded">서비스/고객지원</button>
							<button type="button" class="btn btn-outline-info btn-rounded">엔지니어링</button>
							<button type="button" class="btn btn-outline-info btn-rounded">연구개발</button>
							<button type="button" class="btn btn-outline-info btn-rounded">영업/제휴</button>
							<button type="button" class="btn btn-outline-info btn-rounded">유통/무역</button>
							<button type="button" class="btn btn-outline-info btn-rounded">의약</button>
							<button type="button" class="btn btn-outline-info btn-rounded">인사/총무</button>
							<button type="button" class="btn btn-outline-info btn-rounded">전문직</button>
							<button type="button" class="btn btn-outline-info btn-rounded">특수계층/공공</button>
							<i id="resetBtn" class="fa-solid fa-trash fa-xl"
								style="cursor: pointer; margin-left: 15px; margin-top: 10px;"></i>
						</div>
					</div>
					<div class="tab-pane fade" id="rounded-corner-pills-icon-about"
						role="tabpanel"
						aria-labelledby="rounded-corner-pills-icon-about-tab">
						<div id="searchBtn2" style="width: 100%;">
							<button type="button" class="btn btn-outline-info btn-rounded">서울</button>
							<button type="button" class="btn btn-outline-info btn-rounded">경기</button>
							<button type="button" class="btn btn-outline-info btn-rounded">인천</button>
							<button type="button" class="btn btn-outline-info btn-rounded">대전</button>
							<button type="button" class="btn btn-outline-info btn-rounded">세종</button>
							<button type="button" class="btn btn-outline-info btn-rounded">충남</button>
							<button type="button" class="btn btn-outline-info btn-rounded">충북</button>
							<button type="button" class="btn btn-outline-info btn-rounded">광주</button>
							<button type="button" class="btn btn-outline-info btn-rounded">전남</button>
							<button type="button" class="btn btn-outline-info btn-rounded">전북</button>
							<button type="button" class="btn btn-outline-info btn-rounded">대구</button>
							<button type="button" class="btn btn-outline-info btn-rounded">경북</button>
							<button type="button" class="btn btn-outline-info btn-rounded">부산</button>
							<button type="button" class="btn btn-outline-info btn-rounded">울산</button>
							<button type="button" class="btn btn-outline-info btn-rounded">경남</button>
							<button type="button" class="btn btn-outline-info btn-rounded">강원</button>
							<button type="button" class="btn btn-outline-info btn-rounded">제주</button>
						</div>
					</div>
					<div class="tab-pane fade" id="rounded-corner-pills-icon-messages"
						role="tabpanel"
						aria-labelledby="rounded-corner-pills-icon-messages-tab">
						<div id="searchBtn3" style="width: 100%;">
							<button type="button" class="btn btn-outline-info btn-rounded">기획·전략</button>
							<button type="button" class="btn btn-outline-info btn-rounded">법무·사무·총무</button>
							<button type="button" class="btn btn-outline-info btn-rounded">인사·HR</button>
							<button type="button" class="btn btn-outline-info btn-rounded">회계·세무</button>
							<button type="button" class="btn btn-outline-info btn-rounded">마케팅·광고·MD</button>
							<button type="button" class="btn btn-outline-info btn-rounded">개발·데이터</button>
							<button type="button" class="btn btn-outline-info btn-rounded">디자인</button>
							<button type="button" class="btn btn-outline-info btn-rounded">물류·무역</button>
							<button type="button" class="btn btn-outline-info btn-rounded">운전·운송·배송
							</button>
							<button type="button" class="btn btn-outline-info btn-rounded">영업
							</button>
							<button type="button" class="btn btn-outline-info btn-rounded">고객상담·TM</button>
							<button type="button" class="btn btn-outline-info btn-rounded">금융·보험</button>
							<button type="button" class="btn btn-outline-info btn-rounded">식·음료</button>
							<button type="button" class="btn btn-outline-info btn-rounded">고객서비스·리테일</button>
							<button type="button" class="btn btn-outline-info btn-rounded">엔지니어링·설계</button>
							<button type="button" class="btn btn-outline-info btn-rounded">제조·생산</button>
							<button type="button" class="btn btn-outline-info btn-rounded">교육</button>
							<button type="button" class="btn btn-outline-info btn-rounded">건축·시설</button>
							<button type="button" class="btn btn-outline-info btn-rounded">의료·바이오</button>
							<button type="button" class="btn btn-outline-info btn-rounded">미디어·문화·스포츠</button>
							<button type="button" class="btn btn-outline-info btn-rounded">공공·복지</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xl-2 layout-spacing">
				<div id="slidesOnly" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
						<c:forEach items="${advertList }" var="advertList">
							<c:if test="${advertList.advertId == 5 }">
								<div class="carousel-item active">
									<img class="d-block w-100" alt="First slide"
										src="/upload/${advertList.advertAtt }" onerror="this.src='${pageContext.request.contextPath }/resources/assets/img/00001.png'"
										width="160px" height="230px">
								</div>
							</c:if>
							<c:if test="${advertList.advertId == 6 }">
								<div class="carousel-item">
									<img class="d-block w-100" alt="Second slide"
										src="/upload/${advertList.advertAtt }" onerror="this.src='${pageContext.request.contextPath }/resources/assets/img/00002.png'"
										width="160px" height="230px">
								</div>
							</c:if>
							<c:if test="${advertList.advertId == 7 }">
								<div class="carousel-item">
									<img class="d-block w-100" alt="Second slide"
										src="/upload/${advertList.advertAtt }" onerror="this.src='${pageContext.request.contextPath }/resources/assets/img/00003.png'"
										width="160px" height="230px">
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
		</div>
		<!-- 		<div class="col-xl-2 layout-spacing"> -->
		<!-- 			<img alt="" -->
		<%-- 				src="${pageContext.request.contextPath }/resources/assets/img/sddd.png" --%>
		<!-- 				width="160px" height="230px"> -->
		<!-- 		</div> -->
	</div>

	<br> <select class="form-control col-lg-2 mt-3" id="select">
		<option value="new">최신순</option>
		<option value="score">평점순</option>
	</select> <br>
	<div class="searchable-items grid card-box ">
		<div id="card" class="row w-100 m-0">
			<c:forEach var="annoList" items="${annoList}">
				<div class="col-xl-3 col-lg-3 col-md-3 mb-4">
					<div class="card single-seller"
						style="border-radius: 3%; z-index: 33; box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid; height: 425px;">
						<div style="position: relative;">
							<p id="comId" hidden="true">${annoList.comId}</p>

							<c:choose>
								<c:when test="${fn:contains(supList, annoList.comId)}">
									<c:set var="likeFlag"
										value="<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>" />
								</c:when>
								<c:otherwise>
									<c:set var="likeFlag"
										value="<i id='unlike' class='fa-regular fa-heart fa-lg'></i>" />
								</c:otherwise>
							</c:choose>
							<img height="100px;" width="160px;"
								src="/upload/${annoList.companyVO.companyLogo}" class="card-img"
								alt="widget-card-2"> <a
								style="position: absolute; top: 5px; right: 12px; cursor: pointer;">${likeFlag}</a>
						</div>
						<div class="card-body">
							<h5 class="card-title mt-3">
								<a href="/member/detailAnno/${annoList.annoId} ">${annoList.annoTitle}</a>
							</h5>
							<h5 class="card-title mt-3">
								<a href="/member/detail/${annoList.comId}">${annoList.companyVO.companyName}</a>
								<i class="fa-solid fa-star" style="color: #f5d400;"></i>${annoList.reviewVO.reviewScore}
							</h5>
							<div>
								<p class="card-text">지원조건 :${annoList.annoJo}</p>
								<p class="card-text">우대사항 :${annoList.annoUd}</p>
								<p class="card-text">모집분야 :${annoList.annoMb}</p>
								<p class="card-text">담당업무 :${annoList.annoDm1}
									${annoList.annoDm2}</p>
								<p class="card-text">
									복지 및 급여 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoList.reviewVO.reviewWelfare}</p>
								<p class="card-text">
									업무와 삶의 균형 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoList.reviewVO.reviewBalance}</p>
								<p class="card-text">
									승진 및 가능성 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoList.reviewVO.reviewVision}</p>
								<div class="team"></div>
								<div class="meta-info">
									<div class="meta-action">
										<div class="meta-bottom-info">
											<span class="strong" style="color: #db1414;">마감일</span>
											<fmt:formatDate value="${annoList.annoEndDate}"
												pattern="yyyy-MM-dd" var="endDate" />
											<span class="strong" style="color: #db1414;">${endDate}</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>

	<!-- 	<div class="col-lg-3 layout-spacing"> -->
	<!-- 	<h1>음</h1> -->
	<!-- 	</div> -->

</div>



<script type="text/javascript">
	$(function() {

		var text = $('#text');
		var select = $('#select');
		var card = $('#card');
		var memId = '${memberVO.memId}';
		var searchBtn = $('#searchBtn');
		var searchBtn2 = $('#searchBtn2');
		var searchBtn3 = $('#searchBtn3');
		var searchType = [];

		console.log('멤버아이디 : ' + memId);
		text
				.on(
						"keyup",
						function() {

							if ($('#text').val() != "") {
								$
										.ajax({
											url : "/company/searchCompanyList",
											type : "get",
											data : {
												companyName : text.val()
											},
											success : function(res) {

												$("#table").html("");
												html = "";

												for (let i = 0; i < res.length; i++) {

													html = "";

													console
															.log('기업명 : '
																	+ res[i]['companyName']);
													companyId = res[i]['companyId'];
													html += `<tr>`;
													html += "<td><a href= '/member/detail/"+companyId+"'"+">"
															+ res[i]['companyName']
															+ '</a></td>';
													html += `</tr>`;

													$("#table").append(html);
												}

												console.log($('#text').val());

												if (res.length > 0) {
													$('#searchTable').css(
															'display', 'table');
												}

											}

										});
							} else {
								$('#searchTable').css('display', 'none');
							}

						});

		select
				.on(
						"change",
						function() {

							searchType[0] = $('#select').val();
							console.log(searchType);
							var jsonObj = JSON.stringify(searchType);

							$
									.ajax({
										url : "/company/ajaxAnnoSearch",
										type : "post",
										contentType : "application/json;charset=UTF-8",
										data : jsonObj,
										success : function(res) {
											var html = "";
											for (var i = 0; i < res.annoList.length; i++) {
												html += "<div class='col-xl-3 col-lg-3 col-md-3 mb-4'  >";
												html += "    <div class='card single-seller' style='border-radius: 3%; z-index: 33;  box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid; height:425px;'  >";
												html += "	   <div style='position: relative;'>";
												html += "		 <p id='comId' hidden='true'>"
														+ res.annoList[i].comId
														+ "</p>";
												html += "        <img height='100px;' width='160px;'  src='/upload/" + res.annoList[i].companyVO.companyLogo + "' class='card-img' alt='widget-card-2'>";
												html += "		 <a style='position: absolute; top: 5px; right: 12px; cursor: pointer;'>";

												var comIdGroup = res.comIdGroup;

												var heart = "";
												if (comIdGroup.includes(",")) {
													var comIdGroupSplit = comIdGroup
															.split(",");
													for (var j = 0; j < comIdGroupSplit.length; j++) {
														console
																.log(comIdGroupSplit);
														if (comIdGroupSplit[j] == res.annoList[i].comId) {
															heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
															break;
														} else {
															heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
														}
													}
												} else {
													if (comIdGroup == res.annoList[i].comId) {
														heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
													} else {
														heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
													}
												}
												html += "		 " + heart;
												html += "		 ";
												html += "		 </a>";
												html += " 	   </div>";
												html += "        <div class='card-body'>";
												html += "            <h5  class='card-title mt-3'><a href='/member/detailAnno/"+res.annoList[i].annoId+"'>"
														+ res.annoList[i].annoTitle
														+ "</a></h5>";
												html += "            <h5  class='card-title mt-3'><a href='/member/detail/"+res.annoList[i].comId+"'>"
														+ res.annoList[i].companyVO.companyName
														+ "</a><i class='fa-solid fa-star' style='color: #f5d400; '></i>"
														+ res.annoList[i].reviewVO.reviewScore
														+ "</h5>";
												html += "            <p  class='card-text'>지원조건 :"
														+ res.annoList[i].annoJo
														+ "</p>";
												html += "            <p class='card-text'>우대사항 :"
														+ res.annoList[i].annoUd
														+ "</p>";
												html += "            <p  class='card-text'>모집분야 :"
														+ res.annoList[i].annoMb
														+ "</p>";
												html += "            <p  class='card-text'>담당업무 :"
														+ res.annoList[i].annoDm
														+ "</p>";
												html += "            <p  class='card-text'>복지 및 급여 : <i class='fa-solid fa-star' style='color: #6bf80d;'></i>"
														+ res.annoList[i].reviewVO.reviewWelfare
														+ "</p>";
												html += "            <p  class='card-text'>업무와 삶의 균형 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
														+ res.annoList[i].reviewVO.reviewBalance
														+ "</p>";
												html += "            <p  class='card-text'>승진 및 가능성 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
														+ res.annoList[i].reviewVO.reviewVision
														+ "</p>";
												html += "            <div  class='team'>";
												html += "            </div>";
												html += "            <div class='meta-info'>";
												html += "                <div class='meta-action'>";
												html += "                    <div class='meta-bottom-info'>";
												html += "                        <span class='strong' style='color: #db1414; '>마감일</span><span class='strong' style='color: #db1414; '>"
														+ res.annoList[i].annoEndDate
														+ "</span>";
												html += "                    </div>";
												html += "                </div>";
												html += "            </div>";
												html += "        </div>";
												html += "    </div>";
												html += "</div>";
											}
											$("#card").html(html);

										}
									});
						});

		card
				.on(
						"click",
						function(event) {

							if (event.target.id == 'unlike') {
								console
										.log(event.target.parentNode.parentNode.firstChild.nextElementSibling.innerHTML);
								var comId = event.target.parentNode.parentNode.firstChild.nextElementSibling.innerHTML;

								$
										.ajax({

											url : "/member/companyLike",
											type : "get",
											data : {
												memId : memId,
												comId : comId
											},
											success : function(res) {

												console.log(res);
												$(event.target)
														.attr('class',
																'fa-solid fa-heart fa-lg');
												$(event.target).css('color',
														'#f54242');
												$(event.target).attr('id',
														'like');

											}

										});

							}

							if (event.target.id == 'like') {
								console
										.log(event.target.parentNode.parentNode.firstChild.nextElementSibling.innerHTML);
								var comId = event.target.parentNode.parentNode.firstChild.nextElementSibling.innerHTML;

								$.ajax({

									url : "/member/companyDelLike",
									type : "get",
									data : {
										memId : memId,
										comId : comId
									},
									success : function(res) {

										console.log(res);
										$(event.target).attr('class',
												'fa-regular fa-heart fa-lg');
										$(event.target).css('color', '');
										$(event.target).attr('id', 'unlike');
									}
								});
							}
						});

		searchBtn
				.on(
						"click",
						function(event) {

							if (event.target.type == 'button') {
								searchType.shift();
								if ($(event.target).attr('class') == 'btn btn-outline-info btn-rounded') {

									$(event.target).attr('class',
											'btn btn-info btn-rounded');
									searchType.push($(event.target).text());
									console.log('지금 :' + searchType);

								} else if ($(event.target).attr('class') == 'btn btn-info btn-rounded') {

									$(event.target).attr('class',
											'btn btn-outline-info btn-rounded');
									var del = searchType
											.indexOf($(event.target).text());
									searchType.splice(del, 1);

								}

								searchType.unshift($('#select').val());

								console.log(searchType);
								var jsonObj = JSON.stringify(searchType);

								$
										.ajax({
											url : "/company/ajaxAnnoSearch",
											type : "post",
											contentType : "application/json;charset=UTF-8",
											data : jsonObj,
											success : function(res) {
												var html = "";
												for (var i = 0; i < res.annoList.length; i++) {
													html += "<div class='col-xl-3 col-lg-3 col-md-3 mb-4'  >";
													html += "    <div class='card single-seller' style='border-radius: 3%; z-index: 33;  box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid; height:425px;'  >";
													html += "	   <div style='position: relative;'>";
													html += "		 <p id='comId' hidden='true'>"
															+ res.annoList[i].comId
															+ "</p>";
													html += "        <img height='100px;' width='160px;'  src='/upload/" + res.annoList[i].companyVO.companyLogo + "' class='card-img' alt='widget-card-2'>";
													html += "		 <a style='position: absolute; top: 5px; right: 12px; cursor: pointer;'>";

													var comIdGroup = res.comIdGroup;

													var heart = "";
													if (comIdGroup
															.includes(",")) {
														var comIdGroupSplit = comIdGroup
																.split(",");
														for (var j = 0; j < comIdGroupSplit.length; j++) {
															if (comIdGroupSplit[j] == res.annoList[i].comId) {
																heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
																break;
															} else {
																heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
															}
														}
													} else {
														if (comIdGroup == res.annoList[i].comId) {
															heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
														} else {
															heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
														}
													}
													html += "		 " + heart;
													html += "		 ";
													html += "		 </a>";
													html += " 	   </div>";
													html += "        <div class='card-body'>";
													html += "            <h5  class='card-title mt-3'><a href='/member/detailAnno/"+res.annoList[i].annoId+"'>"
															+ res.annoList[i].annoTitle
															+ "</a></h5>";
													html += "            <h5  class='card-title mt-3'><a href='/member/detail/"+res.annoList[i].comId+"'>"
															+ res.annoList[i].companyVO.companyName
															+ "</a><i class='fa-solid fa-star' style='color: #f5d400; '></i>"
															+ res.annoList[i].reviewVO.reviewScore
															+ "</h5>";
													html += "            <p  class='card-text'>지원조건 :"
															+ res.annoList[i].annoJo
															+ "</p>";
													html += "            <p class='card-text'>우대사항 :"
															+ res.annoList[i].annoUd
															+ "</p>";
													html += "            <p  class='card-text'>모집분야 :"
															+ res.annoList[i].annoMb
															+ "</p>";
													html += "            <p  class='card-text'>담당업무 :"
															+ res.annoList[i].annoDm1
															+ "</p>";
													html += "            <p  class='card-text'>복지 및 급여 : <i class='fa-solid fa-star' style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewWelfare
															+ "</p>";
													html += "            <p  class='card-text'>업무와 삶의 균형 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewBalance
															+ "</p>";
													html += "            <p  class='card-text'>승진 및 가능성 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewVision
															+ "</p>";
													html += "            <div  class='team'>";
													html += "            </div>";
													html += "            <div class='meta-info'>";
													html += "                <div class='meta-action'>";
													html += "                    <div class='meta-bottom-info'>";
													html += "                        <span class='strong' style='color: #db1414; '>마감일</span><span class='strong' style='color: #db1414; '>"
															+ res.annoList[i].annoEndDate
															+ "</span>";
													html += "                    </div>";
													html += "                </div>";
													html += "            </div>";
													html += "        </div>";
													html += "    </div>";
													html += "</div>";
												}
												$("#card").html(html);

											}
										});
							}

							if ($(event.target).attr('class') == 'fa-solid fa-trash fa-xl') {

								console.log($('#searchBtn>*'));
								buttonList = $('#searchBtn>*');
								for (var i = 0; i < buttonList.length - 1; i++) {
									$(buttonList[i]).attr('class',
											'btn btn-outline-info btn-rounded');
								}
								searchType = [];
								searchType.push($('#select').val());

								console.log('초기화 : ' + searchType);
								var jsonObj = JSON.stringify(searchType);

								$
										.ajax({
											url : "/company/ajaxAnnoSearch",
											type : "post",
											contentType : "application/json;charset=UTF-8",
											data : jsonObj,
											success : function(res) {
												var html = "";
												for (var i = 0; i < res.annoList.length; i++) {
													html += "<div class='col-xl-3 col-lg-3 col-md-3 mb-4'  >";
													html += "    <div class='card single-seller' style='border-radius: 3%; z-index: 33;  box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid; height:425px;'  >";
													html += "	   <div style='position: relative;'>";
													html += "		 <p id='comId' hidden='true'>"
															+ res.annoList[i].comId
															+ "</p>";
													html += "        <img height='100px;' width='160px;'  src='/upload/" + res.annoList[i].companyVO.companyLogo + "' class='card-img' alt='widget-card-2'>";
													html += "		 <a style='position: absolute; top: 5px; right: 12px; cursor: pointer;'>";

													var comIdGroup = res.comIdGroup;

													var heart = "";
													if (comIdGroup
															.includes(",")) {
														var comIdGroupSplit = comIdGroup
																.split(",");
														for (var j = 0; j < comIdGroupSplit.length; j++) {
															if (comIdGroupSplit[j] == res.annoList[i].comId) {
																heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
																break;
															} else {
																heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
															}
														}
													} else {
														if (comIdGroup == res.annoList[i].comId) {
															heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
														} else {
															heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
														}
													}
													html += "		 " + heart;
													html += "		 ";
													html += "		 </a>";
													html += " 	   </div>";
													html += "        <div class='card-body'>";
													html += "            <h5  class='card-title mt-3'><a href='/member/detailAnno/"+res.annoList[i].annoId+"'>"
															+ res.annoList[i].annoTitle
															+ "</a></h5>";
													html += "            <h5  class='card-title mt-3'><a href='/member/detail/"+res.annoList[i].comId+"'>"
															+ res.annoList[i].companyVO.companyName
															+ "</a><i class='fa-solid fa-star' style='color: #f5d400; '></i>"
															+ res.annoList[i].reviewVO.reviewScore
															+ "</h5>";
													html += "            <p  class='card-text'>지원조건 :"
															+ res.annoList[i].annoJo
															+ "</p>";
													html += "            <p class='card-text'>우대사항 :"
															+ res.annoList[i].annoUd
															+ "</p>";
													html += "            <p  class='card-text'>모집분야 :"
															+ res.annoList[i].annoMb
															+ "</p>";
													html += "            <p  class='card-text'>담당업무 :"
															+ res.annoList[i].annoDm1
															+ "</p>";
													html += "            <p  class='card-text'>복지 및 급여 : <i class='fa-solid fa-star' style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewWelfare
															+ "</p>";
													html += "            <p  class='card-text'>업무와 삶의 균형 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewBalance
															+ "</p>";
													html += "            <p  class='card-text'>승진 및 가능성 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewVision
															+ "</p>";
													html += "            <div  class='team'>";
													html += "            </div>";
													html += "            <div class='meta-info'>";
													html += "                <div class='meta-action'>";
													html += "                    <div class='meta-bottom-info'>";
													html += "                        <span class='strong' style='color: #db1414; '>마감일</span><span class='strong' style='color: #db1414; '>"
															+ res.annoList[i].annoEndDate
															+ "</span>";
													html += "                    </div>";
													html += "                </div>";
													html += "            </div>";
													html += "        </div>";
													html += "    </div>";
													html += "</div>";
												}
												$("#card").html(html);

											}
										});
							}
						});

		searchBtn2
				.on(
						"click",
						function(event) {

							if (event.target.type == 'button') {
								searchType.shift();
								if ($(event.target).attr('class') == 'btn btn-outline-info btn-rounded') {

									$(event.target).attr('class',
											'btn btn-info btn-rounded');
									searchType.push($(event.target).text());

								} else if ($(event.target).attr('class') == 'btn btn-info btn-rounded') {

									$(event.target).attr('class',
											'btn btn-outline-info btn-rounded');
									var del = searchType
											.indexOf($(event.target).text());
									searchType.splice(del, 1);

								}

								searchType.unshift($('#select').val());

								console.log(searchType);
								var jsonObj = JSON.stringify(searchType);

								$
										.ajax({
											url : "/company/ajaxAnnoRegionSearch",
											type : "post",
											contentType : "application/json;charset=UTF-8",
											data : jsonObj,
											success : function(res) {
												var html = "";
												for (var i = 0; i < res.annoList.length; i++) {
													html += "<div class='col-xl-3 col-lg-3 col-md-3 mb-4'  >";
													html += "    <div class='card single-seller' style='border-radius: 3%; z-index: 33;  box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid; height:425px;'  >";
													html += "	   <div style='position: relative;'>";
													html += "		 <p id='comId' hidden='true'>"
															+ res.annoList[i].comId
															+ "</p>";
													html += "        <img height='100px;' width='160px;'  src='/upload/" + res.annoList[i].companyVO.companyLogo + "' class='card-img' alt='widget-card-2'>";
													html += "		 <a style='position: absolute; top: 5px; right: 12px; cursor: pointer;'>";

													var comIdGroup = res.comIdGroup;

													var heart = "";
													if (comIdGroup
															.includes(",")) {
														var comIdGroupSplit = comIdGroup
																.split(",");
														for (var j = 0; j < comIdGroupSplit.length; j++) {
															if (comIdGroupSplit[j] == res.annoList[i].comId) {
																heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
																break;
															} else {
																heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
															}
														}
													} else {
														if (comIdGroup == res.annoList[i].comId) {
															heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
														} else {
															heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
														}
													}
													html += "		 " + heart;
													html += "		 ";
													html += "		 </a>";
													html += " 	   </div>";
													html += "        <div class='card-body'>";
													html += "            <h5  class='card-title mt-3'><a href='/member/detailAnno/"+res.annoList[i].annoId+"'>"
															+ res.annoList[i].annoTitle
															+ "</a></h5>";
													html += "            <h5  class='card-title mt-3'><a href='/member/detail/"+res.annoList[i].comId+"'>"
															+ res.annoList[i].companyVO.companyName
															+ "</a><i class='fa-solid fa-star' style='color: #f5d400; '></i>"
															+ res.annoList[i].reviewVO.reviewScore
															+ "</h5>";
													html += "            <p  class='card-text'>지원조건 :"
															+ res.annoList[i].annoJo
															+ "</p>";
													html += "            <p class='card-text'>우대사항 :"
															+ res.annoList[i].annoUd
															+ "</p>";
													html += "            <p  class='card-text'>모집분야 :"
															+ res.annoList[i].annoMb
															+ "</p>";
													html += "            <p  class='card-text'>담당업무 :"
															+ res.annoList[i].annoDm1
															+ "</p>";
													html += "            <p  class='card-text'>복지 및 급여 : <i class='fa-solid fa-star' style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewWelfare
															+ "</p>";
													html += "            <p  class='card-text'>업무와 삶의 균형 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewBalance
															+ "</p>";
													html += "            <p  class='card-text'>승진 및 가능성 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewVision
															+ "</p>";
													html += "            <div  class='team'>";
													html += "            </div>";
													html += "            <div class='meta-info'>";
													html += "                <div class='meta-action'>";
													html += "                    <div class='meta-bottom-info'>";
													html += "                        <span class='strong' style='color: #db1414; '>마감일</span><span class='strong' style='color: #db1414; '>"
															+ res.annoList[i].annoEndDate
															+ "</span>";
													html += "                    </div>";
													html += "                </div>";
													html += "            </div>";
													html += "        </div>";
													html += "    </div>";
													html += "</div>";
												}
												$("#card").html(html);
											}
										});
							}
						});
		searchBtn3
				.on(
						"click",
						function(event) {

							if (event.target.type == 'button') {
								searchType.shift();
								if ($(event.target).attr('class') == 'btn btn-outline-info btn-rounded') {

									$(event.target).attr('class',
											'btn btn-info btn-rounded');
									searchType.push($(event.target).text());

								} else if ($(event.target).attr('class') == 'btn btn-info btn-rounded') {

									$(event.target).attr('class',
											'btn btn-outline-info btn-rounded');
									var del = searchType
											.indexOf($(event.target).text());
									searchType.splice(del, 1);

								}

								searchType.unshift($('#select').val());

								console.log(searchType);
								var jsonObj = JSON.stringify(searchType);

								$
										.ajax({
											url : "/company/ajaxAnnoJobSearch",
											type : "post",
											contentType : "application/json;charset=UTF-8",
											data : jsonObj,
											success : function(res) {
												var html = "";
												for (var i = 0; i < res.annoList.length; i++) {
													html += "<div class='col-xl-3 col-lg-3 col-md-3 mb-4'  >";
													html += "    <div class='card single-seller' style='border-radius: 3%; z-index: 33;  box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid; height:425px;'  >";
													html += "	   <div style='position: relative;'>";
													html += "		 <p id='comId' hidden='true'>"
															+ res.annoList[i].comId
															+ "</p>";
													html += "        <img height='100px;' width='160px;'  src='/upload/" + res.annoList[i].companyVO.companyLogo + "' class='card-img' alt='widget-card-2'>";
													html += "		 <a style='position: absolute; top: 5px; right: 12px; cursor: pointer;'>";

													var comIdGroup = res.comIdGroup;

													var heart = "";
													if (comIdGroup
															.includes(",")) {
														var comIdGroupSplit = comIdGroup
																.split(",");
														for (var j = 0; j < comIdGroupSplit.length; j++) {
															if (comIdGroupSplit[j] == res.annoList[i].comId) {
																heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
																break;
															} else {
																heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
															}
														}
													} else {
														if (comIdGroup == res.annoList[i].comId) {
															heart = "<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>";
														} else {
															heart = "<i id='unlike' class='fa-regular fa-heart fa-lg'></i>";
														}
													}
													html += "		 " + heart;
													html += "		 ";
													html += "		 </a>";
													html += " 	   </div>";
													html += "        <div class='card-body'>";
													html += "            <h5  class='card-title mt-3'><a href='/member/detailAnno/"+res.annoList[i].annoId+"'>"
															+ res.annoList[i].annoTitle
															+ "</a></h5>";
													html += "            <h5  class='card-title mt-3'><a href='/member/detail/"+res.annoList[i].comId+"'>"
															+ res.annoList[i].companyVO.companyName
															+ "</a><i class='fa-solid fa-star' style='color: #f5d400; '></i>"
															+ res.annoList[i].reviewVO.reviewScore
															+ "</h5>";
													html += "            <p  class='card-text'>지원조건 :"
															+ res.annoList[i].annoJo
															+ "</p>";
													html += "            <p class='card-text'>우대사항 :"
															+ res.annoList[i].annoUd
															+ "</p>";
													html += "            <p  class='card-text'>모집분야 :"
															+ res.annoList[i].annoMb
															+ "</p>";
													html += "            <p  class='card-text'>담당업무 :"
															+ res.annoList[i].annoDm1
															+ "</p>";
													html += "            <p  class='card-text'>복지 및 급여 : <i class='fa-solid fa-star' style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewWelfare
															+ "</p>";
													html += "            <p  class='card-text'>업무와 삶의 균형 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewBalance
															+ "</p>";
													html += "            <p  class='card-text'>승진 및 가능성 : <i class='fa-solid fa-star'  style='color: #6bf80d;'></i>"
															+ res.annoList[i].reviewVO.reviewVision
															+ "</p>";
													html += "            <div  class='team'>";
													html += "            </div>";
													html += "            <div class='meta-info'>";
													html += "                <div class='meta-action'>";
													html += "                    <div class='meta-bottom-info'>";
													html += "                        <span class='strong' style='color: #db1414; '>마감일</span><span class='strong' style='color: #db1414; '>"
															+ res.annoList[i].annoEndDate
															+ "</span>";
													html += "                    </div>";
													html += "                </div>";
													html += "            </div>";
													html += "        </div>";
													html += "    </div>";
													html += "</div>";
												}
												$("#card").html(html);
											}
										});
							}
						});

	});
</script>