<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#update").click(function() {
			$.ajax({
				url : "update.do",
				data : {
					id : $("#id").val(),
					pw : $("#pw").val(),
					name : $("#name").val() ,
					tel : $("#tel").val()					
				},
				success : function(result) {
					alert("회원정보 수정 성공")
					location.reload(true);
				}
			})
		})
	
		$("#delete").click(function() {
			$.ajax({
				url : "delete.do",
				data : {
					id : $("#id").val()
				},
				success : function(result){
					alert("회원탈퇴 성공")
					location.href = "main.jsp"			
				}
			})
		})
	})


</script>
</head>

<body>

	<div class="container">
		<h2>내 정보 보기</h2>
		<hr>
			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>PW</th>
						<th>Name</th>
						<th>Tel</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="hidden" name="id" id="id" value="${id}" readonly="readonly">${id}</td>
						<td><input type="text" name="pw" id="pw" value="${dto.pw}"></td>
						<td><input type="text" name="name" id="name" value="${dto.name}"></td>
						<td><input type="text" name="tel" id="tel" value="${dto.tel}"></td>

					</tr>
				</tbody>
			</table>
			<table>
				<tr>
					<td><button type="button" class="btn btn-warning" name="update" id="update">정보수정</button></td>
					<td><button type="button" class="btn btn-danger" name="delete" id="delete">회원탈퇴</button></td>
					<td><form action="main2.jsp">
							<button class="btn btn-info">메인으로</button>
						</form>
					</td>
				</tr>
			</table>
			
			
			
	</div>

</body>
</html>