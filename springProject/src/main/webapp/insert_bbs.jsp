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
%>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(function() {
	 $('#bbs_insert').click(function() {
		 if($("#title").val()=="" || $("#textarea2").val()==""){
			 alert("공백이 있습니다.")
		 }else{
			 
		$.ajax({
			url:"bbs_insert.do",
			data:{
				id : '${id}', 
				title : $("#title").val(),
				main : '<%=main%>',
				content :$("#textarea2").val()
			},
			success : function(result){
				location.href="bbs.jsp?main=<%=main%>"
			}
		})
		 }
		
	}) 
	
})
</script>

</head>
<%
String id = (String)session.getAttribute("id");
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
	<tr><td id='td1' align="center"><a href="bbs.jsp?main=<%=main%>"><%=main%></a></td></tr>
</table>
<hr>
<table border="1" align='center'>
	<tr>
		<td width="500" align='center'>글 제목:<input type="text" id="title" width="450"> </td>
		<td>${id}</td>
	</tr>
	<tr>
		<td width="500" height="400" colspan="2" ><textarea id="textarea2"></textarea></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="button" id="bbs_insert" value="등록" ></td>
	</tr>
</table>
<hr>

</body>
</html>