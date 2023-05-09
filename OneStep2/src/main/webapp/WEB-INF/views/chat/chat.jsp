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
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Apps</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><span>채팅</span></li>
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
<!-- Main Body Starts -->
<div class="layout-px-spacing">
    <div class="layout-top-spacing">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12">
                <div class="widget-content searchable-container grid">
                    <div class="card-box">
                        <div class="chat-container">
                            <div class="hamburger">
                                <i class="las la-bars fadeIn"></i>
                            </div>
                            <div class="user-container">
                                <div class="own-details">
                                    <img src="${pageContext.request.contextPath }/resources/assets/img/profile-16.jpg" />
                                    <h3>${sessionScope.memberVO.memNick}</h3>
                                    <p>${sessionScope.memberVO.memEmail }</p>
                                    <div class="dropdown chat-own-setting mt-1">
                                        <a class="dropdown-toggle" href="#" role="button" id="customDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="las la-cog font-20"></i></a>
                                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="customDropdown" style="will-change: transform;">
                                            <a class="dropdown-item" href="javascript:void(0);">프로필</a>
                                            <a class="dropdown-item" href="javascript:void(0);">채팅목록</a>
                                            <a class="dropdown-item" href="javascript:void(0);">알림</a>
                                            <a class="dropdown-item" href="javascript:void(0);">친구추가</a>
                                            <a class="dropdown-item" href="javascript:void(0);">도움말</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="teams">
                                    <h5 class="chat-headings">대화상대<span>온라인 4명</span></h5>
                                    <div class="team-container">
                                        <div class="single-team">
                                            <span class="team-user-img">
<%--                                                 <img src="${pageContext.request.contextPath }/resources/assets/img/profile-15.jpg" /> --%>
                                                <img src="${pageContext.request.contextPath}/resources/images/profile\${profileRes.profile.profilePath}\${profileRes.profile.profileId}" />
                                            </span>
                                            <span class="online"></span>
                                        </div>
                                        <div class="single-team">
                                            <span class="team-user-img">
                                                김
                                            </span>
                                            <span class="offline"></span>
                                        </div>
                                        <div class="single-team">
                                            <span class="team-user-img">
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/profile-17.jpg" />
                                            </span>
                                            <span class="online"></span>
                                        </div>
                                        <div class="single-team">
                                            <span class="team-user-img">
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/profile-18.jpg" />
                                            </span>
                                            <span class="online"></span>
                                        </div>
                                        <div class="single-team">
                                            <span class="team-user-img">
                                                박
                                            </span>
                                            <span class="offline"></span>
                                        </div>
                                        <div class="single-team">
                                            <span class="team-user-img">
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/profile-12.jpg" />
                                            </span>
                                            <span class="online"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-list-box">
                                    <div class="search">
                                        <i class="las la-search toggle-search"></i>
                                        <input type="text" class="form-control" placeholder="Search" />
                                    </div>
                                    <div class="people" id = "chatList">
                                        <div class="person" data-chat="person6">
                                            <div class="user-info">
                                                <div class="user-head mr-2">
                                                    <img src="${pageContext.request.contextPath }/resources/assets/img/profile-22.jpg" alt="avatar">
                                                </div>
                                                <div class="user-body">
                                                    <h5 class="text-truncate strong mb-0 mt-1 chat-user-name" data-name="Amanda Winston">김</h5>
                                                    <p class="text-muted font-11 text-truncate mb-0">안녕안녕~~~ ???</p>
                                                </div>
                                                <div class="user-footer ml-2 text-right">
                                                    <span class="chat-time font-10 text-success-teal">12:25</span>
                                                    <div>
