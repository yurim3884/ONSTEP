<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/star-rating.min.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/themes/krajee-fa/theme.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/themes/krajee-svg/theme.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/themes/krajee-uni/theme.css" media="all" type="text/css"/>
    <script src="${pageContext.request.contextPath }/resources/plugins/star-rating.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/themes/krajee-fa/theme.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/themes/krajee-svg/theme.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/themes/krajee-gly/theme.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/themes/krajee-uni/theme.js" type="text/javascript"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4261e8ca3de1b292bda7b2664f7de39f&libraries=services"></script>
    <script type="text/javascript">
	$(function(){
		$('.kv-fa').rating({
            theme: 'krajee-fa',
            filledStar: '<i class="fa fa-star"></i>',
            emptyStar: '<i class="fa fa-star-o"></i>'
        });


	
	});
	
    </script>
            <!--  Navbar Ends / Breadcrumb Area  -->
            <!-- Main Body Starts -->
            <div class="layout-px-spacing">                
                <div class="row layout-spacing layout-top-spacing" id="cancel-row">
                    <div class="col-lg-12">
                        <div class="">
                            <div class="widget-content searchable-container grid">
                                <div class="card-box">
                                    <div class="row w-100"> 
                                        <div class="col-xl-12 col-lg-12 align-self-center w-100">
                                            <a href="/company/main" class="btn btn-sm btn-primary p-1"><i class="las la-arrow-left"></i> 뒤로가기</a>
                                        </div>
                                        <div class="col-xl-8 col-lg-8 col-md-8 company-detail-container mt-5">
                                            <div class="d-flex align-items-start">
                                                <img src="/upload/${companyVO.companyLogo}" style="height: 300px; width: 300px;" alt="로고">
                                                <div class="company-info" >
                                                    <p class="name mb-1">${companyVO.companyName} / ${companyVO.companyMain }</p>
                                                    <p class="text-muted font-12 mb-1"><i class="las la-map-marker font-15"></i>${companyVO.companyAddr1}<c:out value="${companyVO.companyAddr2}"/></p>
                                                    <a class="text-primary font-12 mb-2 d-block" >${companyVO.companySmall}</a> 
                                                    <p><c:out value="${companyVO.companyIntro }"/></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 company-detail-container mt-5">
                                            <div class="company-info-right" style="font">
                                                <p>대표자명 :  <a><c:out value="${companyVO.companyRepresentative}"/></a></p>
                                                <p>임직원 수: <a>${companyVO.companyEmployees}</a></p>
                                                <p>인사담당자 전화번호 : <a>${companyVO.companyPhone}</a></p>
                                                <p>회사설립일자 : <a>${companyVO.companyEstablishment}</a></p>
                                                <div class="d-flex social-media align-items-center justify-content-between">
                                                
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Tab Starts -->
                                <div class="card-box">
                                    <div class="w-100 animated-underline-content">
                                        <ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="underline-about-tab" data-toggle="tab" href="#underline-about" role="tab" aria-controls="underline-about" aria-selected="true">기업정보</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="underline-project-tab" data-toggle="tab" href="#underline-project" role="tab" aria-controls="underline-project" aria-selected="false">채용중인공고</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="underline-team-tab" data-toggle="tab" href="#underline-team" role="tab" aria-controls="underline-team" aria-selected="false">기업리뷰</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content" id="lineTabContent-3">
                                            <div class="tab-pane fade show active" id="underline-about" role="tabpanel" aria-labelledby="underline-about-tab">
                                                <div class="d-flex flex-wrap">
                                                    <div class="col-xl-3 col-lg-4 col-md-4">
                                                        <div class="contact-info mb-4">
                                                            <p><a href="#"><i class="lar la-envelope"></i>${companyVO.companyEmail}</a></p>
                                                            <p><a href="#"><i class="las la-phone"></i>${companyVO.companyPhone}</a></p>
                                                            <p><a href="#"><i class="las la-globe"></i>${companyVO.companyZip}</a></p>
                                                            <p><a href="#"><i class="las la-globe"></i>${companyVO.companyAddr1}</a></p>
                                                            <p><a href="#"><i class="las la-globe"></i>${companyVO.companyAddr2}</a></p>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-6 col-lg-4 col-md-4">
                                                        <div class="contact-info mb-4">
                                                            <p class="strong">기업소개</p>
                                                            <p class="font-12">${companyVO.companyIntro}</p>
                                                            <div class="d-flex flex-wrap align-items-center skills-container">
                                                                <c:forEach items="${keywordVO }" var="keyword">
                                                                <span>${keyword.annoKwname }</span>
                                                                </c:forEach>
                                                            </div>
                                                            <hr>
                                                            <p class="strong">요구사항</p>
                                                            <div class="d-flex flex-wrap align-items-center skills-container">
                                                               	<c:forEach items="${annoVO }" var="anno">
                                                                <span>${anno.annoUd }</span>
                                                                </c:forEach>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-3 col-lg-4 col-md-4">
                                                        <div class="contact-info mb-4">
                                                          <p style="margin-top:-12px">
														    <em class="link">
														        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
														            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
														        </a>
														    </em>
														</p>
														<div id="map" style="width:100%;height:150px;"></div>

                                                        </div>
                                                    </div>
                                                </div>         
                                            </div>
                                            <!-- Projects -->
                                            <div class="tab-pane fade" id="underline-project" role="tabpanel" aria-labelledby="underline-project-tab">
                                                <div class="row w-100 m-0">
                                            	<c:forEach items="${annoVO}" var="annoVO" >
                                                   <div class="col-xl-3 col-lg-4 col-md-4 mb-4">
                                                        <div class="card single-project">
                                                            <img src="/resources/upload/${companyVO.companyLogo}" class="card-img-top" alt="widget-card-2">
                                                            <div class="card-body">
                                                                <p class="meta-date">${annoVO.annoStartDate}</p>
                                                                <h5 class="card-title"><a href="/company/detailAnno?annoId=${annoVO.annoId}">${annoVO.annoTitle}</a></h5>
                                                                <p class="card-text"><c:out value="${annoVO.annoTitle}"/></p>
                                                               
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </c:forEach>
                                                </div>  
                                                </div>
                                            <!-- Team -->
                                            <div class="tab-pane fade" id="underline-team" role="tabpanel" aria-labelledby="underline-team-tab">
                                                <div class="row w-100 m-0">
                                                
                                                <c:forEach items="${reviewVO}" var="reviewVO" varStatus="stat">
	                                                    <div class="col-xl-6 col-lg-6 col-md-6 mb-4">
	                                                        <div class="card single-team">
	                                                            <div class="card">
	                                                                <div class="card-body">
	                                                                    <div class="user-profile">
	                                                                        <img style="height: 200px; width: 200px;" src="/resources/upload/${companyVO.companyLogo}" class="" alt="...">
	                                                                    </div>
	                                                                    <div class="user-info">
	                                                                        <h5 class="card-user_name">${reviewVO.memId }님의리뷰</h5>
	                                                                        <p class="card-user_occupation"></p>
	                                                                        <div class="card-star_rating">
	                                                                        <span class="badge badge-primary mb-1">${reviewVO.reviewStart }</span> <br>
	                                                                        <span class="badge badge-primary mb-1">기업 총점 : ${reviewVO.reviewScore }점</span> <br>
	                                                                        </div>
	                                                                        <p class="card-text"> ${reviewVO.reviewComent } </p>
	                                                                        <!--  모달 Start -->
	                                                                         <!-- Button trigger modal -->
						                                                    <button type="button" class="btn btn-primary mb-2 mr-2" id="modalBtn"  data-toggle="modal" data-target="#exampleModalCenter${reviewVO.reviewId}">
						                                                      	리뷰상세보기
						                                                    </button>
						                                                    <div class="modal fade" id="exampleModalCenter${reviewVO.reviewId}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							                                                    <div  class="modal-dialog modal-dialog-centered" role="document">
							                                                        <div class="modal-content">
							                                                            <div class="modal-header">
							                                                                <h5 class="modal-title" id="exampleModalCenterTitle">${companyVO.companyName}</h5>
							                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							                                                                    <i class="las la-times"></i>
							                                                                </button>
							                                                            </div>
							                                                            <div class="modal-body">
							                                                                <h4 class="modal-heading mb-4 mt-2">${reviewVO.reviewId}</h4>
							                                                                    <p class="modal-text">기업 한줄평 : ${reviewVO.reviewComent }</p>
							                                                                    <p class="modal-text">기업 장점 : ${reviewVO.reviewComent }</p>
							                                                                    <p class="modal-text">기업 단점 : ${reviewVO.reviewComent }</p>
							                                                                    
							                                                            		<div id="reviewScore">
							                                                            			<input type="text" class="kv-fa rating-loading" value="${reviewVO.reviewScore / 2}" data-size="xs" title="" disabled="disabled">
							                                                            		</div>
							                                                            		<div id="reviewVision">
							                                                            			<input type="text" class="kv-fa rating-loading" value="${reviewVO.reviewVision / 2}" data-size="xs" title="" disabled="disabled">
							                                                            		</div>
							                                                            		<div id="reviewWelfare">
							                                                            			<input type="text" class="kv-fa rating-loading" value="${reviewVO.reviewWelfare / 2}" data-size="xs" title="" disabled="disabled">
							                                                            		</div>
							                                                            		<div id="reviewBalance">
							                                                            			<input type="text" class="kv-fa rating-loading" value="${reviewVO.reviewBalance / 2}" data-size="xs" title="" disabled="disabled">
							                                                            		</div>
							                                                            		<div id="reviewCulture">
							                                                            			<input type="text" class="kv-fa rating-loading" value="${reviewVO.reviewCulture / 2}" data-size="xs" title="" disabled="disabled">
							                                                            		</div>
							                                                            		<div id="reviewManage">
							                                                            			<input type="text" class="kv-fa rating-loading" value="${reviewVO.reviewManage / 2}" data-size="xs" title="" disabled="disabled">
							                                                            		</div>
							                                                            </div>
							                                                            <div class="modal-footer">
							                                                                <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"></i> 닫기</button>
							                                                                <button type="button" class="btn btn-primary">완료</button>
							                                                            </div>
							                                                        </div>
							                                                    </div>
							                                                </div>
							                                                 <!--  모달 End -->
	                                                                    </div>
	                                                                </div>
	                                                            </div>
	                                                        </div>
	                                                    </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
           
            <script type="text/javascript">

            $(function(){
				var reviewBtn = $('#reviewBtn');
				reviewBtn.on("click",function(){
					location.href='/member/reviewInsert/${companyVO.companyId}';
				});

				$(".caption").css("display", "none");
				$(".clear-rating").css("display", "none");

				//지도지도지도

				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		        mapOption = {
		            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		            level: 3 // 지도의 확대 레벨
		        };  

				
		        // 지도를 생성합니다    
		        var map = new kakao.maps.Map(mapContainer, mapOption); 

		        // 주소-좌표 변환 객체를 생성합니다
		        var geocoder = new kakao.maps.services.Geocoder();

		        // 주소로 좌표를 검색합니다
		        geocoder.addressSearch('${companyVO.companyAddr1}', function(result, status) {

		            // 정상적으로 검색이 완료됐으면 
		             if (status === kakao.maps.services.Status.OK) {

		                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
						
		                // 결과값으로 받은 위치를 마커로 표시합니다
		                var marker = new kakao.maps.Marker({
		                    map: map,
		                    position: coords
		                });

		                // 인포윈도우로 장소에 대한 설명을 표시합니다
		                var infowindow = new kakao.maps.InfoWindow({
		                    content: '<div style="width:150px;text-align:center;padding:6px 0;">${companyVO.companyName}</div>'
		                });
		                infowindow.open(map, marker);

		                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		                map.setCenter(coords);
		            } 
		        });    

				
            });





        
			</script>
            
            