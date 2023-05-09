<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>ONESTEP</title>
    
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/favicon.ico"/>
    <!-- Common Icon Ends -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <!-- Common Styles Starts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/assets/css/main.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/assets/css/structure.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/plugins/highlight/styles/monokai-sublime.css" rel="stylesheet" type="text/css" />
    <!-- Common Styles Ends -->
    <!-- Common Icon Starts -->
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    
    <!--  데이터 테이블 css임 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/plugins/table/datatable/datatables.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/plugins/table/datatable/dt-global_style.css">
    
    <!-- Common Icon Ends -->
    <!-- Page Level Plugin/Style Starts -->
    <link href="${pageContext.request.contextPath }/resources/assets/css/loader.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/assets/css/apps/chat.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/plugins/animate/animate.css" rel="stylesheet" type="text/css" />
    
    <!-- 혜림 css 이식, 그 어떤 팀원도 건들이지 마셈 -->
    <!-- chat 스타일 무너지는건 이 3가지 안에 범인이 있다!!! -->
<%--     <link href="${pageContext.request.contextPath }/resources/assets/css/apps/tickets.css" rel="stylesheet" type="text/css" /> --%>
<%--     <link href="${pageContext.request.contextPath }/resources/assets/css/elements/tooltip.css" rel="stylesheet" type="text/css" /> --%>
    <link href="${pageContext.request.contextPath }/resources/assets/css/pages/profile.css" rel="stylesheet" type="text/css" />
    <!-- Common Icon Starts -->
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/plugins/table/datatable/datatables.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/plugins/table/datatable/dt-global_style.css">
    
    <link href="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.theme.default.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/plugins/apex/apexcharts.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/assets/css/dashboard/dashboard_1.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/plugins/flatpickr/flatpickr.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/plugins/flatpickr/custom-flatpickr.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/assets/css/elements/tooltip.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/assets/css/pages/notifications.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/resources/assets/css/forms/switch-theme.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/resources/assets/css/ui-elements/pagination.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/plugins/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/plugins/fullcalendar/custom-fullcalendar.advance.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/assets/css/forms/theme-checkbox-radio.css" rel="stylesheet" type="text/css" >
    <link href="${pageContext.request.contextPath }/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/resources/assets/css/apps/contacts.css" rel="stylesheet" type="text/css" />

    <link href="${pageContext.request.contextPath }/resources/assets/css/basic-ui/scrollspy.css" rel="stylesheet" type="text/css" />
    
    <link href="${pageContext.request.contextPath }/resources/assets/css/forms/form-widgets.css" rel="stylesheet" type="text/css">z
	<link href="${pageContext.request.contextPath }/resources/assets/css/forms/file-upload.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/resources/plugins/dropzone/dropzone.min.css" rel="stylesheet" type="text/css" />
<%--     <link href="${pageContext.request.contextPath }/resources/assets/css/forms/theme-checkbox-radio.css" rel="stylesheet" type="text/css"> --%>
<%--     <link href="${pageContext.request.contextPath }/resources/assets/css/apps/companies.css" rel="stylesheet" type="text/css"/> --%>
    <link href="${pageContext.request.contextPath }/resources/assets/css/apps/ecommerce.css" rel="stylesheet" type="text/css" />
    
    <!-- Common Icon Starts -->
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<%--     <link href="${pageContext.request.contextPath }/resources/assets/css/apps/file-manager.css" rel="stylesheet" type="text/css" /> --%>
    
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&family=Noto+Sans+KR:wght@500;900&display=swap" rel="stylesheet">

	<style>
	* {
		font-family: 'Dongle', sans-serif;
		font-family: 'Noto Sans KR', sans-serif;
	}
	</style>
