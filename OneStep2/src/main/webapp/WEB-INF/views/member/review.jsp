<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/plugins/star-rating.min.css"
	media="all" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/plugins/themes/krajee-fa/theme.css"
	media="all" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/plugins/themes/krajee-svg/theme.css"
	media="all" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/plugins/themes/krajee-uni/theme.css"
	media="all" type="text/css" />
<script
	src="${pageContext.request.contextPath }/resources/plugins/star-rating.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/resources/plugins/themes/krajee-fa/theme.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/resources/plugins/themes/krajee-svg/theme.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/resources/plugins/themes/krajee-gly/theme.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/resources/plugins/themes/krajee-uni/theme.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4261e8ca3de1b292bda7b2664f7de39f&libraries=services"></script>
<script type="text/javascript">
	$(function() {
		$('.kv-fa').rating({
			theme : 'krajee-fa',
			filledStar : '<i class="fa fa-star"></i>',
			emptyStar : '<i class="fa fa-star-o"></i>'
		});

	});
</script>
<style>
.fa-star:before{
margin-left: 3px;
}
</style>
<div class="col-10" style="margin: 0 auto;">
	<h2 align="center">평점</h2>
	<div class="col-3 mt-3" style="">
	    <input id="score" class="form-control"  min="0" max="10" step="1" type="range">
	</div>
	<div id="scoreZone" style="display: none">
	
	</div>
	<div class="row w-100 m-0" id="Div">
		
		<c:forEach items="${review}" var="reviewVO" varStatus="stat">
			<div class="col-xl-4 col-lg-4 col-md-4 mb-4">
				<div class="card single-team">
					<div class="card" style="border-radius: 3%; z-index: 33; box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid;">
						<div class="card-body" style="margin-left: 50px;" >
<%-- 									<c:if test="${reviewVO.reviewScore >= '8' }"> --%>
<!-- 									<div class="ribbon" style="float: right;"><i class="las la-check-circle"></i> BEST</div> -->
<%-- 									</c:if> --%>
							<div class="user-info">
								<h5 class="card-user_name"> <a href="/member/detail/${reviewVO.comId}">${reviewVO.companyName} </a></h5>
								<h5 class="card-user_name">${reviewVO.memId }님의리뷰</h5>
								<p class="card-text"></p>
								<div class="card-star_rating">
									<span class="card-text">${reviewVO.reviewStart }</span> <br>
									<span class="card-text"> 
									기업 총점 : ${reviewVO.reviewScore }점
									</span>
									<c:if test="${reviewVO.reviewScore >= '8' }">
									<span class="badge badge-rounded outline-badge-danger">BEST</span></c:if>
									<br>
								</div>
								<!-- 								 모달 Start -->
								<!-- 								Button trigger modal -->
								<button type="button" class="btn btn-primary mb-2 mr-2"
									id="modalBtn" data-toggle="modal"
									data-target="#exampleModalCenter${reviewVO.reviewId}">
									리뷰상세보기</button>
								
								<!-- 								 모달 End -->
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal fade" style="z-index:1500"
				id="exampleModalCenter${reviewVO.reviewId}" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalCenterTitle">${reviewVO.companyName}</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<i class="las la-times"></i>
							</button>
						</div>
						<div class="modal-body">
							<p class="modal-text">기업 한줄평 : ${reviewVO.reviewComent }</p>
							<br><br>
							<p class="modal-text">기업 장점 : ${reviewVO.reviewComent }</p>
							<br><br>
							<p class="modal-text">기업 단점 : ${reviewVO.reviewComent }</p>
							<br>
						
						
							<div id="reviewScore">
								<p class="modal-text">기업 총점 :</p>
								<input type="text" class="kv-fa rating-loading"
									value="${reviewVO.reviewScore / 2}" data-size="xs"
									title="" disabled="disabled">
							</div>
							<div id="reviewVision">
							<p class="modal-text">가능성 :</p>
								<input type="text" class="kv-fa rating-loading"
									value="${reviewVO.reviewVision / 2}" data-size="xs"
									title="" disabled="disabled">
							</div>
							<div id="reviewWelfare">
							<p class="modal-text">복지 :</p>
								<input type="text" class="kv-fa rating-loading"
									value="${reviewVO.reviewWelfare / 2}" data-size="xs"
									title="" disabled="disabled">
							</div>
							<div id="reviewBalance">
							<p class="modal-text">워라벨 :</p>
								<input type="text" class="kv-fa rating-loading"
									value="${reviewVO.reviewBalance / 2}" data-size="xs"
									title="" disabled="disabled">
							</div>
							<div id="reviewCulture">
							<p class="modal-text">기업내문화 :</p>
								<input type="text" class="kv-fa rating-loading"
									value="${reviewVO.reviewCulture / 2}" data-size="xs"
									title="" disabled="disabled">
							</div>
							<div id="reviewManage">
							<p class="modal-text">경영진 :</p>
								<input type="text" class="kv-fa rating-loading"
									value="${reviewVO.reviewManage / 2}" data-size="xs"
									title="" disabled="disabled">
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</c:forEach>
		
		
	</div>
</div>



