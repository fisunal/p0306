<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.PreparedStatement" import="java.sql.ResultSet" 
    import="java.sql.Connection" import="java.sql.DriverManager"%>
<% 
String jdbcDriver="com.mysql.cj.jdbc.Driver";
String jdbcUrl="jdbc:mysql://127.0.0.1:3306/sampledb?useSSL=false&serverTimezone=UTC";

Connection conn=null;

try{
	Class.forName(jdbcDriver);
	conn=DriverManager.getConnection(jdbcUrl,"root","1234");
	System.out.print("db접속성공");	
	
}catch(Exception e){
	System.out.println("db접속실패");
	e.printStackTrace();
}
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	try{
		String id=request.getParameter("id");
		String sql="select id from member_info where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			%>
			<script type="text/javascript">
				alert("입력하신 아이디는 이미 사용중입니다. 다른 아이디를 사용해주세요.");
				history.back();
				self.close();
			</script>
			<%
		}else{
		%>
		<script type="text/javascript">
			alert("입력하신 아이디는 사용가능합니다.");
			opener.document.writeform.idDuplication.value="idCheck";
			history.back();
//need checking opener close
/* 			 if(opener!=null){
					opener.writeform=null;
				} */
			self.close();
		</script>
		<%
	}}catch(Exception e){
		e.getMessage();
	}finally{
		if(conn!=null){
			conn.close();
			System.out.println("conn close");
		}
		if(rs!=null){
			rs.close();
			System.out.println("rs close");
		}
		if(pstmt!=null){
			pstmt.close();
			System.out.println("pstmt close");
		}
	}
%>