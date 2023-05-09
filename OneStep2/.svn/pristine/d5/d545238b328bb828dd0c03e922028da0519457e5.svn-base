<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <div class="sub-header-container"> -->

	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- 		<header class="header navbar navbar-expand-sm"> -->
<!-- 			<ul class="navbar-nav flex-row"> -->
<!-- 				<li> -->
<!-- 					<div class="page-header"> -->
<!-- 						<nav class="breadcrumb-one" aria-label="breadcrumb"> -->
<!-- 							<ol class="breadcrumb"> -->
<!-- 								<li class="breadcrumb-item active" aria-current="page"><span>Datatables</span></li> -->
<!-- 							</ol> -->
<!-- 						</nav> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- <!-- 			<ul class="navbar-nav d-flex align-center ml-auto right-side-filter"> --> 
<!-- <!-- 				<li class=""> --> 
<!-- <!-- 					<p class="current-time" id="currentTime"></p> --> 
<!-- <!-- 					<p class="current-date" id="currentDate"></p> --> 
<!-- <!-- 				</li> --> 
<!-- <!-- 			</ul> --> 


<!-- 		</header> -->
<!-- </div> -->
<!--  Navbar Ends / Breadcrumb Area  -->
<!-- Main Body Starts -->
<div class="layout-px-spacing">
<div class="apps-ticket col-xl-12 col-lg-12 col-md-12"  style="margin: 0 auto; margin-bottom: 2%">

	<!-- Button trigger modal -->
	<div>
	<h3>기업비교</h3>
	</div>
	<div style="text-align: right;">
	<button type="button" class="btn btn-primary mb-2 mr-2" id="modalBtn"
		data-toggle="modal" data-target="#exampleModalCenter">비교기업
		추가하기</button>
	</div>
	<!--  모달 Start -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">기업추가하기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i class="las la-times"></i>
					</button>
				</div>
				<div class="modal-body"> 
					<h4 class="modal-heading mb-4 mt-2">기업을 검색해보세요</h4>
					<input type="text" id="text" class="form-control"
						placeholder="기업을 검색하세요">
					<div class="table-responsive" style="height: 300px;">
						<table class="table mb-0">
							<thead>
								<tr>
									<th>#</th>
									<th>기업명</th>
									<th></th>
									<th></th>
								</tr>
							</thead>
								<c:if test="${comList!=null}">
									<tbody id="supTable">
											<c:forEach items="${comList}" var="comList">
												<tr>
													<td><i class="fa-sharp fa-solid fa-heart" style="color: #f70808;"></i>관심기업</td>
													<td>${comList.companyName}</td>
													<td></td>
													<td><button type='button' id='appendBtn' data-dismiss='modal' class='btn btn-primary mb-2 mr-2'>추가</button></td>
												</tr>
											</c:forEach>
									</tbody>
								</c:if>
							<tbody id="table">
								
							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal">
						<i class="flaticon-cancel-12"></i> 닫기
					</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달 END -->

	<table class="table mb-0">
		<thead>
			<tr>
				<th id="companyLogo" class="th1" style="text-align: center;"><img src="" style='width:80%; height:150px;'></th>
				<th id="companyLogo2" class="th2" style="text-align: center;"><img src=" " style='width:80%; height:150px;'></th>
				<th id="companyLogo3" class="th3" style="text-align: center;"><img src=" " style='width:80%; height:150px;'></th>
			</tr>
		</thead>
		<tbody id="tbody">
			<tr>
				<td class="th1">
					<h3 id="companyName" style="text-align: center;">기업을 등록해보세요</h3>
				</td>
				<td class="th2">
					<h3 id="companyName2" style="text-align: center;">기업을 등록해보세요</h3>
				</td>
				<td class="th3">
					<h3 id="companyName3" style="text-align: center;">기업을 등록해보세요</h3>
				</td>
			</tr>
			<tr>
				<td style="width: 33%; text-align: center;" class="th1">
					<canvas id="myChart"></canvas>
				</td>
				<td style="width: 33%; text-align: center;" class="th2">
					<canvas id="myChart2"></canvas>
				</td>
				<td style="width: 33%; text-align: center;" class="th3">
					<canvas id="myChart3"></canvas>
				</td>
			</tr>
			<tr >
				<td id="companySmall" class="th1">회사 규모 :</td>
				<td id="companySmall2" class="th2">회사 규모 :</td>
				<td id="companySmall3" class="th3">회사 규모 :</td>
			</tr>
			<tr>
				<td id="companyEmployees" class="th1">회사 직원수 :</td>
				<td id="companyEmployees2" class="th2">회사 직원수 :</td>
				<td id="companyEmployees3" class="th3">회사 직원수 :</td>
			</tr>
			<tr>
				<td id="companyCap" class="th1">회사 자본금 :</td>
				<td id="companyCap2" class="th2">회사 자본금 :</td>
				<td id="companyCap3" class="th3">회사 자본금 :</td>
			</tr>
			<tr>
				<td id="companyTake" class="th1">회사 매출액 :</td>
				<td id="companyTake2" class="th2">회사 매출액 :</td>
				<td id="companyTake3" class="th3">회사 매출액 :</td>
			</tr>
			<tr>
				<td id="companyAverage" class="th1">직원 평균 근속기간 :</td>
				<td id="companyAverage2" class="th2">직원 평균 근속기간 :</td>
				<td id="companyAverage3" class="th3">직원 평균 근속기간 :</td>
			</tr>
			<tr>
				<td id="companyProfit" class="th1">회사 영업이익 :</td>
				<td id="companyProfit2" class="th2">회사 영업이익 :</td>
				<td id="companyProfit3" class="th3">회사 영업이익 :</td>
			</tr>
			<tr>
				<td id="companyIncome" class="th1">회사 당기 순이익 :</td>
				<td id="companyIncome2" class="th2">회사 당기 순이익 :</td>
				<td id="companyIncome3" class="th3">회사 당기 순이익 :</td>
			</tr>
		</tbody>
	</table>


