<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--  Navbar Starts / Breadcrumb Area  -->
<div class="sub-header-container">
    <header class="header navbar navbar-expand-sm">
        <ul class="navbar-nav flex-row">
            <li>
                <div class="page-header">
                    <nav class="breadcrumb-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active" aria-current="page"><span>이력서 등록</span></li>
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

<form:form action="/myPage/resume/insert" method="post" modelAttribute="resume" enctype="multipart/form-data">
	<input type="hidden" name="memId" value="${sessionScope.memberVO.memId }" />
	<c:if test="${status eq 'u' }">
		<input type="hidden" name="resumeId" value="${resume.resumeId }" />
	</c:if>

<!-- Main Body Starts -->
<div class="layout-px-spacing">
	<div class="layout-top-spacing mb-2">
    	<div class="col-md-12">
        	<div class="row">
            	<div class="container p-0">
                	<div class="row layout-top-spacing">
                    	<div class="col-lg-9 layout-spacing">
                        
                        
	                    	<div class="statbox widget box box-shadow">
	                        	<div class="widget-header">
	                            	<div class="row">
	                                	<div class="col-xl-12 col-md-12 col-sm-12 col-12">
	                                    	<h4>이력서 제목&nbsp<span class="text-danger">*</span></h4>
	                                	</div>
	                            	</div>
	                        	</div>
	                        	<div class="widget-content widget-content-area">
		                        	<div class="form-group row">
						    			<div class="col-lg-12">
<!-- 							    			<label>제목: -->
<!-- 							    			<span class="text-danger">*</span></label> -->
											<input name="resumeTitle" value="${resume.resumeTitle }" type="text" class="form-control" placeholder="제목을 입력하세요.">
										</div>
									</div>
								</div>
							</div>
                        	
                            <div class="statbox widget box box-shadow">
                                <div class="widget-header">
                                    <div class="row">
                                        <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                            <h4>인적사항</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content widget-content-area">
                                	<div class="form-group row">
	                                	<div class="col-lg-9">
	                                		<div class="form-group row">
								    			<div class="col-lg-3">
									    			<label>이름:</label>
													<input type="text" class="form-control" value="${memberVO.memName }" readonly>
												</div>
								    			<div class="col-lg-3">
									    			<label>생년월일:</label>
<%-- 									    			<c:set var="memBirth" value="<fmt:formatDate value='${memberVO.memBirth}' pattern='yyyy-MM-dd'/>"/> --%>
													<input type="text" class="form-control" value="${memberVO.memBirth}" readonly>
												</div>
								    			<div class="col-lg-2">
									    			<label>성별:</label>
									    			<c:choose>
									    				<c:when test="${sessionScope.memberVO.memGender == 'male' }">
															<input type="text"  class="form-control" value="남자" readonly>
														</c:when>
									    				<c:when test="${sessionScope.memberVO.memGender == 'female'}">
															<input type="text"  class="form-control" value="여자" readonly>
														</c:when>
														<c:otherwise>
															<input type="text"  class="form-control" placeholder="성별" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col-lg-4">
									    			<label>연락처:</label>
													<input type="text" class="form-control"  value="${sessionScope.memberVO.memTel }"  readonly>
												</div>
											</div>
											<br>
											<div class="form-group row">
												<div class="col-lg-6">
													<label>이메일:</label>
													<input type="email" class="form-control" value="${sessionScope.memberVO.memEmail }" readonly>
												</div>
								    			<div class="col-lg-6">
									    			<label>주소:</label>
													<input type="text" class="form-control"  value="${sessionScope.memberVO.memAddr1 } ${sessionScope.memberVO.memAddr2}"  readonly>
												</div>
			                            	</div>
	                                	</div>
	                         
	                            	
										<div class="col-lg-3">
	                                        <label for="file-upload" class="custom-file-upload mb-0">
	                                            <a title="Attach a file" class="mr-2 pointer text-primary">
	                                                <i class="las la-paperclip font-20"></i><span>사진</span>
	                                            </a>
	                                        </label>
	                                        
<%-- 	                                        <c:if test="${status ne 'u' }"> --%>
<!-- 												<div class="statbox widget box box-shadow" style="height:170px; margin:0 auto;"> -->
<%-- 		                                            <img id="image-preview" style="height:130px; width:130px; border:0;" src="${pageContext.request.contextPath }/resources/assets/img/기본이미지.png"/> --%>
<!-- 		                                            <input type="file" id="file-upload" name="photoFile" accept="image/*" style="display:none;" onchange="handleFileChange()"> -->
<!-- 		                                        </div> -->
<%-- 	                                        </c:if> --%>
<%-- 	                                        <c:if test="${status eq 'u' }"> --%>
<!-- 												<div class="statbox widget box box-shadow" style="height:170px; margin:0 auto;"> -->
<%-- 		                                            <img id="image-preview" style="height:130px; width:130px; border:0;" src="/upload/${resume.resumePhoto}"/> --%>
<!-- 		                                            <input type="file" id="file-upload" name="photoFile" accept="image/*" style="display:none;" onchange="handleFileChange()"> -->
<!-- 		                                        </div> -->
<%-- 	                                        </c:if> --%>
	                                        
											<div class="statbox widget box box-shadow" style="height:170px; margin:0 auto;">
												<c:if test="${resume.resumePhoto != null }" >
		                                            <img id="image-preview" style="height:130px; 	width:130px; border:0;" src="/upload/${resume.resumePhoto}"/>
		                                        </c:if>
												<c:if test="${resume.resumePhoto == null }" >
													<img id="image-preview" style="height:130px; width:130px; border:0;" src="${pageContext.request.contextPath }/resources/assets/img/기본이미지.png"/>
												</c:if>
	                                            <input type="file" id="file-upload" name="photoFile" accept="image/*" style="display:none;" onchange="handleFileChange()">
	                                        </div>
	                                        
<!-- 	                                        <div class="statbox widget box box-shadow" style="height:170px; margin:0 auto;"> -->
<%-- 	                                            <img id="image-preview" style="height:130px; width:130px; border:0;" src="/upload/${resume.resumePhoto}"/> --%>
<!-- 	                                            <input type="file" id="file-upload" name="photoFile" accept="image/*" style="display:none;" onchange="handleFileChange()"> -->
<!-- 	                                        </div> -->
										</div>
									</div>
								</div>
							</div>
					   
					   		  
                            <div class="statbox widget box box-shadow">
                                <div class="widget-header">
                                    <div class="row">
                                        <div class="col-xl-9 col-md-9 col-sm-9 col-9">
                                            <h4>학력</h4>
                                        </div>
