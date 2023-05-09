<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<c:choose>
<c:when test="${empty member.resumeList[0].resumeTitle  }">
	<br>
<br>
<br>
<br>
	
	<div class="text-center">
	<h2>등록된 이력서가 없습니다 </h2>
	<br>
<br>
<br>
	<a href="/free/freeList" class="btn btn-soft-info   "> 뒤로가기 </a>
	</div>
</c:when>
<c:otherwise>

<br>
<br>
<br>
<br>
<div style="width: 80%; text-align: center;">
	<h2 style="font-weight: bold;">${member.resumeList[0].resumeTitle }</h2>
</div>
<br>
<br>
<div class="layout-px-spacing">
	<div class="layout-top-spacing mb-2">
		<div class="col-md-12">
			<div class="row">
				<div class="container p-0">
					<div class="row layout-top-spacing">
						<div class="col-lg-9 layout-spacing">
							<br>
							<div class="row">
								<div class="col-lg-10">
									<br>
									<div class="row">
										<div class="col-lg-4">
											<label>연락처:</label> ${member.memTel}
										</div>
										<div class="col-lg-4">
											<label>이메일:</label> ${member.memEmail}
										</div>
										<div class="col-lg-4">
											<label>주소:</label> ${member.memAddr1} ${member.memAddr2}
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									​
									<picture>
									<source srcset="..." type="image/svg+xml">
									<img src="..." class="img-fluid img-thumbnail" alt="...">
									</picture>
								</div>
							</div>
							<br> <br>
							<div class="row"></div>
							<br> <br>


							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">학력</a>
									</li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<p class="text-muted mb-4">${member.eduList[0].eduSchoolName }
												${member.eduList[0].eduMajor1 }</p>
											<div class="row mb-3 w-100">
												<div class="col-md-4">
													<p class="text-muted strong font-13">
														<c:if test="${member.eduList[0].eduStatus == '1'}">졸업</c:if>
														<c:if test="${member.eduList[0].eduStatus == '2'}">졸업예정</c:if>
														<c:if test="${member.eduList[0].eduStatus == '3'}">재학 중</c:if>
														<c:if test="${member.eduList[0].eduStatus == '4'}">중퇴</c:if>
														<c:if test="${member.eduList[0].eduStatus == '5'}">수료</c:if>
														<c:if test="${member.eduList[0].eduStatus == '6'}">휴학</c:if>
													</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 학점:
															${member.eduList[0].eduScore } /
															<c:if test="${member.eduList[0].eduScoreStandard == 1 }">4.5</c:if>
															<c:if test="${member.eduList[0].eduScoreStandard == 2 }">4.3</c:if>
															<c:if test="${member.eduList[0].eduScoreStandard == 3 }">4.0</c:if>
															<c:if test="${member.eduList[0].eduScoreStandard == 4 }">100</c:if>
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 복수전공/부전공:
														</p>
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> </p> -->
													</div>
												</div>
												<div class="col-md-4">
													<p>&nbsp;</p>
													<div>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i>	<fmt:formatDate value="${member.eduList[0].eduStart }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.eduList[0].eduEnd }" pattern="yyyy-MM-dd"/> </p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.eduList[0].eduStart } ~
															${member.eduList[0].eduEnd }
														</p>
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i>	</p> -->
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> </p> -->
													</div>
												</div>
												<div class="col-md-4">
													<p>&nbsp;</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 학교구분:
															<c:if test="${member.eduList[0].eduSchoolType == '1'}">고등학교</c:if>
															<c:if test="${member.eduList[0].eduSchoolType == '2'}">대학교(2,3년)</c:if>
															<c:if test="${member.eduList[0].eduSchoolType == '3'}">대학교(4년)</c:if>
															<c:if test="${member.eduList[0].eduSchoolType == '4'}">대학원</c:if>
														</p>
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> Multiple Color</p> -->
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> Suitable for everyone</p> -->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>




							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">희망
											직무</a></li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<p class="text-muted">
												<i class="lar la-check-circle"></i>
												${member.workfieldList[0].workfield1 } >
												${member.workfieldList[0].workfield1 }
											</p>
											<p class="text-muted">
												<i class="lar la-check-circle"></i> 산업디자인 > 금속디자인, 문구디자인
											</p>
											<p class="text-muted">
												<i class="lar la-check-circle"></i>
												${member.workfieldList[1].workfield1 } >
												${member.workfieldList[1].workfield2 }
											</p>
										</div>
									</div>
								</div>
							</div>
							<br>


							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">스킬</a>
									</li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<p class="text-muted mb-5">
												<i class="lar la-check-circle"></i>
												${member.skillList[0].skill1 }
											</p>
											<p class="text-muted mb-5">
												<i class="lar la-check-circle"></i>
												${member.skillList[0].skill2 }
											</p>
											<p class="text-muted mb-5">
												<i class="lar la-check-circle"></i>
												${member.skillList[0].skill3 }
											</p>
											<p class="text-muted mb-5">
												<i class="lar la-check-circle"></i>
												${member.skillList[0].skill4 }
											</p>
											<p class="text-muted mb-5">
												<i class="lar la-check-circle"></i>
												${member.skillList[0].skill5 }
											</p>
										</div>
									</div>
								</div>
							</div>
							<br>



							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">경력</a>
									</li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<p class="text-muted mb-4">
												${member.careerList[0].careerCmpName }</p>
											<div class="row mb-3 w-100">
												<div class="col-md-4">
													<p class="text-muted strong font-13">
														<c:if
															test="${member.careerList[0].careerResignDate == null}">
															<%-- 	                                               		 <fmt:formatDate value="${member.careerList[0].careerJoinDate}" pattern="yyyy-MM-dd"/> ~ 재직 중 --%>
	                                               		 ${member.careerList[0].careerJoinDate}" ~ 재직 중
	                                               </c:if>
														<%-- 	                                               <fmt:formatDate value="${member.careerList[0].careerJoinDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.careerList[0].careerResignDate}" pattern="yyyy-MM-dd"/> --%>
														${member.careerList[0].careerJoinDate} ~
														${member.careerList[0].careerResignDate}
													</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 부서:
															${member.careerList[0].careerCmpDprtm }
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 연봉:
															${member.careerList[0].careerSalary }만 원
														</p>
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> </p> -->
													</div>
												</div>
												<div class="col-md-4">
													<p>&nbsp;</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 직급:
															${member.careerList[0].careerPosition }
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 업무 상세:
															${member.careerList[0].careerDuties }
														</p>
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> 프로젝트3</p> -->
													</div>
												</div>
												<div class="col-md-4">
													<p>&nbsp;</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 담당 직무:
															${member.careerList[0].careerWorkfield }
														</p>
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> Multiple Color</p> -->
														<!-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> Suitable for everyone</p> -->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>

							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">자격증</a>
									</li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<div class="row mb-3 w-100">
												<div class="col-md-4">
													<p class="text-muted strong font-13">${member.certList[0].certName }</p>
													<div>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.certList[0].certDate }" pattern="yyyy-MM"/></p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.certList[0].certDate }
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.certList[0].certInstitution }
														</p>
													</div>
												</div>
												<div class="col-md-4">
													<p class="text-muted strong font-13">${member.certList[1].certName }컴퓨터활용능력
														1급</p>
													<div>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.certList[1].certDate }" pattern="yyyy-MM"/>2023.05.</p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>${member.certList[1].certDate }2023.05.</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.certList[1].certInstitution }대한상공회의소
														</p>
													</div>
												</div>
												<div class="col-md-4">
													<p class="text-muted strong font-13">${member.certList[2].certName }한국사능력검정시험</p>
													<div>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.certList[2].certDate }" pattern="yyyy-MM"/>2022.06.</p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>${member.certList[1].certDate }2023.05.</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.certList[2].certInstitution }국사편찬위원회
														</p>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
							<br>

							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">어학</a>
									</li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<p class="text-muted mb-4">
												<c:if test="${member.langList[0].langName == 1 }">영  어</c:if>
												<c:if test="${member.langList[0].langName == 2 }">일본어</c:if>
												<c:if test="${member.langList[0].langName == 3 }">중국어</c:if>
											</p>
											<div class="row mb-3 w-100">
												<div class="col-md-4">
													<p class="text-muted strong font-13">${member.langList[0].langTestName }</p>
													<div>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.langList[0].langTestDate }" pattern="yyyy-MM-dd"/> </p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.langList[0].langTestDate }
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.langList[0].langTestScore }점
														</p>
													</div>
												</div>
												<div class="col-md-4">
													<p class="text-muted strong font-13">${member.langList[1].langTestName }TOEIC
														Speaking</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.langList[0].langTestDate }2023-04-17
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.langList[1].langTestScore }level 8
														</p>
													</div>
												</div>
												<div class="col-md-4">
													<p class="text-muted strong font-13">${member.langList[2].langTestName }TOEFL</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.langList[0].langTestDate }2023-04-17
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.langList[2].langTestScore }120점
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<p class="text-muted mb-4">
												중국어
												<c:if test="${member.langList[1].langName == 1 }">영어</c:if>
												<c:if test="${member.langList[1].langName == 2 }">일본어</c:if>
												<c:if test="${member.langList[1].langName == 3 }">중국어</c:if>
											</p>
											<div class="row mb-3 w-100">
												<div class="col-md-4">
													<p class="text-muted strong font-13">${member.langList[3].langTestName }HSK</p>
													<div>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.langList[3].langTestDate }" pattern="yyyy-MM-dd"/>2023-04-17 </p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.langList[3].langTestDate } 2023-04-17
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.langList[3].langTestScore }6급 / 260점
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>

							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">인턴
											· 대외활동</a></li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<div class="row mb-3 w-100">
												<div class="col-md-4">
													<p class="text-muted strong font-13">
														<c:if test="${member.activityList[0].actCategory == 1}">인턴&nbsp</c:if>
														<c:if test="${member.activityList[0].actCategory == 2}">아르바이트&nbsp</c:if>
														<c:if test="${member.activityList[0].actCategory == 3}">동아리&nbsp</c:if>
														<c:if test="${member.activityList[0].actCategory == 4}">자원봉사&nbsp</c:if>
														<c:if test="${member.activityList[0].actCategory == 5}">사회활동&nbsp</c:if>
														<c:if test="${member.activityList[0].actCategory == 6}">교내활동&nbsp</c:if>
													</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 기관명:
															${member.activityList[0].actInstitution }
														</p>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.activityList[0].actStart }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.activityList[0].actEnd }" pattern="yyyy-MM-dd"/> </p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.activityList[0].actStart } ~
															${member.activityList[0].actEnd }
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.activityList[0].actContent }
														</p>
													</div>
												</div>
												<div class="col-md-4">
													<p class="text-muted strong font-13">
														<c:if test="${member.activityList[1].actCategory == 1}">인턴&nbsp</c:if>
														<c:if test="${member.activityList[1].actCategory == 2}">아르바이트&nbsp</c:if>
														<c:if test="${member.activityList[1].actCategory == 3}">동아리&nbsp</c:if>
														<c:if test="${member.activityList[1].actCategory == 4}">자원봉사&nbsp</c:if>
														<c:if test="${member.activityList[1].actCategory == 5}">사회활동&nbsp</c:if>
														<c:if test="${member.activityList[1].actCategory == 6}">교내활동&nbsp</c:if>
													</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 기관명:
															${member.activityList[1].actInstitution }
														</p>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.activityList[1].actStart }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.activityList[1].actEnd }" pattern="yyyy-MM-dd"/> </p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.activityList[1].actStart } ~
															${member.activityList[1].actEnd }
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.activityList[1].actContent }
														</p>
													</div>
												</div>
												<div class="col-md-4">
													<p class="text-muted strong font-13">
														<c:if test="${member.activityList[2].actCategory == 1}">인턴&nbsp</c:if>
														<c:if test="${member.activityList[2].actCategory == 2}">아르바이트&nbsp</c:if>
														<c:if test="${member.activityList[2].actCategory == 3}">동아리&nbsp</c:if>
														<c:if test="${member.activityList[2].actCategory == 4}">자원봉사&nbsp</c:if>
														<c:if test="${member.activityList[2].actCategory == 5}">사회활동&nbsp</c:if>
														<c:if test="${member.activityList[2].actCategory == 6}">교내활동&nbsp</c:if>
													</p>
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 기관명:
															${member.activityList[2].actInstitution }
														</p>
														<%-- 	                                                   <p class="text-muted"><i class="lar la-check-circle"></i> <fmt:formatDate value="${member.activityList[2].actStart }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${member.activityList[2].actEnd }" pattern="yyyy-MM-dd"/> </p> --%>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.activityList[2].actStart } ~
															${member.activityList[2].actEnd }
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i>
															${member.activityList[2].actContent }
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">포트폴리오</a>
									</li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<!-- 	                                       <p class="text-muted mb-4">로레알코리아</p> -->
											<div class="row mb-3 w-100">
												<div class="col-md-8">
													<!-- 	                                               <p class="text-muted strong font-13">재직 중</p> -->
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 포트폴리오 URL │ <a
																href="${member.portfolioList[0].portfolioUrl }">${member.portfolioList[0].portfolioUrl }</a>
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 첨부파일 │
														</p>
														<div class="file doc">
															<i class="lar la-file-word file-icon"></i>
														</div>

													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
							<br>



							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">희망근무조건</a>
									</li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<!-- 	                                       <p class="text-muted mb-4">로레알코리아</p> -->
											<div class="row mb-3 w-100">
												<div class="col-md-8">
													<!-- 	                                               <p class="text-muted strong font-13">재직 중</p> -->
													<div>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 고용 형태 │
															<c:if
																test="${member.desiredList[0].desiredEmplForm == 1 }">
	                                                   			정규직
	                                                   		</c:if>
															<c:if
																test="${member.desiredList[0].desiredEmplForm == 2 }">
	                                                   			계약직
	                                                   		</c:if>
															<c:if
																test="${member.desiredList[0].desiredEmplForm == 3 }">
	                                                   			병역특례
	                                                   		</c:if>
															<c:if
																test="${member.desiredList[0].desiredEmplForm == 4 }">
	                                                   			프리랜서
	                                                   		</c:if>
															<c:if
																test="${member.desiredList[0].desiredEmplForm == 5 }">
	                                                   			헤드헌팅
	                                                   		</c:if>
															<c:if
																test="${member.desiredList[0].desiredEmplForm == 6 }">
	                                                   			파견대행
	                                                   		</c:if>
															<c:if
																test="${member.desiredList[0].desiredEmplForm == 7 }">
	                                                   			인턴직
	                                                   		</c:if>
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 희망근무지 │
															${member.desiredList[0].desiredCity1 }&nbsp;&nbsp;${member.desiredList[0].desiredCity2 }&nbsp;
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 희망연봉 │
															${member.desiredList[0].desiredSalary }만 원
														</p>
														<p class="text-muted">
															<i class="lar la-check-circle"></i> 지원 분야 │
															${member.desiredList[0].desiredIndustry1 }&nbsp;&nbsp;${member.desiredList[0].desiredIndustry2 }&nbsp;&nbsp;${member.desiredList[0].desiredIndustry3}
														</p>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
							<br>


							<div
								class="w-100 animated-underline-content mt-2 details-tab-area">
								<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="underline-specification-tab" data-toggle="tab"
										href="#underline-specification" role="tab"
										aria-controls="underline-specification" aria-selected="false">취업우대
											· 병역</a></li>
								</ul>
								<div class="tab-content" id="lineTabContent-3">
									<div class="tab-pane fade show active"
										id="underline-specification" role="tabpanel"
										aria-labelledby="underline-specification-tab">
										<div class="d-flex flex-wrap p-2">
											<!-- 	                                       <p class="text-muted mb-4">로레알코리아</p> -->
											<div class="row mb-3 w-100">
												<div class="col-md-8">
													<!-- 	                                               <p class="text-muted strong font-13">재직 중</p> -->
													<div>
														<c:if test="${member.prfrnList[0].prfrnVeterans != null}">
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 보훈 대상</a>
															</p>
														</c:if>
														<c:if
															test="${member.prfrnList[0].prfrnProtection != null}">
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 취업보호 대상</a>
															</p>
														</c:if>
														<c:if test="${member.prfrnList[0].prfrnSubsidy != null}">
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 고용지원금 대상</a>
															</p>
														</c:if>
														<c:if
															test="${member.prfrnList[0].prfrnDisability != null}">
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 장애 등급 │
																<c:if
																	test="${member.prfrnList[0].prfrnDisabilityGrade == 1}">중증</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnDisabilityGrade == 2}">경증</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnDisabilityGrade == 3}">1급</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnDisabilityGrade == 4}">2급</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnDisabilityGrade == 5}">3급</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnDisabilityGrade == 6}">4급</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnDisabilityGrade == 7}">5급</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnDisabilityGrade == 8}">6급</c:if>
															</p>
														</c:if>
														<c:if test="${member.prfrnList[0].prfrnMilitary != null}">
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 병역 구분 │
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryType == 1}">군필</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryType == 2}">미필</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryType == 3}">면제</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryType == 4}">해당없음</c:if>
															</p>
															<%--                                                				<p class="text-muted"><i class="lar la-check-circle"></i>	입대일	│	<fmt:formatDate value="${member.prfrnList[0].prfrnMilitaryStart }" pattern="yyyy-MM-dd"/></p> --%>
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 입대일 │
																${member.prfrnList[0].prfrnMilitaryStart }
															</p>
															<%--                                                				<p class="text-muted"><i class="lar la-check-circle"></i>	제대일	│	<fmt:formatDate value="${member.prfrnList[0].prfrnMilitaryEnd }" pattern="yyyy-MM-dd"/></p> --%>
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 제대일 │
																${member.prfrnList[0].prfrnMilitaryEnd }
															</p>
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 군별 │
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryBranch == 1}">육군</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryBranch == 2}">해군</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryBranch == 3}">공군</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryBranch == 4}">해병</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryBranch == 5}">전경</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryBranch == 6}">의경</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryBranch == 7}">공익</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryBranch == 8}">기타</c:if>
															</p>
															<p class="text-muted">
																<i class="lar la-check-circle"></i> 제대계급 │
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 1}">이병</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 2}">일병</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 3}">상병</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 4}">병장</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 5}">하사</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 6}">중사</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 7}">상사</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 8}">원사</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 9}">준위</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 10}">소위</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 11}">중위</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 12}">대위</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 13}">소령</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 14}">중령</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 15}">대령</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 16}">준장</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 17}">소장</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 18}">중장</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 19}">대장</c:if>
																<c:if
																	test="${member.prfrnList[0].prfrnMilitaryRank == 20}">기타</c:if>
															</p>
														</c:if>

													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
							<br>



						</div>






						<!-- 이력서 보기 사이드바 시작 -->
						<div class="col-lg-3 layout-spacing">
							<!-- ONGOING TASK -->
							<div
								class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing"
								style="position: sticky; top: 77px;">
								<div class="widget widget-three add-project">
									<div class="widget-heading mb-0">
										<h5>이력서 항목</h5>
									</div>
									<br> <br>
									<div class="track-order-list">
										<ul class="list-unstyled">
											<li class="completed">
												<h6 class="mt-0 mb-1 font-13">인적사항</h6>
											</li>
											<li class="completed">
												<h6 class="mt-0 mb-1 font-13">스킬</h6>
											</li>
											<li><span class="active-dot dot"></span>
												<h6 class="mt-0 mb-1 font-13">학력</h6></li>
											<li>
												<h6 class="mt-0 mb-1 font-13">경력</h6>
											</li>
										</ul>
									</div>
								</div>


							</div>
							<!-- ONGOING TASK ENDS-->
						</div>
						<!-- 이력서 보기 항목 사이드바 끝 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</c:otherwise>