<!--                                                         <span class="pinned"><i class="las la-thumbtack"></i></span> -->
                                                        <span class="chat-count">99</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="chat-details">
                                <div class="search mb-3">
                                    <i class="las la-search toggle-search"></i>
                                    <input type="text" class="form-control" placeholder="검색어를 입력하세요." />
                                </div>
                                <div class="chat-details-header">
                                    <div class="chat-with">
                                        <h3></h3>
                                        <p>님과의 대화</p>
                                    </div>
                                    <div class="chat-with-options">
                                        <span class="start-video-call" title="Video Call"><i class="las la-video"></i></span>
                                        <span class="start-call" title="Call"><a href="tel:010-5484-1983" ><i class="las la-phone"></i></a></span>
                                        <div class="dropdown chat-with-op mt-1">
                                            <a class="dropdown-toggle" href="#" role="button" id="customDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="las la-ellipsis-v"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="customDropdown" style="will-change: transform;">
                                                <a class="dropdown-item" href="javascript:void(0);">알림 끄기</a>
                                                <a class="dropdown-item" href="javascript:void(0);">상단 고정</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="chatting-container" id="chattingContainer">
                                    <div class="chatting-time">
                                        <p>
                                            <span>오늘</span>
                                        </p>
                                    </div>
                                </div>
                                <div class="chat-input-container">
                                    <div class="cic pointer">
                                        <i class="las la-grin-beam"></i>
                                        <input id = "inputChat" class="chat-text-input" placeholder="메시지를 입력하세요."/>
                                        
                                    </div>
                                    <label for="file-input" class="mb-0">
                                        <a class="send" title="Attach a file"><i class="las la-paperclip"></i></a>
                                    </label>
                                    <input id="file-input" type="file" style="display: none;"/>
                                    <a class="send chat-send" title="Send" onclick="send()"><i class="las la-paper-plane"></i></a>
                                </div>
                            </div>
                            <div class="chat-details empty">
                                <p>대화할 상대방을 선택하세요.</p>
                            </div>
                            <div class="chat-user-details">
                                <div class="hide-chat-user-details">
                                    <i class="las la-arrow-left"></i>
                                </div>
                                <div class="other-details">
                                    <img src="${pageContext.request.contextPath }/resources/assets/img/profile-22.jpg" />
                                    <h3>김지선</h3>
                                    <p>Amanda@companyname.com</p>
                                </div>
                                <div class="other-section">
                                    <h5 class="chat-headings">공유된 파일<span class="pointer">모두 보기</span></h5>
                                    <div class="single-file">
                                        <span><i class="las la-file-alt"></i></span>
                                        <div>
                                            <p class="file-name">Reference.zip</p>
                                            <p class="file-msg">오늘 15:25</p>
                                        </div>
                                    </div>
                                    <div class="single-file">
                                        <span><i class="las la-file-alt"></i></span>
                                        <div>
                                            <p class="file-name">tax-slip-2020.zip</p>
                                            <p class="file-msg">어제 18:38</p>
                                        </div>
                                    </div>
                                    <div class="single-file">
                                        <span><i class="las la-file-alt"></i></span>
                                        <div>
                                            <p class="file-name">Tender_requirement.pdf</p>
                                            <p class="file-msg">어제 21:38</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-chat-option">
                                    <a><i class="las la-envelope" id="wsClose"></i> 이메일 보내기</a>
                                </div>
                                <div class="single-chat-option">
                                    <a><i class="las la-volume-mute"></i> 알림 끄기</a>
                                </div>
                                <div class="single-chat-option">
                                    <a><i class="las la-thumbtack"></i> 상단 고정</a>
                                </div>
                                <div class="single-chat-option">
                                    <a><i class="las la-cloud-download-alt"></i> 대화내용 내보내기</a>
                                </div>
                                <div class="single-chat-option">
                                    <a class="text-danger"><i class="las la-eraser"></i> 모든 메시지 삭제</a>
                                </div>
                                <div class="single-chat-option">
                                    <a class="text-danger"><i class="las la-trash-alt"></i> 친구 삭제</a>
                                </div>
                                <div class="single-chat-option">
                                    <a class="text-danger"><i class="las la-ban"></i> 친구 차단</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="chat-calling-div">
    <div class="small-call-window-container">
        <div class="small-call-window">
            <div class="call-user">
                <img src="${pageContext.request.contextPath }/resources/assets/img/profile-22.jpg" class="scw-image">
                <div class="scw-nl-container">
                    <p class="scw-name">김지선</p>
                    <p class="scw-call-type blinking"> 
                        <span>화상전화</span> 
                        전화 거는 중 . . .
                    </p>
                    <p class="accepted-call-timer">00:05</p>
                </div>
            </div>
            <div class="video-user">
                <img src="${pageContext.request.contextPath }/resources/assets/img/video-chat-2.jpg" class="client-image">
                <img src="${pageContext.request.contextPath }/resources/assets/img/profile-16.jpg" class="own-video-image">
                <div class="scw-nl-container">
                    <p class="scw-name">Amanda</p>
                    <p class="scw-call-type blinking"> 
                        <span>화상전화</span> 
                        전화 거는 중 . . .
                    </p>
                    <p class="accepted-call-timer">00:05</p>
                </div>
            </div>
            <div class="scw-flex">
                <div class="scw-btn-container">
                    <button class="accept-call" title="Accept Call">
                        <i class="las la-phone"></i>
                    </button>
                    <button class="accept-video-call" title="Accept Call">
                        <i class="las la-video"></i>
                    </button>
                    <button class="mute-call" title="Mute Call">
                        <i class="las la-microphone-slash" style="display: none;"></i>
                        <i class="las la-microphone"></i>
                    </button>
                    <button class="reject-call" title="Reject Call">
                        <i class="las la-phone-slash rotate-call"></i>
                    </button>
                </div>
            </div> 
        </div>
      </div>
