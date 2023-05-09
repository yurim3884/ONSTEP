<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	 <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing"  style="margin: 0 auto; margin-top: 3%">
                                        <div class="widget-content widget-content-area br-6">
                                           <h3
								style=" text-align: center; font: bold; height: 80px; line-height: 80px; border-radius: 10px">문의내역</h3>
                                            <div class="table-responsive mb-4">
                                                <table id="dropdown-dt" class="table table-hover" style="width:100%; table-layout: fixed; ">
                                                    <thead>
                                                        <tr>
                                                            <th width="60%" ><div class="th-content">제목</div></th>
															<th width="20%" align="center"  ><div class="th-content">날짜</div></th>
                                                            <th class="no-content" width="20%" ></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${inquirylist }" var="inquirylist">
                                                        <tr >
                                                           <td onclick="location.href='/member/qna/${inquirylist.boardId}'" ><c:out value="${inquirylist.boardTitle }"/></td>
														  <td onclick="location.href='/member/qna/${inquirylist.boardId}'" style="text-align: right;"><fmt:formatDate value="${inquirylist.boardStart}" var="boardStart"  pattern="yyyy-MM-dd" /> ${boardStart } </td>
                                                            <td class="text-center">    
                                                                <div class="dropdown custom-dropdown">
                                                                    <a class="dropdown-toggle font-20 text-primary" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        <i class="las la-cog"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink1" style="will-change: transform;">
                                                                        <button class="dropdown-item" type="button" id="btnDelete" data-no="${inquirylist.boardId}" onclick="location.href='/company/deleteInqu/${inquirylist.boardId}'">Delete</button>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                       <form id="delForm" action="/member/deleteInquForm" method="post">
                                    	<input type="hidden" name="boardId" id="boardId" value=""/>
                                    	<input type="hidden" name="memberId" id="memberId" value=""/>
                                    </form>
                                    
                                    
