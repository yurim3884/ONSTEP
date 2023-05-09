<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <div class="layout-px-spacing">
                <div class="layout-top-spacing mb-2">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="container p-0">
                                <div class="row layout-top-spacing">
                                    <div class="col-lg-12 layout-spacing">
                                        <div class="statbox widget box box-shadow">
                                            <div class="widget-content widget-content-area">
                                                <div class="form-group row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                                        <div class="card multiple-form-one px-0 pb-0 mb-3">
                                                            <h3 class="text-center"><strong>프리랜서 등록하기</strong></h3>
                                                            <p class="text-center">Fill all form field to go to next step</p>
                                                            <div class="row">
                                                                <div class="col-md-12 mx-0">
                                                                    <form id="msform" action="/free/insert" method="post">
                                                                        <ul id="progressbar">
                                                                            <li class="active" id="account"><strong>프리랜서 기본 정보</strong></li>
                                                                            <li id="personal"><strong>근무조건</strong></li>
                                                                            <li id="payment"><strong>경력</strong></li>
                                                                            <li id="confirm"><strong>finish</strong></li>
                                                                        </ul> 
                                                                        <fieldset>
                                                                            <div class="form-card">
                                                                                <h5 class="fs-title mb-4">프리랜서 기본 정보</h5>
                                                                                <p>기본 정보를 입력해 주세요. <br>
																					등록하신 정보는 프로젝트 매칭 이외의 용도로는 활용되지 않습니다. </p>
													<br><br>								
													<div class="form-group row">
                                                    <label class="col-form-label text-left col-lg-2 col-sm-12">직군 /직무</label>
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                                                        <select class="form-control" name="freeType">
                                                            <option value="변역">변역</option>
                                                            <option value="통역 외국어 MC">통역 외국어 MC</option>
                                                            <option value="IT 개발 기획" selected>IT 개발 기획</option>
                                                            <option value="디자인">디자인</option>
                                                            <option value="광고 마케팅">광고 마케팅</option>
                                                            <option value="영상 미디어">영상 미디어</option>
                                                            <option value="경영 비즈니스">경영 비즈니스</option>
                                                            <option value="엔지니어링 설계">엔지니어링 설계</option>
                                                            <option value="법률 법집행기관">법률 법집행기관</option>
                                                        </select>
                                                    </div>
                                                 </div> 
                                                 <div class="form-group row" >
                                                    <label class="col-form-label text-left col-lg-2 col-sm-12">회사/ 팀명</label>
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                                                    <input type="text" class="form-control" value="없음"  name="freeCompany">
                                                    <span class="form-text text-muted">소속이 있는 경우에만 입력해주세요</span>
                                                    </div>
                                                   </div>
                                                   </div>
                                                   
                                              <input type="button" name="next" class="next action-button btn btn-primary" value="다음" />
                                                                        </fieldset>
                                                                        
                                                                        <fieldset>
                                                                            <div class="form-card">
                                                                                <h5 class="fs-title mb-4">근무조건</h5>
                                                                                <p>근무 조건을 선택해주세요</p>
                                                                                
                                                                                <div class="form-group row">
                                                    <label class="col-form-label text-left col-lg-2 col-sm-12">근무방식</label>
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                                                        <select class="form-control" name="freeWork">
                                                            <option value="상주">상주</option>
                                                            <option value="원격">원격</option>
                                                            <option value="상관없음" selected>상관없음</option>
                                                        </select>
                                                       </div>
                                                    <label class="col-form-label text-left col-lg-2 col-sm-12">근무형태</label>
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                                                        <select class="form-control" name="freeStaly">
                                                            <option value="상주">파트타임</option>
                                                            <option value="원격">풀타임</option>
                                                            <option value="상관없음" selected>상관없음</option>
                                                        </select>
                                                    </div>
                                                 </div> 
                                                                                
                                                                                
                                                  <div class="form-group row">
                                                    <label class="col-form-label text-left col-lg-2 col-sm-12">희망급여</label>
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                                                    <input type="text" name="freeSalary" placeholder="" class="form-control mb-3"/> 
                                                    <span class="form-text text-muted">계약금은 용역비와 매칭비로 구성됩니다. 매칭비는 전체 계약금의 10% 입니다. 견적 산정 시 참고 부탁드립니다.
															예) 3개월, 900만원 계약 = 용역비 810만원 + 매칭비 90만</span>
                                                       </div>
                                                    <label class="col-form-label text-left col-lg-2 col-sm-12">프로젝트 시작가능일</label>
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                                                        <input class="form-control" type="date" value="2023-04-09" id="example-date-input" name="freeStart">
                                                    </div>
                                                 </div> 
                                                                                
                                                   
                                                                            </div> 
                                                                            <input type="button" name="previous" class="previous action-button-previous btn btn-outline-primary" value="이전" /> 
                                                                            <input type="button" name="next" class="next action-button btn btn-primary" value="다음" />
                                                                        </fieldset>
                                                                        <fieldset>
                                                                            <div class="form-card">
                                                                                <h5 class="fs-title mb-4">경력</h5>
                                                    <div class="form-group row">
														<label class="col-form-label text-left col-lg-2 col-sm-12">프리랜서 경험</label>
														<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
															<label class="radio">
															<input type="radio" name="freeExper" value="Y">
															<span></span>있음</label>
															<label class="radio">
															<input type="radio" name="freeExper" value="N">
															<span></span>없음</label>
														</div>
														 <label class="col-form-label text-left col-lg-2 col-sm-12">경력</label>
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                                                        <select class="form-control" name="freeCareer">
                                                            <option value="없음" selected>없음</option>
                                                            <option value="1년">1년</option>
                                                            <option value="2~3년">2~3년</option>
                                                            <option value="4~5년" >4~5년</option>
                                                            <option value="6~8년" >6~8년</option>
                                                            <option value="10년이상" >10년 이상</option>
                                                        </select>
                                                    </div>
													</div>
													<div class="form-group row">
													<label class="col-form-label text-left col-lg-2 col-sm-12">보유 스킬</label>
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                                                        <input class="form-control" type="text"  name="freeSkill">
                                                    </div>
                                                    </div>
                                     
													
                                                                             </div>
                                                                            <input type="button" name="previous" class="previous action-button-previous btn btn-outline-primary" value="이전" /> 
                                                                            <input type="submit" name="make_payment" class="next action-button btn btn-primary" value="완료" />
                                                                        </fieldset>
                                                                        <fieldset>
                                                                            <div class="form-card">
                                                                                <h5 class="fs-title mb-4 text-center">Congrats !</h5><br>
                                                                                <div class="row justify-content-center">
                                                                                    <div class="col-md-3"> 
                                                                                        <svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52"><circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none"/><path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/></svg>
                                                                                    </div>
                                                                                </div> <br><br>
                                                                                <div class="row justify-content-center">
                                                                                    <div class="col-md-7 text-center">
                                                                                        <p>OneStep 프리랜서 등록 완료!</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </fieldset>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                    </div>
                                    </div></div>
                                    </div>
                                    </div>
                                    </div>
                                    
                                    