</div>

<!-- Main Body Ends -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type= text/javascript>
var profile;
var memId = '${memId}';
var memStatus = '${sessionScope.memberVO.memStatus}';
ws = new WebSocket("ws://localhost/echo.do");
ws.onopen = function (event) {
 	console.log("웹소켓 열림 >> ", event)
    if (event.data === undefined) {
    	return;
    }
};

// 소켓 닫기
$(document).on("click", "#wsClose", function() { // 문서 내에 "wsClose" 아이디를 가진 요소에 클릭 이벤트 핸들러를 연결
	ws.close();
	console.log("웹소켓 닫힘!");
});


// 채팅 내용을 보내면 서버로 그 내용을 보내줌.
function send() {
	
	var inputChat = document.getElementById('inputChat');
    var message = inputChat.value;
    var memNick = '${sessionScope.memberVO.memNick}';
    console.log("memNick >> ", memNick);
    
	inputChat.value = '';
	// 프로필 이미지 가져오기 (함수 써서 가공함)
// 	fetchProfileImage(memId).then(function(imgSrc) {
		// 이미지 URL을 메시지에 포함
		var socketMsg = message + "," + memId;
	       
		// 메세지 입력하면 insert하는 ajax
		if (message != null) {
	  		$.ajax({
				type:'post',
				url:'/chat/chatting',
				data:{
					memId : memId,
		 		    chatContent : message,
// 		 		    chatroomId : chatroomId,
		 		    chatDate : new Date().toTimeString().split(' ')[0]
				},
				success:function(){
				  	let msg = JSON.stringify(socketMsg);
				  	console.log("msg >>" , msg)
				 	let mmsg = msg.substring(1, msg.length-1);
		    		ws.send(mmsg);	// websocket handler로 전송(서버로 전송)
				}
			});
		}
// 	});

	ws.onmessage = function(event) {
		if(event.data == "소켓 연결 종료"){
			console.log(event.data);
    		return false;
    	}
       	console.log("onmessage", event.data);
        var sender = event.data.split(' : ')[0];
        var msg = event.data.split(' : ')[1];	
        var imgSrc = event.data.split(' : ')[2];

      	let str = "";
  		let currentDate = new Date();		
  		// 채팅 내용을 화면에 뿌리기
   		if (sender === '<나>') {
		   	str += '<div class="own-chat-container slideInRight">';
   			str += '<div class="own-chat">';
  			str += `<p>\${msg}</p>`;
     	   	str += '</div>';
     	  	str += `<span class="own-time">\${currentDate.toLocaleString()}</span>`;
     	  	str += '</div>';
       	} else {
       		str += '<div class="other-chat-container slideInLeft">';
       		str += '<div class="other-chat">';
       		str += `<p>\${msg}</p>`;
       		str += '</div>';
       		str += `<span class="other-time">\${currentDate.toLocaleString()}</span>`;
       		str += '</div>';
 		}
    	$("#chattingContainer").append(str);
    	scrollToBottom();
            
 	}
	// 스크롤 아래로
  	function scrollToBottom() {
    	var chatHistory = document.getElementById("chattingContainer");
 		chatHistory.scrollTop = chatHistory.scrollHeight;
   	}
}   

       
// 엔터키 누르면 채팅 입력
document.getElementById("inputChat").addEventListener("keydown", function(event) {
    if (event.key === "Enter") {
        send();
        event.preventDefault();
    }
});



