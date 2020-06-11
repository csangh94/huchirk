<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/css.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		url:"reply_all.do",
		data:{
			id : '${dto.id}',
			title : '${dto.title}',
			num : '${dto.num}',
			main : '${dto.main}'
		},
		success : function(result){
			$("div").append(result)
		}
	})
	
	 $('#b1').click(function() {
		 if($("#name").val()=="" || $("#pw").val()=="" ||$("#textarea").val()==""){
			 alert("공백이 있습니다.")
		 }
		 else{
			 
		$.ajax({
			url:"add.do",
			data:{
				id : '${dto.id}',
				title : '${dto.title}',
				num : '${dto.num}',
				main : "${dto.main}",
				reply_id : $("#name").val(),
				pw : $("#pw").val(),
				textarea :$("#textarea").val()
			},
			success : function(result){
				
				location.href="content.do?title=${dto.title}&num=${dto.num}&main=${dto.main}"
			}
		})
		 }
		
	}) 
	$('#b2').click(function() {
		$.ajax({
			url:"bbs_update.do",
			data:{
				title : '${dto.title}',
				num : '${dto.num}',
				main : "${dto.main}"
			},
			success : function(result){
				location.href="bbs_update.do?title=${dto.title}&num=${dto.num}&main=${dto.main}"
			}
		})
		
	}) 
	$("#delete").click(function() {
		$.ajax({
			url:"delete_bbs.do",
			data:{
				id : '${dto.id}',
				title : '${dto.title}',
				num : '${dto.num}',
				main : "${dto.main}"
			},
			success : function(result){
				location.href="bbs.jsp?main=${dto.main}"
			}
		})
		
	}) 
	
})
</script>
</head>
<%
String id = (String)session.getAttribute("id");
String id2 = request.getParameter("id");
%>
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
	<tr><td id='td1' align="center"><a href="bbs.jsp?main=${dto.main}">${dto.main}</a></td></tr>
</table>
<hr>
<table border="1" align='center'>
	<tr>
		<td width="500" align='center'>${dto.num}번 글 제목: ${dto.title} 
		<%
		if(id !=null){
			if(id.equals(id2)){%>
		<button id="b2">게시 글 수정</button></td>
			<%}
		}	%>
		<td>작성자 : ${dto.id}</td>
	</tr>
	<tr>
		<td width="500" height="400" colspan="2" >${dto.content}</td>
	</tr>
</table>
<hr>
<table align='center' border="1">
	<tr>
		<td>이름:<input type="text" id="name"> 비밀번호:<input type="text" id="pw"></td>
		<td>
		<%
		if(id !=null){
			
		if(id.equals(id2)){%>
		<button id="delete">글 삭제</button></td>
			<%}
		}
		%>
		</td>
	</tr>
	<tr>
		<td width="500" height="100"><textarea id="textarea"></textarea></td>
		<td width="100" height="100"><button id="b1">댓글 등록</button></td>
	</tr>
</table>
댓글
<hr>
<div></div>
</body>
</html>