<script type="text/javascript">
	$(function() {
// 		$('.kv-fa').rating({
// 			theme : 'krajee-fa',
// 			filledStar : '<i class="fa fa-star"></i>',
// 			emptyStar : '<i class="fa fa-star-o"></i>'
// 		});



		$('#score').on('change',function(){
			$('#scoreZone').text("");
			$('#scoreZone').text($('#score').val());


			var score = {reviewScore : $('#score').val()};

			var jsonObj = JSON.stringify(score);
			
			$.ajax({

				url : "/member/ajaxReview",
				type : "post",
				contentType : "application/json; charset=UTF-8",
				data : jsonObj,
				dataType :'json',
				success : function(res){
					console.log(res);
					var html = "";
					for(var i=0; i<res.length; i++){
						html += "<div class='col-xl-4 col-lg-4 col-md-4 mb-4'>";
							html += "<div class='card single-team'>";
							html += "	<div class='card' style='border-radius: 3%; z-index: 33; box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid;'>";
							html += "		<div class='card-body' style='margin-left: 50px;'>";
							html += "			<div class='user-info'>";
							html += "				<h5 class='card-user_name'>"+res[i].companyName+"</h5>";
							html += "				<h5 class='card-user_name'>"+res[i].memId+"님의리뷰</h5>";
							html += "				<p class='card-text'></p>";
							html += "				<div class='card-star_rating'>";
							html += "					<span class='card-text'>"+res[i].reviewStart+"</span> <br>";
							html += "					<span class='card-text'> ";
							html += "					기업 총점 : "+res[i].reviewScore+"점";
							html += "					</span>";
							html += "					<br>";
							html += "				</div>";
							html += "				<button type='button' class='btn btn-primary mb-2 mr-2'";
							html += "					id='modalBtn' data-toggle='modal'";
							html += "					data-target='#exampleModalCenter"+res[i].reviewId+"'>";
							html += "					리뷰상세보기</button>";
							html += "				<div class='modal fade'";
							html += "					id='exampleModalCenter"+res[i].reviewId+"'tabindex='-1'";
							html += "					role='dialog' aria-labelledby='exampleModalCenterTitle'";
							html += "					aria-hidden='true'>";
							html += "					<div class='modal-dialog modal-dialog-centered' role='document'>";
							html += "						<div class='modal-content'>";
							html += "							<div class='modal-header'>";
							html += "								<h5 class='modal-title' id='exampleModalCenterTitle'>"+res[i].companyName+"</h5>";
							html += "								<button type='button' class='close' data-dismiss='modal'";
							html += "									aria-label='Close'>";
							html += "									<i class='las la-times'></i>";
							html += "								</button>";
							html += "							</div>";
							html += "							<div class='modal-body'>";
							html += "								<p class='modal-text'>기업 한줄평 : "+res[i].reviewComent+"</p><br><br>";
							html += "								<p class='modal-text'>기업 장점 : "+res[i].reviewComent+"</p><br><br>";
							html += "								<p class='modal-text'>기업 단점 : "+res[i].reviewComent+"</p><br><br>";
							html += "								<br><br><br><br><br><br><br>";
							html += "								<div id='reviewScore'>";
							html += "								<p class='modal-text'>기업 총점 :</p>";
							html += "									<input type='text' class='kv-fa rating-loading'";
							html += "										value='"+res[i].reviewScore/2+"' data-size='xs'";
							html += "										title='' disabled='disabled'>";
							html += "								</div>";
							html += "								<div id='reviewVision'>";
							html += "								<p class='modal-text'>가능성 :</p>";
							html += "									<input type='text' class='kv-fa rating-loading'";
							html += "										value='"+res[i].reviewVision/2+"' data-size='xs'";
							html += "										title='' disabled='disabled'>";
							html += "								</div>";
							html += "								<div id='reviewWelfare'>";
							html += "								<p class='modal-text'>복지 :</p>";
							html += "									<input type='text' class='kv-fa rating-loading'";
							html += "										value='"+res[i].reviewWelfare/2+"' data-size='xs'";
							html += "										title='' disabled='disabled'>";
							html += "								</div>";
							html += "								<div id='reviewBalance'>";
							html += "								<p class='modal-text'>워라벨 :</p>";
							html += "									<input type='text' class='kv-fa rating-loading'";
							html += "										value='"+res[i].reviewBalance/2+"' data-size='xs'";
							html += "										title='' disabled='disabled'>";
							html += "								</div>";
							html += "								<div id='reviewCulture'>";
							html += "								<p class='modal-text'>기업내문화 :</p>";
							html += "									<input type='text' class='kv-fa rating-loading'";
							html += "										value='"+res[i].reviewCulture/2+"' data-size='xs'";
							html += "										title='' disabled='disabled'>";
							html += "								</div>";
							html += "								<div id='reviewManage'>";
							html += "								<p class='modal-text'>경영진 :</p>";
							html += "									<input type='text' class='kv-fa rating-loading'";
							html += "										value='"+res[i].reviewManage/2+"' data-size='xs'";
							html += "										title='' disabled='disabled'>";
							html += "								</div>";
							html += "							</div>";
							html += "							<div class='modal-footer'>";
							html += "								<button class='btn' data-dismiss='modal'>";
							html += "									<i class='flaticon-cancel-12'></i> 닫기";
							html += "								</button>";
							html += "								<button type='button' class='btn btn-primary'>저장</button>";
							html += "							</div>";
							html += "						</div>";
							html += "					</div>";
							html += "				</div>";
							html += "			</div>";
							html += "		</div>";
							html += "	</div>";
							html += "</div>";
							html += "</div>";
							
						}
					

					$('#Div').html(html);
						
					}
				

				
				
				});

			
			});


		
	});

</script>
