<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  Navbar Starts / Breadcrumb Area  -->

<div class="sub-header-container">
	<header class="header navbar navbar-expand-sm">
		<ul class="navbar-nav flex-row">
			<li>
				<div class="page-header">
					<nav class="breadcrumb-one" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0);">Apps</a></li>
							<li class="breadcrumb-item active" aria-current="page"><span>프로젝트 찾기</span></li>
							<li style="margin-left: 10px">
								<button onclick="location.href='/free/projectForm'"
									class="btn btn-soft-primary btn-rounded  " style="float: right"
									type="button">프로젝트 등록하기</button>
							</li>
						</ol>
					</nav>
				</div>
			</li>
		</ul>
	</header>
</div>
<!--  Navbar Ends / Breadcrumb Area  -->
<!-- Main Body Starts -->
<div class="layout-px-spacing">
	<div class="row layout-spacing layout-top-spacing" id="cancel-row">
		<div class="col-lg-12">
			<div class="">
				<div class="widget-content searchable-container grid">
					<div class="card-box">
						<div class="row">
							<div
								class="col-xl-6 col-lg-6 col-md-6 col-sm-12 filtered-list-search align-self-center w-100">
								<form class="form-inline my-2 my-lg-0">
									<div class="">
										<i class="las la-search toggle-search"></i> <input type="text"
											id="input-search"
											class="form-control search-form-control  ml-lg-auto"
											placeholder="Search Companies">
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="searchable-items grid card-box">
						<%--                               <fmt:formatDate value="${now }" pattern="yyyy-MM-dd" var="today" /> --%>
						<c:forEach items="${projList }" var="projList">
							<c:choose>
								<c:when test="${projList.annoEndDate > today }">

								</c:when>
								<c:otherwise>
									<div class="items" style="border: solid 2px #5165a7">
										<div class="user-profile">
											<div class="user-meta-info">
												<p class="user-name">${projList.annoTitle }</p>
												<p class="user-work">${projList.industryCode }</p>
											</div>
										</div>
										<p class="font-12 text-center text-muted">
											${projList.annoUd } / ${projList.annoMem }</p>

										<div class="action-btn">
											<a class="btn btn-sm btn-dark"
												href="/free//projDetail/${projList.annoId}">detail</a>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<!-- Main Body Ends -->