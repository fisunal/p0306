<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.PreparedStatement" import="java.sql.ResultSet"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="conDb.jsp" %>
<%
	String id="";
	String email="";
	String code="";
	id=request.getParameter("id");
	email=request.getParameter("email");
	code=request.getParameter("code");
	
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	try{
		String sql="select id, emailaddr from basiccsinfo where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			System.out.print("1단계 진입");
			if(email.equals(rs.getString(2))){
				pstmt=null;
				rs=null;
				String sql1="select pwcode from basiccsinfo where id=?";
				pstmt=conn.prepareStatement(sql1);
				pstmt.setString(1,id);
				rs=pstmt.executeQuery();
				rs.next();
				if((rs.getString("pwcode")).equals(code)){		
					pstmt=null;
					rs=null;
					String sql2="select password from basiccsinfo where id=?";
					pstmt=conn.prepareStatement(sql2);
					pstmt.setString(1,id);
					rs=pstmt.executeQuery();
					rs.next();
				%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="emailPart.SMTPAuthenticator"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<jsp:useBean id="bean" class="emailPart.SMTPAuthenticator"></jsp:useBean>
<%	
	String user=bean.getqNaTeam();
	String password=bean.getPw();
	Properties prop= new Properties();
	prop.put("mail.smtp.host", "smtp.gmail.com");
	prop.put("mail.smtp.port",465);
	prop.put("mail.smtp.auth", "true");
	prop.put("mail.smtp.ssl.enable", "ture");
	prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	try {
		Authenticator auth= new SMTPAuthenticator();
		Session ses=Session.getInstance(prop, auth);
		
	/* 	ses.setDebug(true); */
		
		MimeMessage message = new MimeMessage(ses);
		message.setFrom(new InternetAddress(user));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
		message.setSubject("[문의]("+id+") : ");
		message.setText(rs.getString("password"));
		Transport.send(message);
		System.out.println("message sent successing");
		pstmt=null;
		rs=null;
		String sql3="update basiccsinfo set pwcode=? where id=?";
		pstmt=conn.prepareStatement(sql3);
		pstmt.setString(1,null);
		pstmt.setString(2,id);
		pstmt.executeUpdate();
		%>
				<script>
				alert("We send email to you, please check your mail box");
				</script>
		<%
		auth=null;
		message=null;
			}catch(Exception e) {
				e.printStackTrace();
				return;
			}
	
				}}else{
				%>
				<script>
				alert("Your email address is wrong, please check it again");
				</script>
				<%
			}
			
		}else{
			%>
			<script>
			alert("We can't find your account, please check your ID");
			</script>
			<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs!=null){
			rs.close();
		}
		if(pstmt!=null){
			pstmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		%>
		<script>
		window.open("about:blank","_self").close();
		</script>
		<%
	}
%>