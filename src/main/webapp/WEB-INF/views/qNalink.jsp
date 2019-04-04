<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>    
<%
	String id="";
	String head="";
	String article="";
	String checkedId="";
	id=(String)session.getAttribute("id");
	head=request.getParameter("head");
	article=request.getParameter("article");
	if(id!=""&&head!=""&&article!=""){
		System.out.print("야호");%>

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
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(bean.getqNaRe()));
		message.setSubject("[문의]("+id+") : "+head);
		message.setText(article);
		Transport.send(message);
		System.out.println("message sent successing");
		%>
		메시지를 보내는중
		<%
		auth=null;
		message=null;
	}catch(Exception e) {
		e.printStackTrace();
		return;
	}
%>
<script>
self.close();
</script>

<%
	}else{
		%>
		<script>
			alert("Fill every section");
			history.back();
		</script>
		<%
	}
%>