// 채팅 리스트 불러오기
$(function() {
	var obj = {
		memId : memId,
		memStatus : memStatus
	}
// 	console.log("memId >> ", memId);
	
	// 채팅목록 불러오는 ajax
	$.ajax({
		type :"post",
		url : "/chat/list",
		dataType : "json",
		data: obj,
		success: function (res) {
			$("#chatList > div").empty();	// #chatList > div 선택자에 해당하는 엘리먼트의 내용을 모두 지움
			
			if (res.length > 0) {		// 서버에서 반환된 데이터의 길이가 0보다 크면 (데이터가 존재하면)
			    $.each(res, function (index, item) {	// res 배열의 모든 요소에 대해 반복문을 실행. index는 현재 요소의 인덱스, item은 현재 요소의 값.
			        index = index + 1;

			   		// studyDate 값을 Date 객체로 변환
			        let date = new Date(item.chatDate);

			        // 연월일만 포맷하여 사용
			        let formattedDate = date.getFullYear() + '-' + (date.getMonth() + 1).toString().padStart(2, '0') + '-' + date.getDate().toString().padStart(2, '0');
			    	
			        let status = ""; 
			        if (item.memStatus === '1') { // 따옴표를 단일로 사용하도록 수정합니다.
	                    status = "일반회원";
	                } else if (item.memStatus === '2') {
	                    status = "기업회원";
	                } else if (item.memStatus === '3') {
	                    status = "매칭매니저";
	                }
			        let str = `<div class='user-info' id='chatDetail' data-id="\${item.memId}" data-nick="\${item.memNick}"  >`;
                    str += "<div class='user-head mr-2'>";
                    str += "<img src='${pageContext.request.contextPath }/resources/assets/img/profile-22.jpg' alt='avatar'>";
                    str += "</div>";
                    str += "<div class='user-body'>";
                    str += `<h5 class='text-truncate strong mb-0 mt-1 chat-user-name' >\${item.memNick} (\${status})</h5>`;
                    str += `<p class='text-muted font-11 text-truncate mb-0'>\${item.chatContent}</p>`;
                    str += "</div>";
                    str += "<div class='user-footer ml-2 text-right'>";
                    str += `<span class="chat-time font-10 text-success-teal">\${formattedDate}</span>`;
//                     str += `<span class="chat-time font-10 text-success-teal"></span>`;
                    str += "<div>";
//                     str += "<span class='chat-count'>99</span>";
                    str += "</div>";
                    str += "</div>";
                    str += "</div>";
                    str += "</div>";

			        $("#chatList > div").append(str);
			    });
			}
		 },
	});
	
	// 불러온 리스트를 화면에 뿌려줌
	$("#chatList > div").on("click", "#chatDetail", function() {	// "chatList" ID를 가진 div 요소 내의 "chatDetail" ID를 가진 요소에 대한 클릭 이벤트 리스너
        $(".chat-details empty").addClass("d-none");	// chat-details empty 클래스를 가진 모든 요소를 숨기기
        // Bootstrap에서 "d-none" 클래스는 "display" 속성을 "none"으로 설정하여 해당 요소를 화면에서 숨기는 데 사용됩니다.
        $(".chat-details").removeClass("d-none");	// chat-details 클래스를 가진 채팅 내용 영역을 표시
// 		memStatus = $(this).data("status");	// memStatus 변수에 $(this).data("status") 값을 할당. 이 값은 클릭한 요소에 data-status 속성으로 저장된 값
// 		chatroomId = $(this).data("code");
		
		const obj = {
// 			'chatroomId' : chatroomId
			'memId' : memId
		}
		
		// 채팅방 하나의 내용을 가져옴
		$.ajax({
		    type: "post",
		    url: "/chat/detail",
		    dataType: "json",
		    data: obj,
		    success: function(res) {
		        $("#chattingContainer").html("");
		        let str = "";
		        let cnt = 0;

		        if (res.length > 0) {	// 서버에서 반환된 데이터의 길이가 0보다 크면 (데이터가 존재하면)
		            $.each(res, function(index, item) {
		                const chatMemId = `\${item.chatMemId}`;
		                const myId =  ${member.memId};
		                cnt ++;
		                if (myId == chatMemId) {
                        	str += '<div class="own-chat-container slideInRight">';
                   			str += '<div class="own-chat">';
                  			str += `<p>\${item.chatContent}</p>`;
                     	   	str += '</div>';
                     	  	str += `<span class="own-time">\${item.chatDate}</span>`;
                     	  	str += '</div>';
                        } else {
                        	str += '<div class="other-chat-container slideInLeft">';
                       		str += '<div class="other-chat">';
                       		str += `<p>\${item.chatContent}</p>`;
                       		str += '</div>';
                       		str += `<span class="other-time">\${item.chatDate}</span>`;
                       		str += '</div>';
                        }
						if(cnt == res.length){
	                        if(str != ""){
	                        $("#chattingContainer").append(str);
	    			            $("#chattingContainer").append("===== 여기까지 읽음 =====");
	    			        } 
						}
		                
		                
// 		                $.ajax({
// 		                    type: "post",
// 		                    url: "/chat/chatMemProfile",
// 		                    dataType: "json",
// 		                    data: {
// 		                    	memId : chatMemId,
// 		                    	chatroomId : chatroomId
// 		                    },
// 		                    async: false, // 일시적 해결책, 동기
// 		                    success: function(profileRes) {
// 								cnt ++;
// 								let imgSrc;
// 								if(profileRes && profileRes.profile) {
// 									imgSrc =  `${pageContext.request.contextPath}/resources/images/profile\${profileRes.profile.profilePath}\${profileRes.profile.profileName}`;
// 								}
// 		                        if (myId == chatMemId) {
// 		                        	str += '<div class="own-chat-container slideInRight">';
// 		                   			str += '<div class="own-chat">';
// 		                  			str += `<p>\${item.chatContent}</p>`;
// 		                     	   	str += '</div>';
// 		                     	  	str += `<span class="own-time">\${item.chatDate}</span>`;
// 		                     	  	str += '</div>';
// 		                        } else {
// 		                        	str += '<div class="other-chat-container slideInLeft">';
// 		                       		str += '<div class="other-chat">';
// 		                       		str += `<p>\${item.chatContent}</p>`;
// 		                       		str += '</div>';
// 		                       		str += `<span class="other-time">\${item.chatDate}</span>`;
// 		                       		str += '</div>';
// 		                        }
// 								if(cnt == res.length){
// 			                        if(str != ""){
// 			                        $("#chattingContainer").append(str);
// 			    			            $("#chattingContainer").append("===== 여기까지 읽음 =====");
// 			    			        } 
// 								}
// 		                    },
// 		                });
		            });
		        }
		        
		        setTimeout(function() {
		            $("#chattingContainer").scrollTop($("#chattingContainer")[0].scrollHeight);
		        }, 300);
		    },
		});
	});
});