<!-- 혜림 css 이식, 그 어떤 팀원도 건들이지 마셈 End -->
    
    
    
    <!-- 혜림 script 이식, 그 어떤 팀원도 건들이지 마라! -->
    <!--  The following JS library files are loaded to use Copy CSV Excel Print Options-->
	<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/datatables.js"></script>
	<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/jszip.min.js"></script>    
	<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/buttons.html5.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/buttons.print.min.js"></script>
	
	<!-- The following JS library files are loaded to use PDF Options-->
	<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/pdfmake.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/vfs_fonts.js"></script>
	
	<script src="${pageContext.request.contextPath }/resources/plugins/apex/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/apps/tickets.js"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/flatpickr/flatpickr.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/dashboard/dashboard_1.js"></script>
	<script src="${pageContext.request.contextPath }/resources/plugins/fullcalendar/moment.min.js"></script>
    
    <script src="${pageContext.request.contextPath }/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/apps/contact.js"></script>

	<script src="${pageContext.request.contextPath }/resources/assets/js/ie11fix/fn.fix-padStart.js"></script>
	<script src="${pageContext.request.contextPath }/resources/assets/js/apps/notes.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath }/resources/assets/js/forms/file-upload.js"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/dropzone/dropzone.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/apps/ecommerce.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/apps/file-manager.js"></script>
    <!-- Page Level Plugin/Script Ends -->
    <!-- Custom Script Starts -->
    <script src="${pageContext.request.contextPath }/resources/plugins/notification/snackbar/snackbar.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/basicui/notifications.js"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/dropify/dropify.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/pages/profile_edit.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/forms/forms-layouts.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/apps/companies.js"></script>
    
    <!-- ckeditor  -->
    <script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script> 
    <script src="https://kit.fontawesome.com/145a54e4de.js" crossorigin="anonymous"></script>
    <!-- Custom Script Ends -->
	
	<!-- 혜림 script 이식, 그 어떤 팀원도 건들이지 마라! End -->
    
    <script src="${pageContext.request.contextPath }/resources/assets/js/libs/jquery-3.1.1.min.js"></script>
    
    <!-- Page Level Plugin/Style Ends -->
    <style type="text/css">
    @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
    
    .rate { display: inline-block;border: 0;margin-right: 15px;}
	.rate > input {display: none;}
	.rate > label {float: right;color: #ddd}
	.rate > label:before {display: inline-block;font-size: 1rem;padding: .3rem .2rem;margin: 0;cursor: pointer;font-family: FontAwesome;content: "\f005 ";}
	.rate .half:before {content: "\f089"; position: absolute;padding-right: 0;}
	.rate input:checked ~ label, 
	.rate label:hover,.rate label:hover ~ label { color: #f73c32 !important;  } 
	.rate input:checked + .rate label:hover,
	.rate input input:checked ~ label:hover,
	.rate input:checked ~ .rate label:hover ~ label,  
	.rate label:hover ~ input:checked ~ label { color: #f73c32 !important;  }
    
    .th1 {
	opacity: 0.3;
	}
	.th2 {"//DESKTOP-OO6U2UT/Users/Public/oracle/중프이후/apps_chat.html"
	opacity: 0.3;
	}
	.th3 {
	opacity: 0.3;
	}
	
	.box{
	   -ms-overflow-style: none;
	}
	.box::-webkit-scrollbar{
	  display:none;
	}
	
    </style>
    
    
</head>
<body>
<!-- Loader Starts -->
<div id="load_screen"> 
    <div class="boxes">
        <div class="box">
            <div></div><div></div><div></div><div></div>
        </div>
        <div class="box">
            <div></div><div></div><div></div><div></div>
        </div>
        <div class="box">
            <div></div><div></div><div></div><div></div>
        </div>
        <div class="box">
            <div></div><div></div><div></div><div></div>
        </div>
    </div>
    <p class="xato-loader-heading">ONESTEP</p>
</div>
<!--  Loader Ends -->
<!--=========================================== header =====================================================-->
<tiles:insertAttribute name="header"/>
<!--      Main Container Starts  -->
    <div class="main-container" id="container">
        <div class="overlay"></div>
        <div class="search-overlay"></div>
        <div class="rightbar-overlay"></div>
		
<!--========================================================== sidebar ==============================================-->
<tiles:insertAttribute name="asideMyPage"/>
<%-- <tiles:insertAttribute name="aside2"/> --%>
<!-- ================================ Content Area Starts ========================================== -->
        <div id="content" class="main-content">
            <!--  Navbar Starts / Breadcrumb Area  -->

<!-- 컨턴츠 추가시 필수 항목 입니다  이거 안하면  aside 열었을때 콘텐츠 aside부분 가려짐-- >
<!-- jsp파일에 맨위에 이것을 넣어주면 됨  수정은 여기이름바꾸기! 적어놓은 곳(제목)만 ! 나머지는 안 건드셔도됩니당 -->

<!--  Navbar Starts / Breadcrumb Area  -->
<!--             <div class="sub-header-container"> -->
<!--                 <header class="header navbar navbar-expand-sm"> -->
<!--                     <ul class="navbar-nav flex-row"> -->
<!--                         <li> -->
<!--                             <div class="page-header"> -->
<!--                                 <nav class="breadcrumb-one" aria-label="breadcrumb"> -->
<!--                                     <ol class="breadcrumb"> -->
<!--                                         <li class="breadcrumb-item active" aria-current="page"><span>여기 이름 바꾸기!</span></li> -->
<!--                                     </ol> -->
<!--                                 </nav> -->
<!--                             </div> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                     <ul class="navbar-nav d-flex align-center ml-auto right-side-filter"> -->
<!--                         <li class=""> -->
<!--                             <p class="current-time" id="currentTime"></p> -->
<!--                             <p class="current-date" id="currentDate"></p> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                 </header> -->
<!--             </div> -->
<!--  Navbar Ends / Breadcrumb Area  -->
   
    <tiles:insertAttribute name="content"/>
    
    <div class="responsive-msg-component">
	    <p>
	        <a class="close-msg-component"><i class="las la-times"></i></a>
	        Please reload the page when you change the viewport size to view the responsive functionalities correctly
	    </p>
	</div>
<!--================================================ footer 부분 =============================================-->
		<tiles:insertAttribute name="footer"/>
            <!-- Arrow Starts -->
            <div class="scroll-top-arrow" style="display: none;">
                <i class="las la-angle-up"></i>
            </div>
            <!-- Arrow Ends -->
        </div>
<!-- ============================= Content Area Ends ================================== -->
        <!--  Rightbar Area Starts -->
        <tiles:insertAttribute name="rightbar"/>
        <!--  Rightbar Area Ends -->
    </div>
    <!-- Main Container Ends -->
        <!-- Common Script Starts -->
    
    <script src="${pageContext.request.contextPath }/resources/bootstrap/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/app.js"></script>
    <script>
        $(document).ready(function() {
            App.init();
        });
    </script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/custom.js"></script>
    <!-- Common Script Ends -->
    <!-- Page Level Plugin/Script Starts -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/loader.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/apps/mailbox-chat.js"></script>
    <!-- Page Level Plugin/Script Starts -->
</body>
</html>