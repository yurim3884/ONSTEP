<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="sub-header-container">
	<header class="header navbar navbar-expand-sm">
		<ul class="navbar-nav flex-row">
			<li>
				<div class="page-header">
					<nav class="breadcrumb-one" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<h4  id="item-1"></h4>
							<li class="breadcrumb-item active" aria-current="page"><span>	${covltr.covltrTitle } </span></li>
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




<div class="layout-px-spacing" data-spy="scroll">
    <div class="layout-top-spacing mb-2">
        <div class="col-md-12">
            <div class="row">
                <div class="container p-0">
                    <div class="row layout-top-spacing">
                        <div class="col-lg-9 layout-spacing">
                        	<h4>기업명: ${company.cmpName }</h4>
                    		<br><br>
                    		
                    			
                    		<c:forEach items="${covltr.covltrItemList }" var="covltrItem">
                    			
		                    	<div class="w-100 animated-underline-content mt-2 details-tab-area" >
		                           <ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
		                               <li class="nav-item">
		                                   <a class="nav-link active" id="underline-specification-tab" data-toggle="tab" href="#underline-specification" role="tab" aria-controls="underline-specification" aria-selected="false">${covltrItem.covltrItemTitle }</a>
		                               </li>
		                           </ul>
		                           <div class="tab-content" id="lineTabContent-3">
		                               <div class="tab-pane fade show active" id="underline-specification" role="tabpanel" aria-labelledby="underline-specification-tab">
		                                   <div class="d-flex flex-wrap p-2">
		                                       <p class="text-muted mb-4">${covltrItem.covltrItemContent } </p>
		                                   </div>         
		                               </div>
			           				</div>
			           			</div>	
								<br>
								
                    		</c:forEach>
                    	
   	                   </div>
   	                   
   	                   
                        <!-- 이력서 보기 사이드바 시작 -->
                        <div class="col-lg-3 layout-spacing" id="scroll">
                        	<!-- ONGOING TASK -->
		                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing" style="position:sticky; top:77px;" >
		                        <div class="widget widget-three add-project">
		                            <div class="widget-heading mb-0">
		                                <h5>이력서 항목</h5>
		                            </div>
		                            <br><br>
		                           <div class="track-order-list">
                                        <ul class="list-unstyled">
                                            <li class="completed">
                                                <span class="active-dot dot"></span>
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link active" href="#item-1">인적사항</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-2">학력</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-3">희망직무</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-4">스킬</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-5">경력</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-6">자격증</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-7">어학</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-8">인턴 · 대외활동</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-9">포트폴리오</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-10">희망근무조건</a></h6>
                                            </li>
                                            <li class="completed">
                                                <h6 class="mt-0 mb-1 font-13"><a class="nav-link" href="#item-11">취업우대 · 병역</a></h6>
                                            </li>
                                        </ul>
                                    </div>
		                       </div>
		                       <form method="post" action="/myPage/coverletter/delete" id="delForm">
		                           <input type="hidden" name="covltrId" value="${covltr.covltrId }"/>
		                       </form>
			                   <div class="button-list"></br>
			                   		<c:if test="${sessionScope.memberVO.memId eq member.memId}">
				                       <button type="button" id="btnList" class="btn btn-outline-primary" style="width:100%;">이력서 목록</button><br>
				                       <button type="button" id="btnDelete" class="btn btn-danger" style="width:100%;">이력서 삭제</button><br>
				                       <button type="button" id="btnModify" class="btn btn-primary" style="width:100%;">이력서 수정</button><br>
			                  		</c:if>
			                   </div>
			               </div>
		                   <!-- ONGOING TASK ENDS-->
                        </div>
                        <!-- 이력서 보기 항목 사이드바 끝 -->
						





<script>
$(function() {
	var btnModify = $("#btnModify");
	var btnDelete = $("#btnDelete");
	var btnList = $("#btnList");
	var delForm = $("#delForm");
	
	btnModify.on("click", function() {
		delForm.attr("action", "/myPage/coverletter/modify");
		delForm.attr("method", "get");
		delForm.submit();
	});
	
	btnDelete.on("click", function() {
		if (confirm("정말 삭제하시겠습니까?")) {
			delForm.submit();
		} else {
			delForm.reset();
		}
	});
	
	btnList.on("click", function() {
		location.href="/myPage/coverletter/list";
	});
	
	
	
});

// $(window).on('scroll', function() {
//     var scrollPos = $(window).scrollTop();
//     $('li').each(function() {
//         var currLink = $(this);
//         var refElement = $(currLink.find('a').attr("href"));
//         if (refElement.position().top <= scrollPos + 200 && refElement.position().top + refElement.height() > scrollPos) {
//             $('li').removeClass("active");
//             currLink.addClass("active");
//             $('.active-dot').css('top', currLink.position().top + 12 + 'px');
//         } else {
//             currLink.removeClass("active");
//         }
//     });
// });


$(document).ready(function() {
    $('#export-dt').DataTable( {
        dom: '<"row"<"col-md-6"B><"col-md-6"f> ><""rt> <"col-md-12"<"row"<"col-md-5"i><"col-md-7"p>>>',
        buttons: {
            buttons: [
                { extend: 'excel', className: 'btn btn-rounded btn-success' },
                { extend: 'pdf', className: 'btn btn-rounded btn-warning' },
                { extend: 'print', className: 'btn btn-rounded btn-info' }
            ]
        },
        "language": {
            "paginate": {
                "previous": "<i class='las la-angle-left'></i>",
                "next": "<i class='las la-angle-right'></i>"
            }
        },
        "lengthMenu": [7, 10, 20, 50],
        "pageLength": 7 
    } );
} );

$(document).ready(function() {
    $('#export-dt').DataTable( {
        dom: '<"row"<"col-md-6"B><"col-md-6"f> ><""rt> <"col-md-12"<"row"<"col-md-5"i><"col-md-7"p>>>',
        buttons: {
            buttons: [
//                 { extend: 'copy', className: 'btn btn-primary' },
//                 { extend: 'csv', className: 'btn btn-primary' },
                { extend: 'excel', className: 'btn btn-rounded btn-success' },
                { extend: 'pdf', className: 'btn btn-rounded btn-warning' },
                { extend: 'print', className: 'btn btn-rounded btn-info' }
            ]
        },
        "language": {
            "paginate": {
                "previous": "<i class='las la-angle-left'></i>",
                "next": "<i class='las la-angle-right'></i>"
            }
        },
        "lengthMenu": [7, 10, 20, 50],
        "pageLength": 7 
    } );
} );
    </script>