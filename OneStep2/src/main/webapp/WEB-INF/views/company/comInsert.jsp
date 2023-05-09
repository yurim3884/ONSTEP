<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <!--  Navbar Ends / Breadcrumb Area  -->
            <!-- Main Body Starts -->
<form action="/company/insertInfo" id="form" name="form" method="post" enctype="multipart/form-data">
            <div class="layout-px-spacing" >                
                <div class="row layout-spacing layout-top-spacing" id="cancel-row">
                    <div class="col-lg-10"style="margin: 0 auto;">
                        <div class="">
                            <div class="widget-content searchable-container grid">
                                <div class="card-box add-product" >
                                        <div class="row" style="width: 100%;">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="productname" class="strong">법인등록번호(-를제외한)</label>
                                                    <input id="companyNumber" name="companyNumber" type="text" class="form-control form-control">
                                                </div>
                                                <button type="button" id="companyCheckBtn" class="btn btn-sm mt-1 btn-primary">진위여부확인</button>
                                                <div class="mt-3 form-group">
                                                    <label for="manufacturername" class="">법인명</label>
                                                    <input id="companyName" name="companyName" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="manufacturerbrand" class="">회사대표자성명</label>
                                                    <input id="companyRepresentative" name="companyRepresentative" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="price" class="">사업자등록번호</label>
                                                    <input id="companyBusiness" name="companyBusiness" type="text" class="form-control form-control">
                                                </div>
                                                <button type="button" id="jusoBtn" class="mt-3 btn btn-sm btn-primary">주소찾기</button>
                                                <div class="form-group mt-3">
                                                    <label for="price" class="">우편번호</label>
                                                    <input id="companyZip" name="companyZip" type="text" readonly="readonly" class="form-control form-control">
                                                    <label for="price" class="">주소</label>
                                                    <input id="companyAddr1" name="companyAddr1" type="text" readonly="readonly" class="form-control form-control">
                                                    <label for="price" class="">상세주소</label>
                                                    <input id="companyAddr2" name="companyAddr2" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="price" class="">회사전화번호</label>
                                                    <input id="companyPhone" name="companyPhone" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="price" class="">회사이메일</label>
                                                    <input id="companyEmail" name="companyEmail" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="price" class="">회사설립일자</label>
													<input type="date" id="companyEstablishment" name="companyEstablishment"
												       value="2018-07-22"
												       min="2018-01-01" max="2018-12-31">
                                                </div>
                                                
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="tag" class="">회사 직원수(명)</label>
                                                    <input id="companyEmployees" name="companyEmployees" type="text" class="form-control form-control">
                                                </div>
                                                 <div class="form-group">
                                                    <label for="tag" class="">기업분류</label>
                                                	<select name="companySmall" class="form-control select2">
                                                        <option>Select</option>
                                                        <option value="중소기업">중소기업</option>
                                                        <option value="중견기업">중견기업</option>
                                                        <option value="대기업">대기업</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="tag" class="">회사 주요사업명</label>
                                               		 <select name="companyMain" class="form-control select2">
                                                        <option>Select</option>
                                                        <option value="개발">개발</option>
                                                        <option value="교육">교육</option>
                                                        <option value="금융/재무">금융/재무</option>
                                                        <option value="금융/재무">기획/경영</option>
                                                        <option value="데이터">데이터</option>
                                                        <option value="디자인">디자인</option>
                                                        <option value="마케팅/시장조사">마케팅/시장조사</option>
                                                        <option value="미디어/홍보">미디어/홍보</option>
                                                        <option value="법률/법무">법률/법무</option>
                                                        <option value="생산/제조">생산/제조</option>
                                                        <option value="생산관리/품질관리">생산관리/품질관리</option>
                                                        <option value="서비스/고객지원">서비스/고객지원</option>
                                                        <option value="엔지니어링">엔지니어링</option>
                                                        <option value="연구개발">연구개발</option>
                                                        <option value="영업/제휴">영업/제휴</option>
                                                        <option value="유통/무역">유통/무역</option>
                                                        <option value="의약">의약</option>
                                                        <option value="인사/총무">인사/총무</option>
                                                        <option value="전문직">전문직</option>
                                                        <option value="특수계층/공공">특수계층/공공</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="tag" class="">직원 평균근속기간 (년)</label>
                                                    <input id="companyAverage" name="companyAverage" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="tag" class="">회사 평균 급여금액(원)</label>
                                                    <input id="companyPerson" name="companyPerson" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="productdesc" class="">자본금(원)</label>
                                                	<input id="companyCap" name="companyCap" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="productdesc" class="">매출액(원)</label>
                                                    <input id="companyTake" name="companyTake" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="productdesc" class="">영업이익(원)</label>
                                                    <input id="companyProfit" name="companyProfit" type="text" class="form-control form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="productdesc" class="">당기순이익(원)</label>
                                                    <input id="companyIncome" name="companyIncome" type="text" class="form-control form-control">
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label for="productdesc" class="">기업소개</label>
                                                    <textarea class="form-control" name="companyIntro" id="companyIntro" rows="8"></textarea>
                                                </div>
                                        </div>
                                   
                                </div>
                                <div class="mt-3 card-box add-product">
                                    <h6 class="mb-4 ">기업로고 등록</h6>
                                    
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div id="dropzone">
                                                    <input type="file" name="logoFile" onchange="setThumbnail(event)" >
                                            </div>
                                        </div>
                                        <div class="mt-3 col-md-12">
                                            <div>
                                                   <img id="imgzone" style="height: 150px; width: 150px;" alt="기본이미지" src="${pageContext.request.contextPath }/resources/assets/img/기본이미지.png">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    <button type="button" id="submitBtn" class="mt-3 btn btn-sm btn-primary">기업정보 등록하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
                                    </form>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
		function setThumbnail(event) {
	        var reader = new FileReader();

	        reader.onload = function(event) {
	          var img = document.createElement("img");
	          imgzone.setAttribute("src", event.target.result);
	          
	        };

	        reader.readAsDataURL(event.target.files[0]);
	      }

	$(function(){
		$('#submitBtn').on("click",function(){
			form.submit();
			
			});

		//주소찾기

		var jusoBtn = $('#jusoBtn');
		jusoBtn.on("click",function(){
		    new daum.Postcode({
		        oncomplete: function(data) {
		        	 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("companyAddr1").value = extraAddr;
	                
	                } else {
	                    document.getElementById("companyAddr1").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('companyZip').value = data.zonecode;
	                document.getElementById("companyAddr1").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("companyAddr2").focus();
		        }
		    }).open();
		});





		

		
		});
	</script>            