</c:choose>






<script>
	$(document)
			.ready(
					function() {
						$('#export-dt')
								.DataTable(
										{
											dom : '<"row"<"col-md-6"B><"col-md-6"f> ><""rt> <"col-md-12"<"row"<"col-md-5"i><"col-md-7"p>>>',
											buttons : {
												buttons : [
														{
															extend : 'excel',
															className : 'btn btn-rounded btn-success'
														},
														{
															extend : 'pdf',
															className : 'btn btn-rounded btn-warning'
														},
														{
															extend : 'print',
															className : 'btn btn-rounded btn-info'
														} ]
											},
											"language" : {
												"paginate" : {
													"previous" : "<i class='las la-angle-left'></i>",
													"next" : "<i class='las la-angle-right'></i>"
												}
											},
											"lengthMenu" : [ 7, 10, 20, 50 ],
											"pageLength" : 7
										});
					});
</script>






<script>
	$(document)
			.ready(
					function() {
						$('#export-dt')
								.DataTable(
										{
											dom : '<"row"<"col-md-6"B><"col-md-6"f> ><""rt> <"col-md-12"<"row"<"col-md-5"i><"col-md-7"p>>>',
											buttons : {
												buttons : [
														{
															extend : 'excel',
															className : 'btn btn-rounded btn-success'
														},
														{
															extend : 'pdf',
															className : 'btn btn-rounded btn-warning'
														},
														{
															extend : 'print',
															className : 'btn btn-rounded btn-info'
														} ]
											},
											"language" : {
												"paginate" : {
													"previous" : "<i class='las la-angle-left'></i>",
													"next" : "<i class='las la-angle-right'></i>"
												}
											},
											"lengthMenu" : [ 7, 10, 20, 50 ],
											"pageLength" : 7
										});
					});
</script>