</div>
</div>

<script type="text/javascript">

	$(function(){

		var text = $('#text');
		var html = "";		
		var cnt = 0;
		var supTable = $('#supTable');


		
		
		text.on("keyup",function(){
			
				$.ajax({
			 		url : "/company/searchCompanyList",
			 		type: "get",
			 		data:{companyName:text.val()},
			 		success: function(res){
				 		console.log(res);
			 			$("#table").html("");
			 			html="";
			 			
			 			for(let i=0; i<res.length; i++){
							
				 			html ="";
				 			
			 				console.log('기업명 : ' + res[i]['companyName']);	
							
			 				html += `<tr>`;
			 				html += "<th scope='row'>"+(i+1)+"</th>";
			 				html += '<td>'+res[i]['companyName']+'</td>';
			 				html += `<td> </td>`;
			 				html += "<td><button type='button' id="+"'appendBtn"+i+"'" + " data-dismiss='modal' class='btn btn-primary mb-2 mr-2'>추가</button></td>";
			 				html += `</tr>`;

			 				$("#table").append(html);
				 			}
	 			
	 					}
	 		
	 			});


	 			
		});


		supTable.on("click",function(event){
			if(event.target.type=='button'){
				var companyName = event.target.parentNode.parentNode.childNodes[3].innerHTML;

				$.ajax({
			 		url : "/company/searchCompany",
			 		type: "get",
			 		data:{companyName:companyName},
			 		success: function(res){
				 		console.log(res)
						var reviewScore=0;
						var reviewVision=0;
						var reviewBalance=0;
						var reviewCulture=0;
						var reviewWelfare=0;
						var reviewManage=0;
						for(let i=0; i<res.reviewList.length; i++){
							
							var review = res.reviewList[i];

							
							 reviewScore += parseInt(review.reviewScore);
							 reviewVision += parseInt(review.reviewVision);
							 reviewBalance += parseInt(review.reviewBalance);
							 reviewCulture += parseInt(review.reviewCulture);
							 reviewWelfare += parseInt(review.reviewWelfare);
							 reviewManage += parseInt(review.reviewManage);
							}

						var ScoreAvg = reviewScore/res.reviewList.length;
						var ScoreVision = reviewVision/res.reviewList.length;
						var ScoreBalance = reviewBalance/res.reviewList.length;
						var ScoreCulture = reviewCulture/res.reviewList.length;
						var ScoreWelfare = reviewWelfare/res.reviewList.length;
						var ScoreManage = reviewManage/res.reviewList.length;

						
				 		if(cnt==0){
				 			$("#companySmall").html("회사 규모 :");
				 			$("#companyEmployees").html("회사 직원수 :");
				 			$("#companyCap").html("회사 자본금 :");
				 			$("#companyTake").html("회사 매출액 :");
				 			$("#companyAverage").html("직원 평균 근속기간 :");
				 			$("#companyProfit").html("회사 영업이익 :");
				 			$("#companyIncome").html("회사 당기 순이익 :");
							var logo="";
							logo="<img style=' width:80%; height:150px;' src='/resources/upload/"+res.companyVO.companyLogo+"'"+">"
					 		$("#companyLogo").html(logo);
					 		$("#companySmall").html($("#companySmall").html()+res.companyVO.companySmall);
					 		$("#companyEmployees").html($("#companyEmployees").html()+res.companyVO.companyEmployees);
					 		$("#companyCap").html($("#companyCap").html()+res.companyVO.companyCap);
					 		$("#companyTake").html($("#companyTake").html()+res.companyVO.companyTake);
					 		$("#companyAverage").html($("#companyAverage").html()+res.companyVO.companyAverage);
					 		$("#companyProfit").html($("#companyProfit").html()+res.companyVO.companyProfit);
					 		$("#companyIncome").html($("#companyIncome").html()+res.companyVO.companyIncome);
							$("#companyName").html(res.companyVO.companyName);
	
					 		
					 		var dataArray = [];
					 		dataArray.push(ScoreAvg);
					 		dataArray.push(ScoreVision);
					 		dataArray.push(ScoreBalance);
					 		dataArray.push(ScoreCulture);
					 		dataArray.push(ScoreWelfare);
					 		dataArray.push(ScoreManage);
	
	
					 		 myChart.data.datasets[0].data=dataArray;
					 		 myChart.update();
					 		 $('.th1').css('opacity','1.0');
					 		 cnt++;
		 					}

				 			else if(cnt==1){
				 				$("#companySmall2").html("회사 규모 :");
					 			$("#companyEmployees2").html("회사 직원수 :");
					 			$("#companyCap2").html("회사 자본금 :");
					 			$("#companyTake2").html("회사 매출액 :");
					 			$("#companyAverage2").html("직원 평균 근속기간 :");
					 			$("#companyProfit2").html("회사 영업이익 :");
					 			$("#companyIncome2").html("회사 당기 순이익 :");
					 			var logo="";
								logo="<img style=' width:80%; height:150px;' src='/resources/upload/"+res.companyVO.companyLogo+"'"+">"

						 		$("#companyLogo2").html(logo);
						 		$("#companySmall2").html($("#companySmall2").html()+res.companyVO.companySmall);
						 		$("#companyEmployees2").html($("#companyEmployees2").html()+res.companyVO.companyEmployees);
						 		$("#companyCap2").html($("#companyCap2").html()+res.companyVO.companyCap);
						 		$("#companyTake2").html($("#companyTake2").html()+res.companyVO.companyTake);
						 		$("#companyAverage2").html($("#companyAverage2").html()+res.companyVO.companyAverage);
						 		$("#companyProfit2").html($("#companyProfit2").html()+res.companyVO.companyProfit);
						 		$("#companyIncome2").html($("#companyIncome2").html()+res.companyVO.companyIncome);
						 		$("#companyName2").html(res.companyVO.companyName);
		
						 		
						 		var dataArray = [];
						 		dataArray.push(ScoreAvg);
						 		dataArray.push(ScoreVision);
						 		dataArray.push(ScoreBalance);
						 		dataArray.push(ScoreCulture);
						 		dataArray.push(ScoreWelfare);
						 		dataArray.push(ScoreManage);
		
		
						 		 myChart2.data.datasets[0].data=dataArray;
						 		 myChart2.update();
						 		$('.th2').css('opacity','1.0');
						 		 cnt ++;
			 				}
				 			else if(cnt==2){
				 				$("#companySmall3").html("회사 규모 :");
					 			$("#companyEmployees3").html("회사 직원수 :");
					 			$("#companyCap3").html("회사 자본금 :");
					 			$("#companyTake3").html("회사 매출액 :");
					 			$("#companyAverage3").html("직원 평균 근속기간 :");
					 			$("#companyProfit3").html("회사 영업이익 :");
					 			$("#companyIncome3").html("회사 당기 순이익 :");
					 			var logo="";
								logo="<img style='width:80%; height:150px;' src='/resources/upload/"+res.companyVO.companyLogo+"'"+">"

						 		$("#companyLogo3").html(logo);
						 		$("#companySmall3").html($("#companySmall3").html()+res.companyVO.companySmall);
						 		$("#companyEmployees3").html($("#companyEmployees3").html()+res.companyVO.companyEmployees);
						 		$("#companyCap3").html($("#companyCap3").html()+res.companyVO.companyCap);
						 		$("#companyTake3").html($("#companyTake3").html()+res.companyVO.companyTake);
						 		$("#companyAverage3").html($("#companyAverage3").html()+res.companyVO.companyAverage);
						 		$("#companyProfit3").html($("#companyProfit3").html()+res.companyVO.companyProfit);
						 		$("#companyIncome3").html($("#companyIncome3").html()+res.companyVO.companyIncome);
						 		$("#companyName3").html(res.companyVO.companyName);
		
						 		
						 		var dataArray = [];
						 		dataArray.push(ScoreAvg);
						 		dataArray.push(ScoreVision);
						 		dataArray.push(ScoreBalance);
						 		dataArray.push(ScoreCulture);
						 		dataArray.push(ScoreWelfare);
						 		dataArray.push(ScoreManage);
		
		
						 		 myChart3.data.datasets[0].data=dataArray;
						 		 myChart3.update();
						 		 $('.th3').css('opacity','1.0');
						 		 cnt =0;
						 		 
			 					}

				 		 var emp1= $("#companyEmployees").text().split(':')[1];
				 		 var emp2= $("#companyEmployees2").text().split(':')[1];
				 		 var emp3= $("#companyEmployees3").text().split(':')[1];

				 		 
				 		 var cap1= $("#companyCap").text().split(':')[1];
				 		 var cap2= $("#companyCap2").text().split(':')[1];
				 		 var cap3= $("#companyCap3").text().split(':')[1];

				 		 
				 		 var take1= $("#companyTake").text().split(':')[1];
				 		 var take2= $("#companyTake2").text().split(':')[1];
				 		 var take3= $("#companyTake3").text().split(':')[1];

				 		 
				 		 var average1= $("#companyAverage").text().split(':')[1];
				 		 var average2= $("#companyAverage2").text().split(':')[1];
				 		 var average3= $("#companyAverage3").text().split(':')[1];

				 		 
				 		 var profit1= $("#companyProfit").text().split(':')[1];
				 		 var profit2= $("#companyProfit2").text().split(':')[1];
				 		 var profit3= $("#companyProfit3").text().split(':')[1];

				 		 
				 		 var income1= $("#companyIncome").text().split(':')[1];
				 		 var income2= $("#companyIncome2").text().split(':')[1];
				 		 var income3= $("#companyIncome3").text().split(':')[1];

				 		 
				 		 var empArr = [];
				 		empArr.push(parseInt(emp1));
				 		empArr.push(parseInt(emp2));
				 		empArr.push(parseInt(emp3));
				 		empArr.sort((a, b) => a - b);

				 		 var capArr = [];
				 		capArr.push(parseInt(cap1));
				 		capArr.push(parseInt(cap2));
			 			capArr.push(parseInt(cap3));
				 		capArr.sort((a, b) => a - b);

				 		 var takeArr = [];
				 		takeArr.push(parseInt(take1));
				 		takeArr.push(parseInt(take2));
			 			takeArr.push(parseInt(take3));
				 		takeArr.sort((a, b) => a - b);

				 		 var averageArr = [];
				 		averageArr.push(parseInt(average1));
				 		averageArr.push(parseInt(average2));
				 		averageArr.push(parseInt(average3));
				 		averageArr.sort((a, b) => a - b); 

				 		 var profitArr = [];
				 		profitArr.push(parseInt(profit1));
				 		profitArr.push(parseInt(profit2));
			 			profitArr.push(parseInt(profit3));
				 		profitArr.sort((a, b) => a - b);
				 		 
				 		 var incomeArr = [];
				 		incomeArr.push(parseInt(income1));
			 			incomeArr.push(parseInt(income2));
				 		incomeArr.push(parseInt(income3));
				 		
				 		incomeArr.sort((a, b) => a - b);

				 		
				 		if(isNaN(empArr[2])){
				 			if(empArr[empArr.length - 2] == parseInt(emp1)){
					 			$("#companyEmployees").css("color", "blue");
						 	 }
					 		 if(empArr[empArr.length - 2] == parseInt(emp2)){
					 			$("#companyEmployees2").css("color", "blue");
						 	 }
					 		 if(empArr[empArr.length - 2] == parseInt(emp3)){
					 			$("#companyEmployees3").css("color", "blue");
						 	 }
					 	}else{
						 		
						 		 if(empArr[empArr.length - 1] == parseInt(emp1)){
						 			$("#companyEmployees").css("color", "blue");
							 	 }
						 		 if(empArr[empArr.length - 1] == parseInt(emp2)){
						 			$("#companyEmployees2").css("color", "blue");
							 	 }
						 		 if(empArr[empArr.length - 1] == parseInt(emp3)){
						 			$("#companyEmployees3").css("color", "blue");
							 	 }
					 		}
					 		

				 		 if(isNaN(capArr[2])){
					 		 if(capArr[capArr.length - 2] == parseInt(cap1)){
					 			$("#companyCap").css("color", "blue");
						 	 }
					 		 if(capArr[capArr.length - 2] == parseInt(cap2)){
					 			$("#companyCap2").css("color", "blue");
						 	 }
					 		 if(capArr[capArr.length - 2] == parseInt(cap3)){
					 			$("#companyCap3").css("color", "blue");
						 	 }
				 		 }else{
				 			if(capArr[capArr.length - 1] == parseInt(cap1)){
					 			$("#companyCap").css("color", "blue");
						 	 }
					 		 if(capArr[capArr.length - 1] == parseInt(cap2)){
					 			$("#companyCap2").css("color", "blue");
						 	 }
					 		 if(capArr[capArr.length - 1] == parseInt(cap3)){
					 			$("#companyCap3").css("color", "blue");
						 	 }
				 		 }

				 		if(isNaN(takeArr[2])){
					 		 if(takeArr[takeArr.length - 2] == parseInt(take1)){
					 			$("#companyTake").css("color", "blue");
						 	 }
					 		 if(takeArr[takeArr.length - 2] == parseInt(take2)){
					 			$("#companyTake2").css("color", "blue");
						 	 }
					 		 if(takeArr[empArr.length - 2] == parseInt(take3)){
					 			$("#companyTake3").css("color", "blue");
						 	 }
				 		}else{
				 			if(takeArr[takeArr.length - 1] == parseInt(take1)){
					 			$("#companyTake").css("color", "blue");
						 	 }
					 		 if(takeArr[takeArr.length - 1] == parseInt(take2)){
					 			$("#companyTake2").css("color", "blue");
						 	 }
					 		 if(takeArr[empArr.length - 1] == parseInt(take3)){
					 			$("#companyTake3").css("color", "blue");
						 	 }



					 		}

							
				 		 if(isNaN(averageArr[2])){
					 		 if(averageArr[averageArr.length - 2] == parseInt(average1)){
					 			$("#companyAverage").css("color", "blue");
						 	 }
					 		 if(averageArr[averageArr.length - 2] == parseInt(average2)){
					 			$("#companyAverage2").css("color", "blue");
						 	 }
					 		 if(averageArr[averageArr.length - 2] == parseInt(average3)){
					 			$("#companyAverage3").css("color", "blue");
						 	 }
				 		 }else{
				 			if(averageArr[averageArr.length - 1] == parseInt(average1)){
					 			$("#companyAverage").css("color", "blue");
						 	 }
					 		 if(averageArr[averageArr.length - 1] == parseInt(average2)){
					 			$("#companyAverage2").css("color", "blue");
						 	 }
					 		 if(averageArr[averageArr.length - 1] == parseInt(average3)){
					 			$("#companyAverage3").css("color", "blue");
						 	 }
				 		 }


				 		if(isNaN(incomeArr[2])){
					 		 if(profitArr[profitArr.length - 2] == parseInt(profit1)){
					 			$("#companyProfit").css("color", "blue");
						 	 }
					 		 if(profitArr[profitArr.length - 2] == parseInt(profit2)){
					 			$("#companyProfit2").css("color", "blue");
						 	 }
					 		 if(profitArr[profitArr.length - 2] == parseInt(profit3)){
					 			$("#companyProfit3").css("color", "blue");
						 	 }
				 		}else{

				 			if(profitArr[profitArr.length - 1] == parseInt(profit1)){
					 			$("#companyProfit").css("color", "blue");
						 	 }
					 		 if(profitArr[profitArr.length - 1] == parseInt(profit2)){
					 			$("#companyProfit2").css("color", "blue");
						 	 }
					 		 if(profitArr[profitArr.length - 1] == parseInt(profit3)){
					 			$("#companyProfit3").css("color", "blue");
						 	 }



					 		}


				 		if(isNaN(incomeArr[2])){
					 		 if(incomeArr[incomeArr.length - 2] == parseInt(income1)){
					 			$("#companyIncome").css("color", "blue");
						 	 }
					 		 if(incomeArr[incomeArr.length - 2] == parseInt(income2)){
					 			$("#companyIncome2").css("color", "blue");
						 	 }
					 		 if(incomeArr[incomeArr.length - 2] == parseInt(income3)){
					 			$("#companyIncome3").css("color", "blue");
						 	 }
				 		}else{
				 			 if(incomeArr[incomeArr.length - 1] == parseInt(income1)){
					 			$("#companyIncome").css("color", "blue");
						 	 }
					 		 if(incomeArr[incomeArr.length - 1] == parseInt(income2)){
					 			$("#companyIncome2").css("color", "blue");
						 	 }
					 		 if(incomeArr[incomeArr.length - 1] == parseInt(income3)){
					 			$("#companyIncome3").css("color", "blue");
						 	 }


				 		 }
			 				
			 		}

			 		
	 			});
				

				
			}
			
		});


		$("#table").on("click",function(event){
			if(event.target.type=='button'){
				var companyName = event.target.parentNode.parentNode.childNodes[1].innerHTML;
				$("#tbody").find("td").css("background", "white");	
				
					
				$.ajax({
			 		url : "/company/searchCompany",
			 		type: "get",
			 		data:{companyName:companyName},
			 		success: function(res){
				 		console.log(res)
						var reviewScore=0;
						var reviewVision=0;
						var reviewBalance=0;
						var reviewCulture=0;
						var reviewWelfare=0;
						var reviewManage=0;
						for(let i=0; i<res.reviewList.length; i++){
							
							var review = res.reviewList[i];

							
							 reviewScore += parseInt(review.reviewScore);
							 reviewVision += parseInt(review.reviewVision);
							 reviewBalance += parseInt(review.reviewBalance);
							 reviewCulture += parseInt(review.reviewCulture);
							 reviewWelfare += parseInt(review.reviewWelfare);
							 reviewManage += parseInt(review.reviewManage);
							}

						var ScoreAvg = reviewScore/res.reviewList.length;
						var ScoreVision = reviewVision/res.reviewList.length;
						var ScoreBalance = reviewBalance/res.reviewList.length;
						var ScoreCulture = reviewCulture/res.reviewList.length;
						var ScoreWelfare = reviewWelfare/res.reviewList.length;
						var ScoreManage = reviewManage/res.reviewList.length;

						
				 		if(cnt==0){
				 			$("#companySmall").html("회사 규모 :");
				 			$("#companyEmployees").html("회사 직원수 :");
				 			$("#companyCap").html("회사 자본금 :");
				 			$("#companyTake").html("회사 매출액 :");
				 			$("#companyAverage").html("직원 평균 근속기간 :");
				 			$("#companyProfit").html("회사 영업이익 :");
				 			$("#companyIncome").html("회사 당기 순이익 :");
							var logo="";
							logo="<img style=' width:80%; height:150px;' src='/resources/upload/"+res.companyVO.companyLogo+"'"+">"
					 		$("#companyLogo").html(logo);
					 		$("#companySmall").html($("#companySmall").html()+res.companyVO.companySmall);
					 		$("#companyEmployees").html($("#companyEmployees").html()+res.companyVO.companyEmployees);
					 		$("#companyCap").html($("#companyCap").html()+res.companyVO.companyCap);
					 		$("#companyTake").html($("#companyTake").html()+res.companyVO.companyTake);
					 		$("#companyAverage").html($("#companyAverage").html()+res.companyVO.companyAverage);
					 		$("#companyProfit").html($("#companyProfit").html()+res.companyVO.companyProfit);
					 		$("#companyIncome").html($("#companyIncome").html()+res.companyVO.companyIncome);
							$("#companyName").html(res.companyVO.companyName);
	
					 		
					 		var dataArray = [];
					 		dataArray.push(ScoreAvg);
					 		dataArray.push(ScoreVision);
					 		dataArray.push(ScoreBalance);
					 		dataArray.push(ScoreCulture);
					 		dataArray.push(ScoreWelfare);
					 		dataArray.push(ScoreManage);
	
	
					 		 myChart.data.datasets[0].data=dataArray;
					 		 myChart.update();
					 		 $('.th1').css('opacity','1.0');
					 		 cnt++;
		 					}

				 			else if(cnt==1){
				 				$("#companySmall2").html("회사 규모 :");
					 			$("#companyEmployees2").html("회사 직원수 :");
					 			$("#companyCap2").html("회사 자본금 :");
					 			$("#companyTake2").html("회사 매출액 :");
					 			$("#companyAverage2").html("직원 평균 근속기간 :");
					 			$("#companyProfit2").html("회사 영업이익 :");
					 			$("#companyIncome2").html("회사 당기 순이익 :");
					 			var logo="";
								logo="<img style=' width:80%; height:150px;' src='/resources/upload/"+res.companyVO.companyLogo+"'"+">"

						 		$("#companyLogo2").html(logo);
						 		$("#companySmall2").html($("#companySmall2").html()+res.companyVO.companySmall);
						 		$("#companyEmployees2").html($("#companyEmployees2").html()+res.companyVO.companyEmployees);
						 		$("#companyCap2").html($("#companyCap2").html()+res.companyVO.companyCap);
						 		$("#companyTake2").html($("#companyTake2").html()+res.companyVO.companyTake);
						 		$("#companyAverage2").html($("#companyAverage2").html()+res.companyVO.companyAverage);
						 		$("#companyProfit2").html($("#companyProfit2").html()+res.companyVO.companyProfit);
						 		$("#companyIncome2").html($("#companyIncome2").html()+res.companyVO.companyIncome);
						 		$("#companyName2").html(res.companyVO.companyName);
		
						 		
						 		var dataArray = [];
						 		dataArray.push(ScoreAvg);
						 		dataArray.push(ScoreVision);
						 		dataArray.push(ScoreBalance);
						 		dataArray.push(ScoreCulture);
						 		dataArray.push(ScoreWelfare);
						 		dataArray.push(ScoreManage);
		
		
						 		 myChart2.data.datasets[0].data=dataArray;
						 		 myChart2.update();
						 		$('.th2').css('opacity','1.0');
						 		 cnt ++;
			 				}
				 			else if(cnt==2){
				 				$("#companySmall3").html("회사 규모 :");
					 			$("#companyEmployees3").html("회사 직원수 :");
					 			$("#companyCap3").html("회사 자본금 :");
					 			$("#companyTake3").html("회사 매출액 :");
					 			$("#companyAverage3").html("직원 평균 근속기간 :");
					 			$("#companyProfit3").html("회사 영업이익 :");
					 			$("#companyIncome3").html("회사 당기 순이익 :");
					 			var logo="";
								logo="<img style='width:80%; height:150px;' src='/resources/upload/"+res.companyVO.companyLogo+"'"+">"

						 		$("#companyLogo3").html(logo);
						 		$("#companySmall3").html($("#companySmall3").html()+res.companyVO.companySmall);
						 		$("#companyEmployees3").html($("#companyEmployees3").html()+res.companyVO.companyEmployees);
						 		$("#companyCap3").html($("#companyCap3").html()+res.companyVO.companyCap);
						 		$("#companyTake3").html($("#companyTake3").html()+res.companyVO.companyTake);
						 		$("#companyAverage3").html($("#companyAverage3").html()+res.companyVO.companyAverage);
						 		$("#companyProfit3").html($("#companyProfit3").html()+res.companyVO.companyProfit);
						 		$("#companyIncome3").html($("#companyIncome3").html()+res.companyVO.companyIncome);
						 		$("#companyName3").html(res.companyVO.companyName);
		
						 		
						 		var dataArray = [];
						 		dataArray.push(ScoreAvg);
						 		dataArray.push(ScoreVision);
						 		dataArray.push(ScoreBalance);
						 		dataArray.push(ScoreCulture);
						 		dataArray.push(ScoreWelfare);
						 		dataArray.push(ScoreManage);
		
		
						 		 myChart3.data.datasets[0].data=dataArray;
						 		 myChart3.update();
						 		 $('.th3').css('opacity','1.0');
						 		 cnt =0;
						 		 
			 					}

				 		 var emp1= $("#companyEmployees").text().split(':')[1];
				 		 var emp2= $("#companyEmployees2").text().split(':')[1];
				 		 var emp3= $("#companyEmployees3").text().split(':')[1];

				 		 
				 		 var cap1= $("#companyCap").text().split(':')[1];
				 		 var cap2= $("#companyCap2").text().split(':')[1];
				 		 var cap3= $("#companyCap3").text().split(':')[1];

				 		 
				 		 var take1= $("#companyTake").text().split(':')[1];
				 		 var take2= $("#companyTake2").text().split(':')[1];
				 		 var take3= $("#companyTake3").text().split(':')[1];

				 		 
				 		 var average1= $("#companyAverage").text().split(':')[1];
				 		 var average2= $("#companyAverage2").text().split(':')[1];
				 		 var average3= $("#companyAverage3").text().split(':')[1];

				 		 
				 		 var profit1= $("#companyProfit").text().split(':')[1];
				 		 var profit2= $("#companyProfit2").text().split(':')[1];
				 		 var profit3= $("#companyProfit3").text().split(':')[1];

				 		 
				 		 var income1= $("#companyIncome").text().split(':')[1];
				 		 var income2= $("#companyIncome2").text().split(':')[1];
				 		 var income3= $("#companyIncome3").text().split(':')[1];

				 		 
				 		 var empArr = [];
				 		empArr.push(parseInt(emp1));
				 		empArr.push(parseInt(emp2));
				 		empArr.push(parseInt(emp3));
				 		empArr.sort((a, b) => a - b);

				 		 var capArr = [];
				 		capArr.push(parseInt(cap1));
				 		capArr.push(parseInt(cap2));
			 			capArr.push(parseInt(cap3));
				 		capArr.sort((a, b) => a - b);

				 		 var takeArr = [];
				 		takeArr.push(parseInt(take1));
				 		takeArr.push(parseInt(take2));
			 			takeArr.push(parseInt(take3));
				 		takeArr.sort((a, b) => a - b);

				 		 var averageArr = [];
				 		averageArr.push(parseInt(average1));
				 		averageArr.push(parseInt(average2));
				 		averageArr.push(parseInt(average3));
				 		averageArr.sort((a, b) => a - b); 

				 		 var profitArr = [];
				 		profitArr.push(parseInt(profit1));
				 		profitArr.push(parseInt(profit2));
			 			profitArr.push(parseInt(profit3));
				 		profitArr.sort((a, b) => a - b);
				 		 
				 		 var incomeArr = [];
				 		incomeArr.push(parseInt(income1));
			 			incomeArr.push(parseInt(income2));
				 		incomeArr.push(parseInt(income3));
				 		
				 		incomeArr.sort((a, b) => a - b);

				 		
				 		if(isNaN(empArr[2])){
				 			if(empArr[empArr.length - 2] == parseInt(emp1)){
					 			$("#companyEmployees").css("color", "blue");
						 	 }
					 		 if(empArr[empArr.length - 2] == parseInt(emp2)){
					 			$("#companyEmployees2").css("color", "blue");
						 	 }
					 		 if(empArr[empArr.length - 2] == parseInt(emp3)){
					 			$("#companyEmployees3").css("color", "blue");
						 	 }
					 	}else{
						 		
						 		 if(empArr[empArr.length - 1] == parseInt(emp1)){
						 			$("#companyEmployees").css("color", "blue");
							 	 }
						 		 if(empArr[empArr.length - 1] == parseInt(emp2)){
						 			$("#companyEmployees2").css("color", "blue");
							 	 }
						 		 if(empArr[empArr.length - 1] == parseInt(emp3)){
						 			$("#companyEmployees3").css("color", "blue");
							 	 }
					 		}
					 		

				 		 if(isNaN(capArr[2])){
					 		 if(capArr[capArr.length - 2] == parseInt(cap1)){
					 			$("#companyCap").css("color", "blue");
						 	 }
					 		 if(capArr[capArr.length - 2] == parseInt(cap2)){
					 			$("#companyCap2").css("color", "blue");
						 	 }
					 		 if(capArr[capArr.length - 2] == parseInt(cap3)){
					 			$("#companyCap3").css("color", "blue");
						 	 }
				 		 }else{
				 			if(capArr[capArr.length - 1] == parseInt(cap1)){
					 			$("#companyCap").css("color", "blue");
						 	 }
					 		 if(capArr[capArr.length - 1] == parseInt(cap2)){
					 			$("#companyCap2").css("color", "blue");
						 	 }
					 		 if(capArr[capArr.length - 1] == parseInt(cap3)){
					 			$("#companyCap3").css("color", "blue");
						 	 }
				 		 }

				 		if(isNaN(takeArr[2])){
					 		 if(takeArr[takeArr.length - 2] == parseInt(take1)){
					 			$("#companyTake").css("color", "blue");
						 	 }
					 		 if(takeArr[takeArr.length - 2] == parseInt(take2)){
					 			$("#companyTake2").css("color", "blue");
						 	 }
					 		 if(takeArr[empArr.length - 2] == parseInt(take3)){
					 			$("#companyTake3").css("color", "blue");
						 	 }
				 		}else{
				 			if(takeArr[takeArr.length - 1] == parseInt(take1)){
					 			$("#companyTake").css("color", "blue");
						 	 }
					 		 if(takeArr[takeArr.length - 1] == parseInt(take2)){
					 			$("#companyTake2").css("color", "blue");
						 	 }
					 		 if(takeArr[empArr.length - 1] == parseInt(take3)){
					 			$("#companyTake3").css("color", "blue");
						 	 }



					 		}

							
				 		 if(isNaN(averageArr[2])){
					 		 if(averageArr[averageArr.length - 2] == parseInt(average1)){
					 			$("#companyAverage").css("color", "blue");
						 	 }
					 		 if(averageArr[averageArr.length - 2] == parseInt(average2)){
					 			$("#companyAverage2").css("color", "blue");
						 	 }
					 		 if(averageArr[averageArr.length - 2] == parseInt(average3)){
					 			$("#companyAverage3").css("color", "blue");
						 	 }
				 		 }else{
				 			if(averageArr[averageArr.length - 1] == parseInt(average1)){
					 			$("#companyAverage").css("color", "blue");
						 	 }
					 		 if(averageArr[averageArr.length - 1] == parseInt(average2)){
					 			$("#companyAverage2").css("color", "blue");
						 	 }
					 		 if(averageArr[averageArr.length - 1] == parseInt(average3)){
					 			$("#companyAverage3").css("color", "blue");
						 	 }
				 		 }


				 		if(isNaN(incomeArr[2])){
					 		 if(profitArr[profitArr.length - 2] == parseInt(profit1)){
					 			$("#companyProfit").css("color", "blue");
						 	 }
					 		 if(profitArr[profitArr.length - 2] == parseInt(profit2)){
					 			$("#companyProfit2").css("color", "blue");
						 	 }
					 		 if(profitArr[profitArr.length - 2] == parseInt(profit3)){
					 			$("#companyProfit3").css("color", "blue");
						 	 }
				 		}else{

				 			if(profitArr[profitArr.length - 1] == parseInt(profit1)){
					 			$("#companyProfit").css("color", "blue");
						 	 }
					 		 if(profitArr[profitArr.length - 1] == parseInt(profit2)){
					 			$("#companyProfit2").css("color", "blue");
						 	 }
					 		 if(profitArr[profitArr.length - 1] == parseInt(profit3)){
					 			$("#companyProfit3").css("color", "blue");
						 	 }



					 		}


				 		if(isNaN(incomeArr[2])){
					 		 if(incomeArr[incomeArr.length - 2] == parseInt(income1)){
					 			$("#companyIncome").css("color", "blue");
						 	 }
					 		 if(incomeArr[incomeArr.length - 2] == parseInt(income2)){
					 			$("#companyIncome2").css("color", "blue");
						 	 }
					 		 if(incomeArr[incomeArr.length - 2] == parseInt(income3)){
					 			$("#companyIncome3").css("color", "blue");
						 	 }
				 		}else{
				 			 if(incomeArr[incomeArr.length - 1] == parseInt(income1)){
					 			$("#companyIncome").css("color", "blue");
						 	 }
					 		 if(incomeArr[incomeArr.length - 1] == parseInt(income2)){
					 			$("#companyIncome2").css("color", "blue");
						 	 }
					 		 if(incomeArr[incomeArr.length - 1] == parseInt(income3)){
					 			$("#companyIncome3").css("color", "blue");
						 	 }


				 		 }
			 				
			 		}

			 		
	 			});
				
							
				}
			
			
			});






		//차트JS

		 const labels = [
			    '승진 및 가능성',
			    '복지 및 급여',
			    '업무와 삶의 균형',
			    '사내문화',
			    '경영진',
			    '음음'
			  ];

		  const data = {
		    labels: labels,
		    datasets: [{
		      label: '..',
		      backgroundColor: '#e7515a',
		      borderColor: '#e7515a',
		      data: [0,0,0,0,0,0]
		    }]
		  };

		  const data2 = {
				    labels: labels,
				    datasets: [{
				      label: '..',
				      backgroundColor: '#8dbf42',
				      borderColor: '#8dbf42',
				      data: [0,0,0,0,0,0]
				    }]
				  };

		  const data3 = {
				    labels: labels,
				    datasets: [{
				      label: '..',
				      backgroundColor: '#e2a03f',
				      borderColor: '#e2a03f',
				      data: [0,0,0,0,0,0]
				    }]
				  };
	
		  const config = {
		    type: 'radar',
		    data: data,
		    
		    options: {
		        scales: {
		          r: {
		            angleLines: {
		              color: 'red',
		              display: false
		            },
		            
			      suggestedMin: 0,
	              suggestedMax: 10
		            
		          }
          
		        }
		      }
		  };

		  const config2 = {
				    type: 'radar',
				    data: data2,
				    
				    options: {
				        scales: {
				          r: {
				            angleLines: {
				              color: 'red',
				              display: false
				            },
				            
					      suggestedMin: 0,
			              suggestedMax: 10
				            
				          }
		          
				        }
				      }
				  };

		  const config3 = {
				    type: 'radar',
				    data: data3,
				    
				    options: {
				        scales: {
				          r: {
				            angleLines: {
				              color: 'red',
				              display: false
				            },
				            
					      suggestedMin: 0,
			              suggestedMax: 10
				            
				          }
		          
				        }
				      }
				  };

	
		  const myChart = new Chart(
				    document.getElementById('myChart'),
				    config
				  );
		  const myChart2 = new Chart(
				    document.getElementById('myChart2'),
				    config2
				  );
		  const myChart3 = new Chart(
				    document.getElementById('myChart3'),
				    config3
				  );
		


		

	});
	</script>

