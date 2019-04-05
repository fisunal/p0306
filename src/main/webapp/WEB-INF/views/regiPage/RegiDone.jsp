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
            <nav class="navbar" style="background-color: hsl(348, 100%, 61%)">
<%@ include file="../navbar.jsp" %>
            </div>
         </section>
         가입을 환영합니다. 혜다: 와 함께 건강한 삶을 만나세요.
            <!--  ===============
    HERE BE MODALS
    ===============  -->
    <div id="modal-card" class="modal modal-fx-slideBottom">
    <div class="modal-background"></div>
        <!-- content -->
        	<%@ include file="../signInModule.jsp"  %>
        <!-- end content -->
</body>
</html>