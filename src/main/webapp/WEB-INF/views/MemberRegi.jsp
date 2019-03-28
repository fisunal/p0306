<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>혜다: 좋은쿠키</title>
        <link rel="shortcut icon" href="../images/fav_icon.png" type="image/x-icon">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <!-- Bulma Version 0.7.4-->
        <link rel="stylesheet" href="https://unpkg.com/bulma@0.7.4/css/bulma.min.css" />
        <link rel="stylesheet" type="text/css" href="../css/hero.css">
        <link rel="stylesheet" href="https://unpkg.com/bulma-modal-fx/dist/css/modal-fx.min.css" />
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
        
        <!-- Script -->

    </head>
    <body>
        <section class="hero is-danger is-large">
            <div class="hero-head">
            <nav class="navbar is-fixed-top" style="background-color: hsl(348, 100%, 61%)">
                    <div class="container">
                        <div class="navbar-brand">
                            <div class="navbar-item">
                              <img src="${pageContext.request.contextPath}/resources/images/logo.svg" alt="혜다 : 건강한 과자를 생각하다.">
                            </div>
                            <span class="navbar-burger burger" data-target="navbarMenu">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </div>
                        <div id="navbarMenu" class="navbar-menu">
                            <div class="navbar-end">
                                <div class="tabs is-right">
                                    <ul>
                                        <li><a href="../index">첫화면으로</a></li>
                                        <li><a href="">혜다:의 이야기</a></li>
                                        <li><a href="">주문하기</a></li>
                                        <li><a href="">배송상태</a></li>
                                        <li><a href="">문의하기</a></li>
                                    </ul>
                                    <span class="navbar-item">
                                            <span class="button is-white is-outlined modal-button" data-target="modal-card">로그인</span>
                                    </span>
                                </div>
                           </div>
                        </div>
                     </div>
                </nav>
            </div>
         </section>               
            <!--  ===============
    HERE BE MODALS
    ===============  -->
    <div id="modal-card" class="modal modal-fx-slideBottom">
      <div class="modal-background"></div>
        <!-- content -->
        	<%@ include file="signInModule.jsp"  %>
        <!-- end content -->
     </body>
</html>