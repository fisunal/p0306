<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <div class="modal-content is-tiny">
                    <div class="box">
                        <form action="${pageContext.request.contextPath}/signIn" method="POST">
                            <div class="field">       
                                <div class="control has-icons-left">
                                    <input class="input is-large" type="text" name="id" placeholder="아이디" required>
                                    <span class="icon is-small is-left"><i class="fas fa-user"></i></span>
                                </div>
                            </div>
                            
                            <div class="field">
                                <div class="control has-icons-left">
                                    <input class="input is-large" type="password" name="pass" placeholder="패스워드" required autofocus>
                     		        <span class="icon is-small is-left"><i class="fas fa-key"></i></span>
                                </div>
                            </div>

                            <input type="submit" class="button is-block is-info is-large is-fullwidth" value="로그인">
                            <p/>
                            <div class="has-text-centered">
			                    <p>
			                        <a href="${pageContext.request.contextPath}/signUp/">회원가입</a> &nbsp;·&nbsp;
			                        <a href="../">아이디/비밀번호 찾기</a>
			                    </p>
		                    </div>
                        </form>
                    </div>
                </div>
            </div>
            <script src="https://unpkg.com/bulma-modal-fx/dist/js/modal-fx.min.js"></script>
		    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		    <script src="../js/wild.js"></script>