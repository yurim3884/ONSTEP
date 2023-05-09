<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="col-xl-11 col-lg-12 col-sm-12  layout-spacing" style="margin: 0 auto; ">
	<div class="widget-content widget-content-area br-6">
		<div class="table-responsive mb-4">
						<h3
								style=" text-align: center; font: bold; height: 80px; line-height: 80px; border-radius: 10px">공지사항</h3>
			<table id="basic-dt" class="table table-hover" style="width: 100%">
				<thead>
					<tr style="text-align: center;">
						<th width="10%">분야</th>
						<th width="60">제목</th>
						<th width="15%">작성일</th>
						<th width="15%">작성자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${notice}" var="notice">
						<tr
							onclick="location.href='/member/noticeDetail/${notice.boardId}'">
							<td>${notice.boardCal }</td>
							<td>${notice.boardTitle }</td>
							<fmt:formatDate value="${notice.boardStart }"
								pattern="yyyy-MM-dd" var="boardStart" />
							<td style="text-align: center;">${boardStart }</td>
							<td>${notice.memId }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>




<script>
	$(document)
			.ready(
					function() {
						$('#basic-dt')
								.DataTable(
										{
											"language" : {
												"paginate" : {
													"previous" : "<i class='las la-angle-left'></i>",
													"next" : "<i class='las la-angle-right'></i>"
												}
											},
											"lengthMenu" : [ 5, 10, 15, 20 ],
											"pageLength" : 10
										});
						$.fn.dataTable.ext.search.push(function(settings, data,
								dataIndex) {
							var min = parseInt($('#min').val(), 10);
							var max = parseInt($('#max').val(), 10);
							var age = parseFloat(data[3]) || 0; // use data for the age column
							if ((isNaN(min) && isNaN(max))
									|| (isNaN(min) && age <= max)
									|| (min <= age && isNaN(max))
									|| (min <= age && age <= max)) {
								return true;
							}
							return false;
						});
						var table = $('#range-dt')
								.DataTable(
										{
											"language" : {
												"paginate" : {
													"previous" : "<i class='las la-angle-left'></i>",
													"next" : "<i class='las la-angle-right'></i>"
												}
											},
											"lengthMenu" : [ 5, 10, 15, 20 ],
											"pageLength" : 5
										});
						$('#min, #max').keyup(function() {
							table.draw();
						});
						// Search
						table
								.columns()
								.every(
										function() {
											var that = this;
											$('input', this.footer())
													.on(
															'keyup change',
															function() {
																if (that
																		.search() !== this.value) {
																	that
																			.search(
																					this.value)
																			.draw();
																}
															});
										});
						var table = $('#toggle-column')
								.DataTable(
										{
											"language" : {
												"paginate" : {
													"previous" : "<i class='las la-angle-left'></i>",
													"next" : "<i class='las la-angle-right'></i>"
												}
											},
											"lengthMenu" : [ 5, 10, 15, 20 ],
											"pageLength" : 5
										});
						$('a.toggle-btn').on(
								'click',
								function(e) {
									e.preventDefault();
									// Get the column API object
									var column = table.column($(this).attr(
											'data-column'));
									// Toggle the visibility
									column.visible(!column.visible());
									$(this).toggleClass("toggle-clicked");
								});
					});
</script>