<!--                                         <div class="col-3"> -->
<!--                                         	<input type="checkbox" checked="checked" name=""> -->
<!-- 											<span></span>고등학교 미만 졸업</label> -->
<!--                                         </div> -->
                                	</div>
                                </div>
                                <div class="widget-content widget-content-area" id="education">
<!--                                 	<div class="w-100"> -->
	                            	<div class="form-group row">
						    			<div class="col-lg-2">
							    			<label>학교구분:</label>
							    			
											<select name="eduList[0].eduSchoolType" class="form-control" >
<%-- 											  <c:if test="${resume.eduList[0].eduSchoolType == 3}"> --%>
<%-- 											  	<c:set var="select3" value="selected"/> --%>
<%-- 											  </c:if> --%>
												<option value="">선택</option>
											 	<option value="1" <c:if test="${resume.eduList[0].eduSchoolType == '1'} ">selected</c:if>>고등학교</option>
											 	<option value="2" <c:if test="${resume.eduList[0].eduSchoolType == '2'} ">selected</c:if>>대학(2,3년)</option>
											 	<option value="3" <c:if test="${resume.eduList[0].eduSchoolType == '3'} ">selected</c:if>>대학교(4년)</option>
<%-- 											  <option value="3" ${select3} >대학교(4년)</option> --%>
											 	<option value="4" <c:if test="${resume.eduList[0].eduSchoolType == '4'} ">selected</c:if>>대학원</option>
											</select>
										</div>
										<div class="col-lg-3">
											<label>학교명:</label>
											<input name="eduList[0].eduSchoolName" value="${resume.eduList[0].eduSchoolName }" type="text" class="form-control" placeholder="학교명">
										</div>
						    			<div class="col-lg-3">
							    			<label>입학년월:</label>
											<input name="eduList[0].eduStart" value="${resume.eduList[0].eduStart }" type="text" class="form-control" placeholder="20190302">
										</div>
						    			<div class="col-lg-3">
							    			<label>졸업년월:</label>
											<input name="eduList[0].eduEnd" value="${resume.eduList[0].eduEnd }" type="text" class="form-control" placeholder="20230226">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-4">
											<label>전공명:</label>
											<input name="eduList[0].eduMajor1" value="${resume.eduList[0].eduMajor1 }" type="text" class="form-control" placeholder="전공명">
										</div>
										
										<div class="col-lg-2">
							    			<label>학점:</label>
											<input name="eduList[0].eduScore" value="${resume.eduList[0].eduScore }" type="text" class="form-control" placeholder="학점">
										</div>
										<div class="col-lg-2">
							    			<label>기준학점:</label>
											<select name="eduList[0].eduScoreStandard" class="form-control" >
												<option value="">선택</option>
											 	<option value="1">4.5</option>
												<option value="2">4.3</option>
												<option value="3">4.0</option>
											 	<option value="4">100</option>
											</select>
										</div>
										<div class="col-lg-3">
							    			<label>졸업상태:</label>
											<select name="eduList[0].eduStatus" class="form-control" >
												<option value="">선택</option>
												<option value="1" <c:if test="${resume.eduList[0].eduStatus == 1} ">selected</c:if>>졸업</option>
												<option value="2" <c:if test="${resume.eduList[0].eduStatus == 2} ">selected</c:if>>졸업예정</option>
												<option value="3" <c:if test="${resume.eduList[0].eduStatus == 3} ">selected</c:if>>재학중</option>
												<option value="4" <c:if test="${resume.eduList[0].eduStatus eq '4'} ">selected="selected"</c:if>>중퇴</option>
												<option value="5" <c:if test="${resume.eduList[0].eduStatus == 5} ">selected</c:if>>수료</option>
												<option value="6" <c:if test="${resume.eduList[0].eduStatus == 6} ">selected</c:if>>휴학</option>
											</select>
										</div>
										<div class="col-lg-1">
											<button type="button" id="btnDeleteEducation" class="btn btn-dark" ><i class="fas fa-minus fa-lg"></i></button>
										</div>
		                            </div>
		                            <br>
   	                        	</div>
   	                   			<button type="button" id="btnAddEducation" class="btn btn-outline-primary" style="width:100%;"><i class="far fa-plus-square fa-lg"></i> 추가</button><br>
							</div>
							
							<div class="statbox widget box box-shadow" id="skillForm" >
								<div class="widget-header">
									<div class="row">
									    <div class="col-xl-12 col-md-12 col-sm-12 col-12">
									        <h4>스킬</h4>
									    </div>
									</div>
								</div>
								<div class="widget-content widget-content-area">
									<div class="form-group row">
										<label class="col-3 col-form-label">추천 스킬</label>
									</div>
									<div id="skillList">
										<button type="button" class="btn btn-outline-primary btn-rounded "><i class="fas fa-plus fa-xs"></i> SVN</button>
										<button type="button" class="btn btn-outline-success btn-rounded  "><i class="fas fa-plus fa-xs"></i> OracleDB</button>
										<button type="button" class="btn btn-outline-info btn-rounded  "><i class="fas fa-plus fa-xs"></i>	RestAPI</button>
										<button type="button" class="btn btn-outline-warning btn-rounded  "><i class="fas fa-plus fa-xs"></i> Spring</button>
										<button type="button" class="btn btn-outline-danger btn-rounded  "><i class="fas fa-plus fa-xs"></i> AWS EC2</button>
										<button type="button" class="btn btn-outline-dark btn-rounded  "><i class="fas fa-plus fa-xs"></i> Jquery</button>
										<button type="button" class="btn btn-outline-secondary btn-rounded "><i class="fas fa-plus fa-xs"></i> Kafka</button>
										<button type="button" class="btn btn-outline-primary btn-rounded  "><i class="fas fa-plus fa-xs"></i> Hadoop</button>
										<button type="button" class="btn btn-outline-success btn-rounded  "><i class="fas fa-plus fa-xs"></i> ASP.NET MVC</button>
										<button type="button" class="btn btn-outline-info btn-rounded  "><i class="fas fa-plus fa-xs"></i> GraphQL</button>
										<button type="button" class="btn btn-outline-warning btn-rounded  "><i class="fas fa-plus fa-xs"></i> Webpack</button>
										<button type="button" class="btn btn-outline-danger btn-rounded  "><i class="fas fa-plus fa-xs"></i> Jira</button>
										<button type="button" class="btn btn-outline-dark btn-rounded  "><i class="fas fa-plus fa-xs"></i> TypeScript</button>
										<button type="button" class="btn btn-outline-secondary btn-rounded "><i class="fas fa-plus fa-xs"></i> Docker</button>
									</div><br>
									<div class="form-group row">
		    							<label class="col-3 col-form-label">스킬 직접 추가</label>
										<div class="col-7">
										    <input id="skillSearch" class="form-control" type="text" value="" placeholder="ex) Excel, JAVA, CAD" id="example-text-input">
										</div>
										<div class="col-2">
											<button type="button" id="btnSkillSearch" class="btn btn-outline-primary" style="width:100%;"><i class="fa fa-search mr-1"></i>추가</button>
										</div>
									</div>
									<div class="form-group row" id="mySkills">
										<label class="col-3 col-form-label">내가 보유한 스킬 (0 / 10)</label>
									</div>
									<div id="skillSelected">
									</div>
								</div>
		 					</div>
                          
        				     
							<div class="statbox widget box box-shadow">
		                        <div class="widget-header">
		                            <div class="row">
		                                <div class="col-xl-12 col-md-12 col-sm-12 col-12">
		                                    <h4>희망직무</h4>
		                                </div>
		                            </div>
		                        </div>
								<div class="widget-content widget-content-area">
								    <div class="form-group row">
								        <label class="col-3 col-form-label">희망직무 키워드<span class="text-danger">*</span></label>
								        <div class="col-7">
								            <input class="form-control" type="text" name="workfieldList[0].workfield1" value="${resume.workfieldList[0].workfield1 }" id="example-text-input">
								        </div>
								        <div class="col-2">
								        	<button type="button" class="btn btn-outline-primary" style="width:100%;" data-toggle="modal" data-target="#exampleModalCenter">추가하기</button>
										</div>
	                                    <!-- Modal -->
	                                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	                                    	<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		                                        <div class="modal-content">
		                                            <div class="modal-header">
		                                                <h5 class="modal-title" id="exampleModalCenterTitle">직무 전문분야</h5>
		                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                                                    <i class="las la-times"></i>
		                                                </button>
		                                            </div>
		                                            <div class="modal-body">
		                                            	<div class="input-group m-t-10">
														<input type="text" class="form-control" value="직무 및 전문분야를 입력하세요.">
														<span class="input-group-append">
														    <button type="button" class="btn bg-gradient-primary btn-primary"><i class="fa fa-search mr-1"></i>검색</button>
														</span>
													</div>
	                                                <!-- ----------------------------------------- -->
	                                                <br>
	                                                	<p class="modal-text">직무 최대 4개, 전문분야 직무별 최대 5개 선택 가능</p>
	                                                      
	                                                      
	                                               		<div class="row">
														    <div class="col-4">
																<select id="workfield1" name="" class="default-select form-control"  data-select2-id="single-select"  style="overflow:scroll;">
																	<option data-display="Select" value="empty">직무 대분류</option>
			                                                        <option>기획·전략</option>
			                                                        <option>인사·HR</option>
			                                                        <option>마케팅·광고·MD</option>
			                                                        <option>디자인</option>
			                                                        <option>운전·운송·배송</option>
			                                                        <option>고객상담·TM</option>
			                                                        <option>식·음료</option>
			                                                        <option>엔지니어링·설계</option>
			                                                        <option>교육</option>
			                                                        <option>의료·바이오</option>
			                                                        <option>공공복지</option>
			                                                        <option>법무·사무·총무</option>
			                                                        <option>회계·세무</option>
			                                                        <option>개발·데이터</option>
			                                                        <option>물류·무역</option>
			                                                        <option>영업</option>
			                                                        <option>금융·보험</option>
			                                                        <option>고객서비스·리테일</option>
			                                                        <option>제조·생산</option>
			                                                        <option>건축·시설</option>
			                                                        <option>미디어·문화·스포츠</option>
			                                                    </select>
														    </div>
														    <div class="col-4">
																<select id="workfield2" name="" tabindex="-1" class="form-control">
																	<option data-display="Select" value="empty">직무 중분류</option>
			                                                    </select>
														    </div>
														    <div class="col-4">
														    	<ul class="list-group" style="overflow:scroll;" >
																  <li class="list-group-item" style="height: 50px">
																    <input class="form-check-input me-1" type="checkbox" value="" id="firstCheckbox">
																    <label class="form-check-label" for="firstCheckbox">First checkbox</label>
																  </li>
																  <li class="list-group-item">
																    <input class="form-check-input me-1" type="checkbox" value="" id="secondCheckbox">
																    <label class="form-check-label" for="secondCheckbox">Second checkbox</label>
																  </li>
																  <li class="list-group-item">
																    <input class="form-check-input me-1" type="checkbox" value="" id="thirdCheckbox">
																    <label class="form-check-label" for="thirdCheckbox">Third checkbox</label>
																  </li>
																</ul>
														    </div>
														</div>    
													  	<br>
													  	<div id="selectedWorkfields" >
															<p class="modal-text">선택한 직무</p>
													  	</div>
	                                               	</div>
	                                                <div class="modal-footer">
	                                                    <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"></i>초기화</button>
	                                                    <button type="button" class="btn btn-primary">확인</button>
	                                                </div>
								                </div>
							          		</div>
							            </div>
							        </div>
							    </div>
							</div>
                            
                           
							<div class="statbox widget box box-shadow">
							    <div class="widget-header">
							        <div class="row">
							            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
							                <h4>희망근무조건</h4>
							            </div>
							        </div>
							    </div>
								<div class="widget-content widget-content-area">
		                        	<div class="form-group row">
		                            	<div class="col-lg-5">
							    			<label>고용형태:</label>
											<select name="desiredList[0].desiredEmplForm" class="form-control"  >
												<option value="">선택</option>
												<option value="1">정규직</option>
												<option value="2">계약직</option>
												<option value="3">병역특례</option>
												<option value="4">프리랜서</option>
												<option value="5">헤드헌팅</option>
												<option value="6">파견대행</option>
												<option value="7">인턴직</option>
											</select>
										</div>
						    			<div class="col-lg-3">
							    			<label>희망연봉: (단위: 만 원)</label>
											<input name="desiredList[0].desiredSalary" value="${resume.desiredList[0].desiredSalary }" type="number" class="form-control" placeholder="">
										</div>
										<div class="col-lg-3">
											<input type="checkbox" name="Checkboxes3">
											<span></span>면접 후 결정</label>
										</div>					    			
									</div>
									<div class="form-group row">
										<label>희망근무지 
										<span class="text-danger">*</span></label>
										<div class="col">
		                                       <input name="desiredList[0].desiredCity1" value="${resume.desiredList[0].desiredCity1 }" class="form-control" type="text" value="" id="example-text-input">
		                                   </div>
										<div class="col-3">
		                                      	<button type="button" class="btn btn-outline-primary" style="width:100%;" data-toggle="modal" data-target="#exampleModalCenter">추가하기</button>
		                                   </div>
									</div>
									<div class="form-group row">
										<label>산업 키워드</label>
										<div class="col">
											<input name="desiredList[0].desiredIndustry1" value="${resume.desiredList[0].desiredIndustry1 }" class="form-control" type="text" value="" id="example-text-input">
										</div>
										<div class="col-3">
											<button type="button" class="btn btn-outline-primary" style="width:100%;" data-toggle="modal" data-target="#exampleModalCenter">추가하기</button>
										</div>
									</div>
								</div>
							</div>
					   
                       
							<div class="statbox widget box box-shadow" id="languageForm" style="display:none">
								<div class="widget-header">
	                            	<div class="row">
	                                	<div class="col-xl-12 col-md-12 col-sm-12 col-12">
	                                    	<h4>어학</h4>
	                                	</div>
	                           		</div>
								</div>
								<div class="widget-content widget-content-area" id="language">
									<div class="form-group row">
										<div class="col-lg-2">
											<label>외국어명:</label>
											<select name="langList[0].langName" class="form-control" >
												<option value="">선택</option>
												<option value="1">영어</option>
												<option value="2">일본어</option>
												<option value="3">중국어</option>
												<option value="4">독일어</option>
												<option value="5">프랑스어</option>
												<option value="6">스페인어</option>
												<option value="7">러시아어</option>
												<option value="8">이탈리아어</option>
												<option value="9">아랍어</option>
												<option value="10">태국어</option>
											</select>
										</div>
						    			<div class="col-lg-3">
							    			<label>공인시험:</label>
											<input name="langList[0].langTestName" value="${resume.langList[0].langTestName }" type="text" class="form-control" placeholder="ex) TOEIC">
										</div>
						    			<div class="col-lg-3">
							    			<label>급수/점수:</label>
											<input name="langList[0].langTestScore" value="${resume.langList[0].langTestScore }" type="text" class="form-control" placeholder="ex) 990">
										</div>
						    			<div class="col-lg-3">
							    			<label>취득년월:</label>
											<input name="langList[0].langTestDate" value="${resume.langList[0].langTestDate }" type="text" class="form-control" placeholder="20230215">
										</div>
										<div class="col-lg-1">
											<button type="button" id="btnDeleteLanguage" class="btn btn-dark" ><i class="fas fa-minus fa-lg"></i></button>
										</div>
									</div>
		                        	<br>
		                        </div>
	                            <button type="button" id="btnAddLanguage" class="btn btn-outline-primary" style="width:100%;"><i class="far fa-plus-square fa-lg"></i> 추가</button><br>
		   	                </div>
                       
                         
                            
							<div class="statbox widget box box-shadow" id="certificationForm" style="display:none">
							    <div class="widget-header">
							        <div class="row">
							            <div class="col-xl-8 col-md-8 col-sm-8 col-8">
							                <h4>자격증</h4>
							            </div>
							        </div>
	       						</div>
								<div class="widget-content widget-content-area" id="certification">
									<div class="form-group row">
										<div class="col-lg-5">
											<label>자격증명:</label>
											<input name="certList[0].certName" value="${resume.certList[0].certName }" type="text" class="form-control" placeholder="ex) 컴퓨터활용능력1급">
										</div>
						    			<div class="col-lg-4">
							    			<label>발행처:</label>
											<input name="certList[0].certInstitution" value="${resume.certList[0].certInstitution }" type="text" class="form-control" placeholder="ex) 대한상공회의소">
										</div>
						    			<div class="col-lg-2">
							    			<label>취득년월:</label>
											<input name="certList[0].certDate" value="${resume.certList[0].certDate }" type="text" class="form-control" placeholder="20230215">
										</div>
										<div class="col-lg-1">
											<button type="button" id="btnDeleteCertification" class="btn btn-dark" ><i class="fas fa-minus fa-lg"></i></button>
										</div>
									</div>
	                        	</div>
		                   		<button type="button" id="btnAddCertification" class="btn btn-outline-primary" style="width:100%;"><i class="far fa-plus-square fa-lg"></i> 추가</button><br>
							</div>
                       
					        
							<div class="statbox widget box box-shadow" id="awardForm" style="display:none">
							    <div class="widget-header">
							        <div class="row">
							            <div class="col-xl-8 col-md-8 col-sm-8 col-8">
							                <h4>수상</h4>
							            </div>
							        </div>
							    </div>
								<div class="widget-content widget-content-area" id="award">
								 	<div class="form-group row">
										<div class="col-lg-4">
											<label>수상명:</label>
											<input name="awardList[0].awardName" value="${resume.awardList[0].awardName }" type="text" class="form-control" >
										</div>
									 	<div class="col-lg-4">
								  			<label>수여기관:</label>
											<input name="awardList[0].awardInstitution" value="${resume.awardList[0].awardInstitution }" type="text" class="form-control" placeholder="ex) 대한상공회의소">
										</div>
					 					<div class="col-lg-3">
									  		<label>수상연도:</label>
											<input name="awardList[0].awardDate" value="${resume.awardList[0].awardDate }" type="text" class="form-control" placeholder="20230215">
										</div>
										<div class="col-lg-1">
											<button type="button" id="btnDeleteAward" class="btn btn-dark" ><i class="fas fa-minus fa-lg"></i></button>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-12">
											<label>수여 내용:</label>
											<input name="awardList[0].awardContent" value="${resume.awardList[0].awardContent }" type="text" class="form-control" >
										</div>
									</div>
								</div>
								<button type="button" id="btnAddAward" class="btn btn-outline-primary" style="width:100%;"><i class="far fa-plus-square fa-lg"></i> 추가</button><br>
							</div>	
                       
	                        <div class="statbox widget box box-shadow" id="activityForm" style="display:none">
	                        	<div class="widget-header">
	                            	<div class="row">
		                                <div class="col-xl-9 col-md-9 col-sm-9 col-9">
		                                    <h4>인턴 · 대외활동</h4>
		                                </div>
	                            	</div>
	                           	</div>
	                            <div class="widget-content widget-content-area" id="activity">
	                           		<div class="form-group row">
						    			<div class="col-lg-2">
							    			<label>활동구분:</label>
											<select name="activityList[0].actCategory" class="form-control" >
											  <option value="">활동구분</option>
											  <option value="1">인턴</option>
											  <option value="2">c</option>
											  <option value="3">동아리</option>
											  <option value="4">자원봉사</option>
											  <option value="5">사회활동</option>
											  <option value="6">교내활동</option>
											</select>
										</div>
										<div class="col-lg-5">
											<label>회사/기관/단체명:</label>
											<input name="activityList[0].actInstitution" value="${resume.activityList[0].actInstitution } " type="text" class="form-control" placeholder="회사/기관/단체명">
										</div>
						    			<div class="col-lg-2">
							    			<label>시작년월:</label>
											<input name="activityList[0].actStart" value="${resume.activityList[0].actStart } " type="text" class="form-control" placeholder="2016.03">
										</div>
						    			<div class="col-lg-2">
							    			<label>종료년월:</label>
											<input name="activityList[0].actEnd" value="${resume.activityList[0].actEnd } " type="text" class="form-control" placeholder="2021.02">
										</div>
										<div class="col-lg-1">
											<button type="button" id="btnDeleteActivity" class="btn btn-dark" ><i class="fas fa-minus fa-lg"></i></button>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-12">
											<label>활동내용:</label>
	                                       	<textarea name="activityList[0].actContent" class="form-control" id="exampleTextarea" rows="3">${resume.activityList[0].actContent }</textarea>
	                                	</div>
		                            </div>
		                        </div>
	   	                    	<button type="button" id="btnAddActivity" class="btn btn-outline-primary" style="width:100%;"><i class="far fa-plus-square fa-lg"></i> 추가</button><br>
							</div>
                            
							<div class="statbox widget box box-shadow" id="careerForm" style="display:none">
								<div class="widget-header">
								    <div class="row">
								        <div class="col-xl-8 col-md-8 col-sm-8 col-8">
								            <h4>경력</h4>
								        </div>
									</div>
				                </div>
								<div class="widget-content widget-content-area" id="career">
	                  		    	<div class="form-group row">
										<div class="col-lg-4">
											<label>회사명:</label>
											<input name="careerList[0].careerCmpName" value="${resume.careerList[0].careerCmpName } " type="text" class="form-control" placeholder="회사명">
										</div>
						    			<div class="col-lg-3">
							    			<label>부서명:</label>
											<input name="careerList[0].careerCmpDprtm" value="${resume.careerList[0].careerCmpDprtm }" type="text" class="form-control" placeholder="부서명">
										</div>
						    			<div class="col-lg-2">
							    			<label>입사년월:</label>
											<input name="careerList[0].careerJoinDate" value="${resume.careerList[0].careerJoinDate }" type="text" class="form-control" placeholder="2021.03">
										</div>
						    			<div class="col-lg-2">
							    			<label>퇴사년월:</label>
											<input name="careerList[0].careerResignDate" value="${resume.careerList[0].careerResignDate }" type="text" class="form-control" placeholder="2023.02">
										</div>
										<div class="col-lg-1">
											<button type="button" id="btnDeleteCareer" class="btn btn-dark" ><i class="fas fa-minus fa-lg"></i></button>
										</div>
									</div>
									<div class="form-group row">										
										<div class="col-lg-2">
							    			<label>직급 / 직책:</label>
											<input name="careerList[0].careerPosition" value="${resume.careerList[0].careerPosition }" type="text" class="form-control" placeholder="ex) 사원">
										</div>
										<div class="col-lg-4">
											<label>담당직무:</label></label>
											<input name="careerList[0].careerWorkfield" value="${resume.careerList[0].careerWorkfield }" type="text" class="form-control" placeholder="ex) 인사행정">										</div>
										<div class="col-lg-3">
											<label>연봉:</label>
											<input name="careerList[0].careerSalary" value="${resume.careerList[0].careerSalary }" type="text" class="form-control" placeholder="4,0000만원">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-12">
											<label>담당업무:</label>
	                                           <textarea name="careerList[0].careerDuties" class="form-control" id="exampleTextarea" rows="3">${resume.careerList[0].careerDuties }</textarea>
										</div>
		                            </div>
		                        	<br>
	   	                        </div>
	   	                    	<button type="button" id="btnAddCareer" class="btn btn-outline-primary" style="width:100%;"><i class="far fa-plus-square fa-lg"></i> 추가</button><br>
							</div>
                        
							<div class="statbox widget box box-shadow" id="prfrnForm" style="display:none">
	                        	<div class="widget-header">
	                            	<div class="row">
	                                	<div class="col-xl-12 col-md-12 col-sm-12 col-12">
	                                    	<h4>취업우대 · 병역: </h4>
	                                	</div>
	                            	</div>
								</div>
								<div class="widget-content widget-content-area">
						        	<div class="form-group row">
						 				<div class="col-lg-2">
											<label class="checkbox checkbox-lg">
											<input type="checkbox" value="${resume.prfrnList[0].prfrnVeterans }" name="prfrnList[0].prfrnVeterans">
											&nbsp&nbsp보훈대상</label>
										</div>
										<div class="col-lg-3">
											<label class="checkbox checkbox-lg">
											<input type="checkbox" value="${resume.prfrnList[0].prfrnProtection }" name="prfrnList[0].prfrnProtection">
											&nbsp&nbsp취업보호 대상</label>
										</div>
										<div class="col-lg-3">
											<label class="checkbox checkbox-lg">
											<input type="checkbox" value="${resume.prfrnList[0].prfrnSubsidy }" name="prfrnList[0].prfrnSubsidy">
											&nbsp&nbsp고용지원금 대상</label>
										</div>
										<div class="col-lg-2">
											<label class="checkbox checkbox-lg">
											<input type="checkbox" value="${resume.prfrnList[0].prfrnDisability }" name="prfrnList[0].prfrnDisability">
											&nbsp&nbsp장애</label>
										</div>
										<div class="col-lg-2">
											<label class="checkbox checkbox-lg">
											<input type="checkbox" value="${resume.prfrnList[0].prfrnMilitary }" name="prfrnList[0].prfrnMilitary">
											&nbsp&nbsp병역</label>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-3">
									  			<label>장애: </label>
											<select class="form-control"  name="prfrnList[0].prfrnDisabilityGrade">
											  <option value="">선택</option>
											  <option value="1">중증</option>
											  <option value="2">경증</option>
											  <option value="3">1급</option>
											  <option value="4">2급</option>
											  <option value="5">3급</option>
											  <option value="6">4급</option>
											  <option value="7">5급</option>
											  <option value="8">6급</option>
											</select>
										</div>
									</div>          
									<div class="form-group row">
										<div class="col-lg-2">
							    			<label>병역: </label>
											<select class="form-control" name="prfrnList[0].prfrnMilitaryType">
												<option value="">선택</option>
												<option value="1">군필</option>
												<option value="2">미필</option>
												<option value="3">면제</option>
												<option value="4">해당없음</option>
											</select>
										</div>
										<div class="col-lg-2">
											<label>입대일:</label>
											<input name="prfrnList[0].prfrnMilitaryStart" value="${resume.prfrnList[0].prfrnMilitaryStart }" type="text" class="form-control" placeholder="입대일">
										</div>
										<div class="col-lg-2">
											<label>제대일:</label>
											<input name="prfrnList[0].prfrnMilitaryEnd" value="${resume.prfrnList[0].prfrnMilitaryEnd }" type="text" class="form-control" placeholder="제대일">
										</div>
										<div class="col-lg-2">
											<label>군별:</label>
											<select class="form-control" name="prfrnList[0].prfrnMilitaryBranch">
												<option value="">선택</option>
												<option value="1">육군</option>
												<option value="2">해군</option>
												<option value="3">공군</option>
												<option value="4">해병</option>
												<option value="5">전경</option>
												<option value="6">의경</option>
												<option value="7">공익</option>
												<option value="8">기타</option>
											</select>
										</div>
										<div class="col-lg-3">
											<label>제대 계급:</label>
											<select class="form-control" name="prfrnList[0].prfrnMilitaryRank">
												<option value="">선택</option>
												<option value="1">이병</option>
												<option value="2">일병</option>
												<option value="3">상병</option>
												<option value="4">병장</option>
												<option value="5">하사</option>
												<option value="6">중사</option>
												<option value="7">상사</option>
												<option value="8">원사</option>
												<option value="9">준위</option>
												<option value="10">소위</option>
												<option value="11">중위</option>
												<option value="12">대위</option>
												<option value="13">소령</option>
												<option value="14">중령</option>
												<option value="15">대령</option>
												<option value="16">준장</option>
												<option value="17">소장</option>
												<option value="18">중장</option>
												<option value="19">대장</option>
												<option value="20">기타</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							
							<div class="statbox widget box box-shadow" id="portfolioForm" style="display:none">
								<div class="widget-header">
								    <div class="row">
								        <div class="col-xl-12 col-md-12 col-sm-12 col-12">
								            <h4>포트폴리오</h4>
								        </div>
								    </div>
								</div>
								<div class="widget-content widget-content-area">
									<div class="form-group row">
							  			<div class="col-lg-6">
								   			<label>URL 추가:</label>
											<input name="portfolioList[0].portfolioUrl" value="${resume.portfolioList[0].portfolioUrl }" type="text" class="form-control" value="http://" placeholder="URL">
										</div>
							  			<div class="col-lg-6">
								   			<label>파일 추가:</label>
	                                        <div class="form-group row">
	                                            <div class="col-lg-12 col-md-12 col-sm-12">
	                                                <div class="attached-files1">
	                                                    <img id="image-preview1" width="320">
	                                                </div>
	                                                <label for="file-upload1" class="custom-file-upload mb-0">
	                                                    <a title="Attach a file" class="mr-2 pointer text-primary">
	                                                        <i class="las la-paperclip font-20"></i>
	                                                        <span class="font-17">파일을 선택해 주세요.</span>
	                                                    </a>
	                                                </label>
	                                                <input id="file-upload1" name="portfolioList[0].uploadFile" style="display:none" type="file"  value="${resume.portfolioList[0].uploadFile }">
	                                            </div>
	                                        </div>
										</div>
									</div>
								</div>
							</div>
						</div>
						   
					   
                        <!-- 이력서 항목 사이드바 시작 -->
                        <div class="col-lg-3 layout-spacing" id="resumeSidebar">
                        	<!-- ONGOING TASK -->
		                	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing" style="position:sticky; top:77px;" >
		                    	<div class="widget widget-three add-project">
		                            <div class="widget-heading mb-0">
		                                <h5>이력서 항목</h5>
		                                <span class="w-numeric-title"> + 를 눌러 추가하세요!</span>
		                            </div>
		                            <div class="widget-content">
		                                <ul class="task-lists m-0 p-0 mt-4" id="resumeUl">