var fileInput = $("#file-input");

// 파일 업데이트
fileInput.on("input", function(event) {
	console.log("fileInput 이벤트! ");
	var files = event.target.files;
	var file = files[0];
	var str = "";
	var memId = '${memId}'
	var formData = new FormData();
	formData.append("file", file);
		
	$.ajax({
		type : "post",
		url : "/chat/uploadFile",
		data : formData,
		dataType : "text",
		processData : false,
		contentType : false,
		success : function(data){
			console.log("data >> ", data)
			var response = data.split(",");
			var originalFilename = response[0];
            var savedName = response[1];
            console.log("originalFilename >> ", originalFilename);
            console.log("savedName >> ", savedName);
			
			if(checkImageType(savedName)) { // 이미지이면 이미지 태그를 이용한 출력형태
				str += "<div>";
				str += "<a href = '/chat/displayFile?fileName="+ savedName + "'>";
				str += "<img src = '/upload/" + savedName + "'/>";
				str += "</a>";
				str += "</div>";
				$("#chattingContainer").append(str);
				$.ajax({
   					type:'post',
   					url:'/chat/chatting',
   					data:{
   						memId : memId,
//    						chatroomId : chatroomId,
   						chatContent: "<a href = '/chat/displayFile?fileName="+ savedName + "' target='_blank' ><img src = '/chat/displayFile?fileName=" + savedName + "'/></a>"
   					},
   					success:function(){
   						
   					}
   				})
			} else { // 파일이면 파일명에 대한 링크로만 출력
// 				str += "<div>";
// 				str += "<a href ='/chat/displayFile?fileName=" + savedName + "'>" + originalFilename + "</a>";
// 				str += "</div>";
				str += "<div class='own-chat-container slideInRight has-file'>";
				str += "<div class='has-file'>";
				str += "<div class='own-file-container'>";
				str += "<span><i class='las la-file-alt'></i></span>";
				str += "<div>";
				str += "<p class='file-name'>" + originalFilename + "</p>";
				str += "<p class='file-msg'>unzip it to view the pdfs</p>";
				str += "</div>";
				str += "</div>";
				str += "</div>";
				str += "<span class='own-time'>15:25</span>";            
				str += "</div>";
				$("#chattingContainer").append(str);
				console.log("파일 링크 >> ", str);
				$.ajax({
   					type:'post',
   					url:'/chat/chatting',
   					data:{
   						memId : memId,
   						chatContent : "<a href ='/chat/displayFile?fileName="+ savedName + "'>" + savedName + "</a>"
   					},
   					success:function(){
   						
   					}
   				})
			}
// 			fetchProfileImage(memId).then(function(imgSrc) {
// 		        // 이미지 URL을 메시지에 포함
// 		        var memNick = '${sessionScope.memberVO.memNick}';
// 			    var socketMsg = str + "," + memNick + "," + imgSrc;
// 				// 메세지 입력하면 insert하는 ajax
// 		        if(str != null) {
// 						let msg = JSON.stringify(socketMsg);
// 						let mmsg = msg.substring(1, msg.length - 1);
// 					   	ws.send(mmsg);	// websocket handler로 전송(서버로 전송)
					
// 						setTimeout(function() {
// 					       $("#chattingContainer").scrollTop($("#chattingContainer")[0].scrollHeight);
// 					   }, 300);
// 			  	  }
// 			});
		}
	});
});

// 파일 데이터 검증
function getOriginalName(fileName){
	if(checkImageType(fileName)){
		return;
	}		
	var idx = fileName.indexOf("_") + 1;
	return fileName.substr(idx);
}

function checkImageType(fileName){
	var pattern = /jpg|gif|png|jpeg/i;
	return fileName.match(pattern); // 패턴과 일치하면 true (너 이미지 맞구나?)
}

</script>            
            