<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="fq-header-wrapper">
        <nav class="navbar navbar-expand">
            <div class="container">
                <a class="navbar-brand" href="index-2.html">ONESTEP</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" target="_blank" href="pages_contact_us.html">Contact Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row mt-5 pb-5">
                <div class="col-md-12 align-self-center order-md-0 order-1 mt-5">
                    <h1 class="text-center mb-2">문의하기</h1>
                    <p class="text-center mb-5">Frequently Asked Questions</p>
                </div>
                <img src="${pageContext.request.contextPath }/resources/assets/img/baloon.png" class="first-baloon"/>
                <img src="${pageContext.request.contextPath }/resources/assets/img/baloon.png" class="second-baloon"/>
                <img src="${pageContext.request.contextPath }/resources/assets/img/baloon.png" class="third-baloon"/>
                <img src="${pageContext.request.contextPath }/resources/assets/img/baloon.png" class="fourth-baloon"/>
            </div>
        </div>
    </div>
    <div class="faq container mb-3 pb-3">
        <div class="row">
            <div class="col-md-8 left-content mt-4 pt-4 mb-5 pb-5 pr-5">
        <c:forEach items="${faqList}" var="faq">
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="fqheadingOne">
                            <div class="mb-0 collapsed" data-toggle="collapse" role="navigation" data-target="#fqcollapseOne${faq.faqId }" aria-expanded="false" aria-controls="fqcollapseOne">
                                <span class="round-dot"></span>
                                <span class="faq-q-title">${faq.faqTitle }</span>
                                <div class="faq-arrow-container">
                                    <i class="las la-angle-up"></i>
                                </div>
                            </div>
                        </div>
                        <div id="fqcollapseOne${faq.faqId }" class="collapse" aria-labelledby="fqheadingOne" data-parent="#accordionExample" >
                            <div class="card-body">
                                <p>${faq.faqContent }</p>
                            </div>
                        </div>
                    </div>
                 </div>
              </c:forEach>
              </div>
            <div class="col-md-4">
                <div class="question-form">
                    <h6>Ask a question</h6>
                    <p>Please fill out the form to ask question</p>
                     <form action="/company/insertInqu" method="post" enctype="multipart/form-data">
                        <input  name="boardTitle" required class="faq-input" type="text" value="" placeholder="문의 제목" />
                         <textarea rows="3" class="form-control"  name="boardContent"></textarea>
                        <div class="row layout-top-spacing">
                                    <div class="col-lg-12 layout-spacing">
                                        <div class="statbox widget box box-shadow">
                                            <div class="widget-content widget-content-area">
                                                <div class="form-group row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                                        <div class="attached-files">
                                                            <img id="image-preview" width="320">
                                                        </div>
                                                        <label for="file-upload" class="custom-file-upload mb-0">
                                                            <a title="Attach a file" class="mr-2 pointer text-primary">
                                                                <i class="las la-paperclip font-20"></i>
                                                                <span class="font-17">클릭하여 이미지를 넣어주세요</span>
                                                            </a>
                                                        </label>
                                                        <input id="file-upload" name='boardFile' type="file" accept="image/*" style="display:none; height: 50px" multiple="multiple" >
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                    </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>