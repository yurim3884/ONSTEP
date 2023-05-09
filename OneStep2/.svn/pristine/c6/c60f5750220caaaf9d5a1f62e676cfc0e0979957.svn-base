<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
#center {
	background-color: white;
}

.header {
	padding: 30px;
}

.buttons {
	padding: 20px;
}

.button1 {
	background-color: white;
	width: 80px;
	height: 35px;
}

.button2 {
	background-color: white;
	width: 80px;
	height: 35px;
}

.button3 {
	background-color: white;
	width: 60px;
	height: 35px;
}

.button4 {
	background-color: white;
	width: 80px;
	height: 35px;
}

.report {
	border: 1px;
	margin: 10px;
}

.td1 {
	border: 1px solid black;
	width: 40%;
	background-color: #ebe8e8;
	font-weight: bold;
	font-size: 12pt;
}

.td2 {
	border: 1px solid black;
	width: 60%
}

.td3 {
	border: 1px solid black;
	background-color: #ebe8e8;
	width: 20%;
	font-weight: bold;
}

.td4 {
	border: 1px solid black;
	width: 80%;
}

.td5 {
	border: 1px solid black;
	background-color: #ebe8e8;
	font-weight: bold;
	text-align: center;
	font-size: 15pt;
}

.td6 {
	border: 1px solid black;
	background-color: #ebe8e8;
	width: 15%;
	height: 50px;
	font-weight: bold;
	text-align: center;
	font-size: 13pt;
}

.td7 {
	border: 1px solid black;
}

.signTb {
	width: 100%;
	height: 100%;
	border: 1px solid black;
	text-align: center;
}

#firstRow {
	padding-bottom: 30px;
}

.btnGroup {
	padding-top: 20px;
}

#add_row {
	background-color: white;
	height: 35px;
}

#delete_row {
	background-color: white;
	height: 35px;
}

.report {
	border: 5px double #bdbcbc;
	padding: 30px;
}

.input {
	border: white;
	width: 100%;
	height: 40px;
}

.academic {
	height: 40px;
}

.tb2 {
	border: 1px solid black;
	margin-top: 30px;
	width: 100%;
}

.tb2-td1 {
	border: 1px solid black;
	background-color: #ebe8e8;
	height: 50px;
	text-align: center;
	font-weight: bold;
	font-size: 13pt;
}

#myModal {
	position: fixed;
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
	background-color: rgba(101, 102, 103, 0.5);
	display: none; /*초기값 안보이게*/
}

#myCont {
	border-radius: 10px;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 40px;
	font-size: 12pt;
	width: 35%;
    height: 55%;
	background-color: rgb(255, 255, 255);
	color: rgb(65, 64, 63);
}

#content {
	margin-top: 30px;
	margin-bottom: 25px;
	padding: 30px;
	border: 0.8px solid rgb(161, 160, 160);
}

#modalTb1 {
	font-weight: bold;
	width: 50%;
	height: 50px;
}

#mBtn {
	position: relative;
	left: 35%;
	height: 35px;
	width: 100px;
	background-color: #348ed5;
	border: 1px solid #348ed5;
	color: rgb(255, 255, 255);
	font-style: initial;
	border-radius: 8px;
}
/* =============  결재하기 모달  ================ */
#appModal {
	position: fixed;
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
	background-color: rgba(101, 102, 103, 0.5);
	display: none; /*초기값 안보이게*/
}

#appModalCon {
	border-radius: 10px;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
	font-size: 12pt;
	width: 30%;
	height: 30%;
	background-color: rgb(255, 255, 255);
	color: rgb(65, 64, 63);
}

#appContent {
	margin-top: 30px;
	margin-bottom: 40px;
	/* 	padding: 30px; */
}

#pass {
	border: 0.8px solid rgb(161, 160, 160);
	font-weight: bold;
	width: 70%;
	height: 50px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}

