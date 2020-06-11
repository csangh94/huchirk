<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% 
	String id = (String)session.getAttribute("id");
%>
<link rel="stylesheet" type="text/css" href="resources/css/css.css">
</head>
<body>
<%
	if(id==null){
	%>
				<form action="memberlogin.jsp">
					<button>로그인</button>
				</form>

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
	</tr>
</table>
	<%}
%>
<br>
<br>
<table align='center'>
	<tr><td id='td1' align="center">DCoutSide</td></tr>
</table>
<hr>
<br>
<br>
<table align="center">
	<tr>
		<td id="td2" align="center">여행</td>
		<td id="td3"></td>
		<td id="td2" align="center">개발</td>
		<td id="td3"></td>
		<td id="td2" align="center">음식</td>
	</tr>
	<tr>
		<td id="td2"><a href="bbs.jsp?main=여행"><img src="resources/img/여행.png"></a></td>
		<td id="td3"></td>
		<td id="td2"><a href="bbs.jsp?main=개발"><img src="resources/img/개발.png"></a></td>
		<td id="td3"></td>
		<td id="td2"><a href="bbs.jsp?main=음식"><img src="resources/img/음식.png"></a></td>
	</tr>
</table>
</body>
</html>