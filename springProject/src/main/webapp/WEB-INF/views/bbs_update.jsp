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
	 $('#bbs_update').click(function() {
		$.ajax({
			url:"update_bbs.do",
			data:{
				id : '${dto.id}', 
				title : '${dto.title}',
				main : '<%=main%>',
				num : '${dto.num}',
				content :$("#textarea2").val()
			},
			success : function(result){
				location.href="content.do?title=${dto.title}&num=${dto.num}&main=${dto.main}&id=${dto.id}"
			}
		})
		
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
	<tr><td id='td1' align="center"><a href="bbs.jsp?main=${dto.main}">${dto.main}</a></td></tr>
</table>
<hr>
<table border="1" align='center'>
	<tr>
		<td width="500" align='center'>${dto.num}번 글 제목:${dto.title}</td>
		<td>${dto.id} </td>
	</tr>
	<tr>
		<td width="500" height="400" colspan="2" ><textarea id="textarea2">${dto.content}</textarea></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="button" id="bbs_update" value="수정" ></td>
	</tr>
</table>
<hr>

</body>
</html>