#appBtn {
	position: relative;
	left: 35%;
	height: 35px;
	width: 100px;
	background-color: #348ed5;
	border: 1px solid #348ed5;
	color: rgb(255, 255, 255);
	font-style: initial;
	border-radius: 8px;
}

#close {
	display: inline;
	float: right;
	padding-right: 10px;
	cursor: pointer;
	text-shadow: 1px 1px 2px gray;
	color: rgb(161, 160, 160);
}

#keyImage {
	max-width: 70%;
	max-height: 70%;
	filter: invert();
}

.keyTd {
	width: 25%;
	background-color: rgb(177, 176, 176);
}

#empBtn {
	position: relative;
	left: 45%;
	height: 35px;
	width: 100px;
	background-color: #348ed5;
	border: 1px solid #348ed5;
	color: rgb(255, 255, 255);
	font-style: initial;
	border-radius: 8px;
	margin-top: 40px;
}

#modalBody {
	padding-top: 10px;
	padding-left: 10px;
	margin-left: 30px;
	border: 1px solid rgb(216, 215, 215);
}
</style>

<div class="row" style="padding-top: 50px;">
			<div class="col-2"style="width: 22%;"></div>
			<div class="col-9" id="center">
				<form action="recruit/insert" method="post" id="recruit" enctype="multipart/form-data">
					<div class="buttons">
					<c:set value="결재요청" var="name"/>
						<c:if test="${status eq 'u' }"><c:set value="수정하기" var="name"/></c:if>
						<input type="button" class="button1" value="${name }" onclick="f_appModal()"/>
						<input type="button" class="button2" value="임시저장" id="tempst"/>
						<input type="button" class="button3" value="취소" id="cancel" />
						<input type="button" class="button4" id="emp" value="결재정보"/>
					</div>


					<div class="report">
						<h2 style="text-align: center; padding-bottom: 30px;">채용품의서</h2>
						<div class="row" id="firstRow">
							<div class="col-5">
								<table style="width: 100%;">
									<tr>
										<td class="td1">문서번호</td>
										<td class="td2" name="appCode" id="appCode">${recruitMo.get(0).recruit.appCode }</td>
									</tr>
									<tr>
										<td class="td1">부서</td>
										<td class="td2">${SessionInfo.depCode }</td>
									</tr>
									<tr>
										<td class="td1">기안일</td>
										<td class="td2"><input type="text" id="app_date"
											name="app.appDate" readonly="readonly" style="border: 0px;"></td>
									</tr>
									<tr>
										<td class="td1">기안자</td>
										<td class="td2">${SessionInfo.empName }</td>
									</tr>
									<tr>
										<td class="td1">보존 기한</td>
										<td class="td2">
											<!-- 										<input type="text" id="appYear"  readonly="readonly" style="border: 0px;"> -->
											5년
										</td>
									</tr>
								</table>
							</div>
							<div class="col-1"></div>
						</div>
						<table border=1 width="100%">
							<tbody id="my-tbody">
								<tr>
									<td rowspan='7' class="td5">인력사항</td>
									<td class="td6">이름</td>
									<td class="td7" colspan='3'><input type="text"
										name="rec.recName" class="input" value="${recruitMo.get(0).recruit.recName }" /></td>
								</tr>
								<tr>
									<td class="td6">주민등록번호</td>
									<td class="td7" colspan='3'>&emsp; ('-'없이 숫자 13자리만 입력하세요.)<input
										type="text" name="rec.recReg" value="${recruitMo.get(0).recruit.recReg }"></td>
								</tr>
								<tr>
									<td class="td6">학적</td>
									<td class="td7">&emsp; <select name="rec.recAcademy"
										class="academy" id="academy"style="height: 40px;">
											<option value="최종학력" selected="selected">== 최종학력==</option>
											<option value="중학교졸업">중학교졸업</option>
											<option value="고등학교졸업">고등학교 졸업</option>
											<option value="대학교재학중">대학교 재학중</option>
											<option value="대학교졸업">대학교 졸업</option>
									</select>
									</td>
									<td class="td6">전공</td>
									<td class="td7"><input type="text" class="input"
										name="rec.recMajor" value="${recruitMo.get(0).recruit.recMajor }"/></td>
								</tr>
								<tr>
									<td class="td6">전 직장명</td>
									<td class="td7" colspan='3'><input type="text"
										class="input" name="rec.recPcom" value="${recruitMo.get(0).recruit.recPcom }"></td>
								</tr>
								<tr>
									<td class="td6">부서</td>
									<td class="td7"><input type="text" class="input"
										name="rec.recPdep" value="${recruitMo.get(0).recruit.recPdep }"></td>
									<td class="td6">직급</td>
									<td class="td7"><input type="text" class="input"
										name="rec.recPpos" value="${recruitMo.get(0).recruit.recPpos }"></td>
								</tr>
								<tr>
									<td class="td6">근무기간</td>
									<td class="td7" colspan='3'><input type="text"
										class="input" name="rec.recPperiod" value="${recruitMo.get(0).recruit.recPperiod }"></td>
								</tr>
								<tr>
									<td class="td6">이전연봉</td>
									<td class="td7" colspan='3'><input type="text"
										class="input" name="rec.recPann" value="${recruitMo.get(0).recruit.recPann }"></td>
								</tr>


								<tr>
									<td rowspan='5' class="td5">채용내용</td>
									<td class="td6">추천인</td>
									<td class="td7" colspan='3'><input type="text"
										class="input" name="rec.recRec" value="${recruitMo.get(0).emp.empName }"/></td>
								</tr>
								<tr>
									<td class="td6">사유</td>
									<td class="td7" colspan='3'><input type="text"
										class="input" name="rec.recReason" value="${recruitMo.get(0).recruit.recReason }"/></td>
								</tr>
								<tr>
									<td class="td6">부서명</td>
									<td class="td7" colspan='3'>&emsp; <!-- 								<input type="text" class="input" name="rec.depCode" value=""/> -->
										<select name="rec.depCode" class="depCode" id="depCode"
										style="height: 40px;">
											<option value="" selected="selected">== 부서선택 ==</option>
											<option value="DEP2">기술지원본부</option>
											<option value="DEP3">영업부</option>
											<option value="DEP4">관리본부</option>
											<option value="DEP21">네트워크기술부</option>
											<option value="DEP22">보안기술부</option>
											<option value="DEP31">공공사업부</option>
											<option value="DEP32">금융사업부</option>
											<option value="DEP33">기업사업부</option>
											<option value="DEP41">경영지원부</option>
											<option value="DEP42">재무회계부</option>
									</select>
									</td>
								</tr>
								<tr>
									<td class="td6">직급</td>
									<td class="td7" colspan='3'>&emsp; <!-- 								<input type="text" class="input" name="rec.empPos" value=""/> -->
										<select name="rec.empPos" class="empPos" id="empPos"
										style="height: 40px;">
											<option value="" selected="selected">== 직급 선택 ==</option>
											<option value="사원">사원</option>
											<option value="대리">대리</option>
											<option value="과장">과장</option>
											<option value="차장">차장</option>
											<option value="이사">이사</option>
									</select>
									</td>
								</tr>
								<tr>
									<td class="td6">연봉</td>
									<td class="td7" colspan='3'><input type="text"
										class="input" name="rec.recAnn" value="${recruitMo.get(0).recruit.recAnn }"/></td>
								</tr>


							</tbody>
						</table>
						<table class="tb2">
							<tr>
								<td class="tb2-td1">파일첨부</td>
								<td class="tb2-td2">&emsp;&emsp;<input type="file" name="file" id="file" multiple/></td>
							</tr>
						</table>
						<!-- 				<div class="btnGroup"> -->
						<!-- 					<button id="add_row">행 추가하기</button> -->
						<!-- 					<button id="delete_row">행 삭제하기</button> -->
						<!-- 				</div> -->
					</div>
				</form>
			</div>
			<div class="col-1"></div>
		</div>
