<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/css.css">
<% 
	String main = request.getParameter("main");
	String id = (String)session.getAttribute("id");
%>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		url:"all.do",
		data:{
			main : "<%=main%>"
		},
		success : function(result){
			$("div").append(result)
		}
	})
	 $('#inner').click(function() {		//게시 글 등록
		location.href="insert_bbs.jsp?main=<%=main%>"
	})
	
})
</script>
</head>
<body>
<%
	if(id==null){
	%>
	<table>
		<tr>
			<td>
				<form action="memberlogin.jsp">
					<button>로그인</button>
				</form>
			</td>
			<td>
				<form action="main.jsp">
					<button>홈으로</button>
				</form>
			</td>
		</tr>	
	</table>

	<%
	}else{
		%>
<table>
	<tr>
		<td>${id} 님 환영합니다</td>
		<td><form action="logout.do">
				<button>로그아웃</button>
			</form>
		</td>
		<td><form action="mypage.jsp">
			<button>마이 페이지</button>
			</form>
		</td>
		<td>
			<form action="main.jsp">
			<button>홈으로</button>
			</form>
		</td>
	</tr>
</table>
	<%}
%>
<br>
<br>
<table align='center'>
	<tr><td id='td1' align="center"><%=main%></td></tr>
</table>
<hr>
<%
	if(id!=null){
	%>
<input type="button" value="게시 글 등록" id="inner">
<%} %>
<br>
<br>
게시 글 목록
<hr>
<table border="1" align="center">
	<tr>
		<td width="300" align="center">번호</td>
		<td width="600" align="center">제목</td>
		<td width="300" align="center">작성자</td>
	</tr>
</table>
<hr>
<div></div>
<br>
<br>
<hr>
</body>
</html>