<!-- 		                                    <li class="d-flex mb-4 align-items-center"> -->
<!-- 		                                       <div class="user-img img-fluid"><button id="skillDisplay" style="all:unset;"><i class="fas fa-plus-circle fa-lg" style="color:#0e428b"></i></button></div> -->
<!-- 		                                       <div class="media-support-info ml-3"> -->
<!-- 		                                          <h6 class="mb-0">스킬</h6> -->
<!-- 		                                       </div> -->
<!-- 		                                    </li> -->
		                                    <li class="d-flex mb-4 align-items-center">
		                                       <div class="user-img img-fluid"><button id="languageDisplay" style="all:unset;"><i class="fas fa-plus-circle fa-lg" style="color:#0e428b"></i></button></div>
		                                       <div class="media-support-info ml-3">
		                                          <h6 class="mb-0">어학</h6>
		                                       </div>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                       <div class="user-img img-fluid"><button id="certificationDisplay" style="all:unset;"><i class="fas fa-plus-circle fa-lg" style="color:#0e428b"></i></button></div>
		                                       <div class="media-support-info ml-3">
		                                          <h6 class="mb-0">자격증</h6>
		                                       </div>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                       <div class="user-img img-fluid"><button id="awardDisplay" style="all:unset;"><i class="fas fa-plus-circle fa-lg" style="color:#0e428b"></i></button></div>
		                                       <div class="media-support-info ml-3">
		                                          <h6 class="mb-0">수상</h6>
		                                       </div>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                       <div class="user-img img-fluid"><button id="activityDisplay" style="all:unset;"><i class="fas fa-plus-circle fa-lg" style="color:#0e428b"></i></button></div>
		                                       <div class="media-support-info ml-3">
		                                          <h6 class="mb-0">인턴 · 대외활동</h6>
		                                       </div>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                       <div class="user-img img-fluid"><button id="careerDisplay" style="all:unset;"><i class="fas fa-plus-circle fa-lg" style="color:#0e428b"></i></button></div>
		                                       <div class="media-support-info ml-3">
		                                          <h6 class="mb-0">경력</h6>
		                                       </div>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                       <div class="user-img img-fluid"><button id="prfrnDisplay" style="all:unset;"><i class="fas fa-plus-circle fa-lg" style="color:#0e428b"></i></button></div>
		                                       <div class="media-support-info ml-3">
		                                          <h6 class="mb-0">취업우대 · 병역 </h6>
		                                       </div>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                       <div class="user-img img-fluid"><button id="portfolioDisplay" style="all:unset;"><i class="fas fa-plus-circle fa-lg" style="color:#0e428b"></i></button></div>
		                                       <div class="media-support-info ml-3">
		                                          <h6 class="mb-0">포트폴리오</h6>
		                                       </div>
		                                    </li>
		                                </ul>
		                           </div>
		                       </div>
		                       <c:set value="등록" var="btn" />
		                       <c:if test="${status eq 'u' }">
		                           <c:set value="수정" var="btn"/>
		                       </c:if>
			                   <div class="button-list"></br>
			                       <button type="button" id="btnPreview" class="btn btn-outline-primary" style="width:100%;">미리보기</button><br>
			                       <button type="button" id="btnList" class="btn btn-outline-primary" style="width:100%;">목록</button><br>
			                       <button type="button" id="btnInsert" class="btn btn-primary" style="width:100%;">이력서 ${btn }</button><br>
			                   </div>
			               </div>
		                   <!-- ONGOING TASK ENDS-->
                        </div>
                        <!-- 이력서 항목 사이드바 끝 -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main Body Ends -->
