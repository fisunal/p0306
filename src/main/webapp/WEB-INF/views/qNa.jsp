<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<% 
	String checkedId="";
	checkedId=(String)session.getAttribute("id");
	if(checkedId==null||checkedId==""){
		%>
		<script>
			alert("Can be used,after sign-in")
			self.close();
		</script>
		
	<%} else{%>
<script>
function cancle(){
	self.close();
}
</script>
<meta charset="UTF-8">
<title></title>
<style>
input{
	width:450px;
}
textarea{
	width:450px;
}
#btn{
	width:70px;
}
</style>
</head>
<body>
<form name="action" action="qNalink.jsp" method="post">
<table>
	<tr>
		<td><input type=text name="id" value=<%=checkedId%> disabled></td>
	</tr>
	<tr>
		<td><input type=text name="head" autofocus placeholder="Subject"></td>
	</tr>
	<tr>
		<td><textarea rows="10" cols="17" name="article" placeholder=""></textarea></td>
	</tr>
	<tr>
		<td align=center><input id="btn" type=submit value="send">&nbsp;&nbsp;<input id="btn" type=button value="cancle" onclick="cancle()"></td>
	</tr>
</table>
</form>
</body>
</html>
<%
}
%>
