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
	<script>
	function checkWrite(){
		if(document.writeform.id.value == ""){
			alert("아이디를 입력해 주세요.");
			document.writeform.id.focus();
		
	//현재 한글만 블럭 처리됨! 특수문자 처리 필요!! 최소자릿수 최대 자릿수 값 한계치 설정 필요
		}else if((document.writeform.id.value<"0"||document.writeform.id.value>"9")&&(document.writeform.id.value<"A"||document.writeform.id.value>"Z")&&(document.writeform.id.value<"a"||document.writeform.id.value>"z")){
			alert("영어와 숫자만 입력해 주세요.");
			document.writeform.id.focus();
	 	}else if(writeform.idDuplication.value != "idCheck"){
			alert("ID 중복확인을 해주세요.");
		
	//특수문자 만드시 포함되게 할 필요있음. 최소자릿수 최대 자릿수 값 한계치 설정 필요
		}else if(document.writeform.pass.value == ""){
			alert("비밀번호를 입력해 주세요.");
			document.writeform.pass.focus();
		}else if(document.writeform.passCh.value == ""){
			alert("비밀번호 재확인 란을 작성해 주세요.");
			document.writeform.passCh.focus();
		}else if(document.writeform.name.value == ""){
			alert("이름 란을 작성해 주세요.");
			document.writeform.name.focus();
		}else if(document.writeform.hp.value == ""){
			alert("전화번호 란을 작성해 주세요.");
			document.writeform.hp.focus();
		}else if(document.writeform.email.value == ""){
			alert("이메일을 입력해 주세요.");
			document.writeform.email.focus();
		}else if(!$(document.getElementById("clause1")).prop("checked")){
			alert("이용약관에 동의해 주세요.")
		}else if(!$(document.getElementById("clause2")).prop("checked")){
			alert("개인정보 수집및 이용에 관하여 동의해 주세요.")
		}else if(document.writeform.pass.value != "" &&document.writeform.passCh.value !=""){
			if(document.writeform.passCh.value != document.writeform.pass.value){
			alert("비밀번호가 서로 맞지 않습니다. 비밀번호 재확인 란을 확인해 주십시오.");
			document.writeform.pass.focus();
			}else{
				document.writeform.submit();
				alert("회원가입이 완료되었습니다. 혜다: 의 건강한 과자와 만나보세요.")
		}}
		}
		function id_chk(){
			window.open("id_dup.jsp?id="+document.writeform.id.value,target="_blank","width=500, menubar=no, resizable=no, scrollbars=no, location=no, toolbar=no, titlebar=no");
		}
		function inputIdchk(){
			document.writeform.idDuplication.value="idUncheck";
		}
	</script>

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
         <div class="box is-radius" style="margin:5% 30%;">
         <form name="writeform" action="regiCs.jsp" method="POST">
	<p style="font-size: 3em; text-align: center;">회원가입</p><br><br>
	<div class="field">
		<label class="label">아이디</label>
		<div class="control">
			<span class="icon is-left"><i class="fas fa-user"></i></span>
			<input class="input" type="text" name="id" onkeydown="inputIdchk()" style="width:200px;" autofocus autocomplete="off">&nbsp;&nbsp;
			<input class="button" type="button" value="중복확인" onclick="id_chk()">&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;4글자 이상
			<input type="hidden" name="idDuplication" value="idUncheck">
		</div>
	</div>
	<div class="field">
		<label class="label">비민번호</label>
		<div class="control">
			<span class="icon is-left"><i class="fas fa-unlock-alt"></i></span>
			<input class="input" type="password" name="pass" style="width:280px" autocomplete="off">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;7글자 이상
		</div>
	</div>
	<div class="field">
		<label class="label">비민번호 재확인</label>
		<div class="control">
			<span class="icon is-left"><i class="fas fa-unlock"></i></span>
			<input class="input" type="password" name="passCh"style="width:280px" autocomplete="off">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;위에 입력한 비밀번호와 동일하게 작성해 주세요.
		</div>
	</div>
	<div class="field">
		<label class="label">이름</label>
		<div class="control">
			<span class="icon is-left"><i class="fas fa-address-card"></i></span>
			<input class="input" type="text" name="name"style="width:450px" autocomplete="off">
		</div>
	</div>
	<div class="field">
		<label class="label">전화번호</label>
		<div class="control">
			<span class="icon is-left"><i class="fas fa-mobile-alt"></i></span>
			<input class="input" type="text" name="hp"style="width:450px" autocomplete="off">
		</div>
	</div>
	<div class="field">
		<label class="label">이메일</label>
		<div class="control">
			<span class="icon is-left"><i class="fas fa-envelope-open-text"></i></span>
			<input class="input" type="email" name="email"style="width:450px" autocomplete="off">
		</div>
	</div>
	<div class="field">
		<div class="control">
    	<label class="checkbox">
      	<input id="clause1" type="checkbox">
     	 이용약관에 동의합니다.(필수) <a class="modal-button" href="#" data-target="clause1_Modal">약관보기</a>
    	</label>
		</div>
	</div>
	<div class="field">
		<div class="control">
    	<label class="checkbox">
      	<input type="checkbox" id="clause2">
     	개인정보 수집ㆍ이용에 동의합니다.(필수) <a class="modal-button" href="#" data-target="clause2_Modal">약관보기</a>
    	</label>
		</div>
	</div>
		<div class="field is-grouped">
			<div class="control"><input class="button is-info" type="button" style="width:100px" value="가입하기" onclick="checkWrite()"></div>&nbsp;&nbsp;<div class="control"><input class="button" type="reset" style="width:100px" value="취소"></div>
		</div>
	</form>
	</div>
            <!--  ===============
    HERE BE MODALS
    ===============  -->
    <div id="modal-card" class="modal modal-fx-slideBottom">
      <div class="modal-background"></div>
        <!-- content -->
        	<%@ include file="signInModule.jsp"  %>
        <!-- end content -->
        
    <!-- clause -->
	<div id="clause1_Modal" class="modal">
	  <div class="modal-background"></div>
	  <div class="modal-card">
	    <header class="modal-card-head">
	      <p class="modal-card-title">이용약관</p>
	    </header>
	    <section class="modal-card-body">
	      <!-- Content ... -->
	      약관
	      <br><br><br><br><br><br><br><br><br><br><br><br><br>ll<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	      <br><br><br><br><br><br><br><br>ll<br><br><br><br><br><br><br><br><br><br><br>
	    </section>
	  </div>
	</div>
	
	<div id="clause2_Modal" class="modal">
	  <div class="modal-background"></div>
	  <div class="modal-card">
	    <header class="modal-card-head">
	      <p class="modal-card-title">개인정보 수집 및 이용에 관한 약관</p>
	    </header>
	    <section class="modal-card-body">
	      <!-- Content ... -->
	      약관
	    </section>
	  </div>
	</div>
	        <script src="https://unpkg.com/bulma-modal-fx/dist/js/modal-fx.min.js"></script>
		    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		    <script src="../js/wild.js"></script>
     </body>
</html>