</form:form>					   

<script type="text/javascript">
$(function() {

	var resume = $("#resume");
	var btnInsert = $("#btnInsert");
	var btnPreview = $("#btnPreview");
	var btnList = $("#btnList");
	
	btnInsert.on("click", function() {
// 		if ($("#resumeTitle").val() == null || $("#resumeTitle").val() == "") {
// 			alert("이력서 제목을 입력해 주세요.");
// 			return false;
// 		}
		if (btnInsert.text() == "이력서 수정") {
			resume.attr("action", "/myPage/resume/modify");
		}
		resume.submit();	
	});
	
// 	ptnPreview.on("click", function() {
		
// 	});
	
	btnList.on("click", function() {
		location.href="/myPage/resume/list";
	});
	
//========================== 폼 내의 추가버튼으로 항목리스트 추가, 삭제 ===============================================
	
	var educationCount = 1;
	$('#btnAddEducation').click(function() {
	    var newEducation = $('#education').clone().attr('id', 'education' + educationCount);
	    newEducation.find(':input[name],  select[name]').each(function(){
	    var name = $(this).attr('name');
		if(name){
	        $(this).attr('name', name.replace('[0]', '['+educationCount+']'));
	        $(this).val('');
	      }
	    });
	    if (educationCount == 1) {
	    	$('#education').after(newEducation);
      	} else {
	        $('#education'+(educationCount-1)).after(newEducation);
	    }
	    educationCount++;
	});
	
	$(document).on('click', '#btnDeleteEducation', function() {
	  	$(this).closest('.widget-content').remove();
	});
 
	
	var languageCount = 1;
	$('#btnAddLanguage').click(function() {
	    var newLanguage = $('#language').clone().attr('id', 'language' + languageCount);
	    newLanguage.find(':input[name],  select[name]').each(function(){
	    var name = $(this).attr('name');
		if(name){
	        $(this).attr('name', name.replace('[0]', '['+languageCount+']'));
	        $(this).val('');
	      }
	    });
	    if (languageCount == 1) {
	    	$('#language').after(newLanguage);
      	} else {
	        $('#language'+(languageCount-1)).after(newLanguage);
	    }
	    languageCount++;
	});
	
	$(document).on('click', '#btnDeleteLanguage', function() {
	  	$(this).closest('.widget-content').remove();
	});
 
	
	var certificationCount = 1;
	$('#btnAddCertification').click(function() {
	    var newCertification = $('#certification').clone().attr('id', 'certification' + certificationCount);
	    newCertification.find(':input[name],  select[name]').each(function(){
	    var name = $(this).attr('name');
		if(name){
	        $(this).attr('name', name.replace('[0]', '['+certificationCount+']'));
	        $(this).val('');
	      }
	    });
	    if (certificationCount == 1) {
	    	$('#certification').after(newCertification);
      	} else {
	        $('#certification'+(certificationCount-1)).after(newCertification);
	    }
	    certificationCount++;
	});
	
	$(document).on('click', '#btnDeleteCertification', function() {
	  	$(this).closest('.widget-content').remove();
	});
 
	
	var awardCount = 1;
	$('#btnAddAward').click(function() {
	    var newAward = $('#award').clone().attr('id', 'award' + awardCount);
	    newAward.find(':input[name],  select[name]').each(function(){
	    var name = $(this).attr('name');
		if(name){
	        $(this).attr('name', name.replace('[0]', '['+awardCount+']'));
	        $(this).val('');
	      }
	    });
	    if (awardCount == 1) {
	    	$('#award').after(newAward);
      	} else {
	        $('#award'+(awardCount-1)).after(newAward);
	    }
	    awardCount++;
	});
	
	$(document).on('click', '#btnDeleteAward', function() {
	  	$(this).closest('.widget-content').remove();
	});
 
	
	var activityCount = 1;
	$('#btnAddActivity').click(function() {
	    var newActivity = $('#activity').clone().attr('id', 'activity' + activityCount);
	    newActivity.find(':input[name],  select[name]').each(function(){
	    var name = $(this).attr('name');
		if(name){
	        $(this).attr('name', name.replace('[0]', '['+activityCount+']'));
	        $(this).val('');
	      }
	    });
	    if (activityCount == 1) {
	    	$('#activity').after(newActivity);
      	} else {
	        $('#activity'+(activityCount-1)).after(newActivity);
	    }
	    activityCount++;
	});
	
	$(document).on('click', '#btnDeleteActivity', function() {
	  	$(this).closest('.widget-content').remove();
	});
 
	
	var careerCount = 1;
	$('#btnAddCareer').click(function() {
	    var newCareer = $('#career').clone().attr('id', 'career' + careerCount);
	    newCareer.find(':input[name],  select[name]').each(function(){
	    var name = $(this).attr('name');
		if(name){
	        $(this).attr('name', name.replace('[0]', '['+careerCount+']'));
	        $(this).val('');
	      }
	    });
	    if (careerCount == 1) {
	    	$('#career').after(newCareer);
      	} else {
	        $('#career'+(careerCount-1)).after(newCareer);
	    }
	    careerCount++;
	});
	
	$(document).on('click', '#btnDeleteCareer', function() {
	  	$(this).closest('.widget-content').remove();
	});
 
	
//========================== 폼 내의 추가버튼으로 항목리스트 추가, 삭제 END ===============================================
	


//========================================== skill 추가, 삭제 ==========================================================
	$(document).ready(function() {
	    $("#skillList button").click(function() {
	        var selectedBtns = $("#skillSelected button").length;
	        if (selectedBtns >= 10) {
	            alert("스킬은 최대 10개까지 선택할 수 있습니다");
	            return;
	        }
	        var btnText = $(this).text();
	        // 중복 체크 로직 추가
	        var buttonTexts = $("#skillSelected button").map(function() {
	            return $(this).text();
	        }).get();
	        if ($.inArray(btnText, buttonTexts) !== -1) {
	            alert("이미 선택된 스킬입니다");
	            return;
	        }
	        var newBtn = $("<button>", {
	            class: $(this).attr("class"),
	            text: btnText
// 	            html: "<i class='fas fa-minus'></i> " + skill
	        });
	        var newInput = $("<input>", {
	            type: "hidden",
	            name: "skillList[" + selectedBtns + "].skillName",
	            value: btnText
	        });
	        newBtn.append(newInput);
	        $("#skillSelected").append(newBtn);
	        selectedBtns = $("#skillSelected button").length; // 선택된 스킬 버튼 개수 업데이트
	        $("#mySkills label").text("내가 보유한 스킬 (" + selectedBtns + " / 10)"); // 수정된 코드
	    });
	});
	
	$(document).ready(function() {
	    // 스킬 검색 버튼 클릭 시
	    $("#btnSkillSearch").click(function() {
	        // skillSearch input에서 값 가져오기
	        var skill = $("#skillSearch").val();
	        // 중복 체크 로직 추가
	        var buttonTexts = $("#skillSelected button").map(function() {
	            return $(this).text();
	        }).get();
	        if ($.inArray(skill, buttonTexts) !== -1) {
	            alert("이미 선택된 스킬입니다");
	            return;
	        }
	        // skillSelected div에 버튼과 input 추가
	        var newBtn = $("<button>", {
	            class: getRandomClass(),
	            text: skill
	        });
	        var newInput = $("<input>", {
	            type: "hidden",
	            name: "skillList[" + $("#skillSelected button").length + "].skillName",
	            value: skill
	        });
	        newBtn.append(newInput);
	        $("#skillSelected").append(newBtn);
	        selectedBtns = $("#skillSelected button").length; // 선택된 스킬 버튼 개수 업데이트
	        $("#mySkills label").text("내가 보유한 스킬 (" + selectedBtns + " / 10)"); // 수정된 코드
	        // skillSearch input 값 초기화
	        $("#skillSearch").val('');
	    });
	});
	
	// 선택한 스킬 버튼을 클릭하면 사라지는 스크립트
	$(document).ready(function() {
	    $("#skillSelected").on("click", "button", function() {
	        $(this).remove(); // 선택된 스킬 버튼 제거
	        var selectedBtns = $("#skillSelected button").length; // 선택된 스킬 버튼 개수 업데이트
	        console.log(":::::" + selectedBtns)
	        $("#mySkills label").text("내가 보유한 스킬 (" + selectedBtns + " / 10)"); // 수정된 코드
	    });
	});
	
	// skillList 아래의 버튼들 중 아무거나 랜덤하게 클래스를 가져오는 함수
	function getRandomClass() {
// 		var classes = ["btn-outline-primary", "btn-outline-success", "btn-outline-info", "btn-outline-warning", "btn-outline-danger", "btn-outline-dark", "btn-outline-secondary"];
// 		var randomIndex = Math.floor(Math.random() * classes.length);
// 		return classes[randomIndex] + " btn-rounded";
		var classes = $("#skillList button").map(function() {
	        return $(this).attr("class");
	    }).get();
	    var randomIndex = Math.floor(Math.random() * classes.length);
	    return classes[randomIndex];
	}
//========================================== skill 추가, 삭제 END ==========================================================

	
	
	
//========================== 사이드바 +버튼으로 추가 ===============================================
	$("#activityDisplay").click(function(event) {
		event.preventDefault(); // 이벤트 실행을 막음
		$("#activityForm").css("display", "block");
		$('html, body').animate({
			scrollTop: $("#activityForm").offset().top
		}, 500);
		$('#activityDisplay i').css('color', '#a5aebb');
	});
	$("#awardDisplay").click(function(event) {
		event.preventDefault(); // 이벤트 실행을 막음
		$("#awardForm").css("display", "block");
		$('html, body').animate({
			scrollTop: $("#awardForm").offset().top
		}, 500);
		$('#awardDisplay i').css('color', '#a5aebb');
	});
	$("#careerDisplay").click(function(event) {
		event.preventDefault(); // 이벤트 실행을 막음
		$("#careerForm").css("display", "block");
		$('html, body').animate({
			scrollTop: $("#careerForm").offset().top
		}, 500);
		$('#careerDisplay i').css('color', '#a5aebb');
	});
	$("#certificationDisplay").click(function(event) {
		event.preventDefault(); // 이벤트 실행을 막음
		$("#certificationForm").css("display", "block");
		$('html, body').animate({
			scrollTop: $("#certificationForm").offset().top
		}, 500);
		$('#certificationDisplay i').css('color', '#a5aebb');
	});
	$("#skillDisplay").click(function(event) {
		event.preventDefault(); // 이벤트 실행을 막음
		$("#skillForm").css("display", "block");
		$('html, body').animate({
			scrollTop: $("#skillForm").offset().top
		}, 500);
		$('#skillDisplay i').css('color', '#a5aebb');
	});
	$("#languageDisplay").click(function(event) {
		event.preventDefault(); // 이벤트 실행을 막음
		$("#languageForm").css("display", "block");
		$('html, body').animate({
			scrollTop: $("#languageForm").offset().top
		}, 500);
		$('#languageDisplay i').css('color', '#a5aebb');
	});
	$("#portfolioDisplay").click(function(event) {
		event.preventDefault(); // 이벤트 실행을 막음
		$("#portfolioForm").css("display", "block");
		$('html, body').animate({
			scrollTop: $("#portfolioForm").offset().top
		}, 500);
		$('#portfolioDisplay i').css('color', '#a5aebb');
	});
	
	$("#prfrnDisplay").click(function(event) {
		event.preventDefault(); // 이벤트 실행을 막음
		$("#prfrnForm").css("display", "block");
		$('html, body').animate({
			scrollTop: $("#prfrnForm").offset().top
		}, 500);
		$('#prfrnDisplay i').css('color', '#a5aebb');
	});
	
//========================== 사이드바 +버튼으로 추가 END ===============================================
	
	
});


function setThumbnail(event) {
    var reader = new FileReader();

    reader.onload = function(event) {
		var img = document.createElement("img");
		imgzone.setAttribute("src", event.target.result);
    };

	reader.readAsDataURL(event.target.files[0]);
}

$(document).ready(function() {
	$("workfield1").on("change", function() {
		var workfield1 = $(this).val();
		var data = {
			workfield1 : workfield1
		};
		$.ajax({
			url: "/myPage/workfieldList",
			type: "post",
			data: JSON.stringify(data),
			contentType: "application/json; charset=UTF-8",
			dataType: "json",
			success: function(res) {
				res.sort(function(a, b) {
					return a.workfield1.localeCompare(b.workfield2);
				});
				for (let i = 0; i < res.length; i++) {
					let iption = document.createElement("option");
					option.innerHTML = res[i].workfield2;
					seiectJisun.appendChild(option);
				}
			}			
		});
		selectJisun.innerHTML = "";
	});
});

</script>

