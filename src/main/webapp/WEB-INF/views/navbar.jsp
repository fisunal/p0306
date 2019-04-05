<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

                    <div class="container">
                        <div class="navbar-brand">
                            <div class="navbar-item">
                              <img src="${pageContext.request.contextPath}/resources/images/logo.svg" alt="혜다 : 건강한 과자를 생각하다.">
                            </div>
                            <span class="navbar-burger burger" data-target="navbarMenu">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </div>
                        <div id="navbarMenu" class="navbar-menu">
                            <div class="navbar-end">
                                <div class="tabs is-right">
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/index">첫화면으로</a></li>
                                        <li><a href="">혜다:의 이야기</a></li>
                                        <li><a href="">주문하기</a></li>
                                        <li><a href="">배송상태</a></li>
                                        <li><a href="">문의하기</a></li>
<% if(session.getAttribute("id")==null){%>
</ul>
                                    <span class="navbar-item">
                                            <span class="button is-white is-outlined modal-button" data-target="modal-card">로그인</span>
                                    </span>
<% }else{ %><li><a href="">내 정보</a></li>
            </ul>
             <span class="navbar-item">
				<span class="text"><%=session.getAttribute("id") %>님 환영합니다.<button class="button is-small is-white is-outlined" onclick="location.href='${pageContext.request.contextPath}/logout'">로그아웃</button></span>
			</span>
<% } %>
                                </div>
                           </div>
                        </div>
                     </div>
                </nav>