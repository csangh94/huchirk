<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>DCOutside 회원가입</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
  <script type="text/javascript">
	$(function() {
		$("#join").click(function() {
			$.ajax({
				url : "insert.do",
				data : {
					id : $("#id").val(),
					pw : $("#pw").val(),
					name : $("#name").val() ,
					tel : $("#tel").val()					
				},
				success : function(result) {
					alert("회원가입 완료")
					location.href = "memberlogin.jsp"
				}
			})
		})
		$("#idcheck").click(function() {
			$.ajax({
				url : "idcheck.do",
				data : {
					id : $("#id").val()
				},
				success : function(result) {
					alert(result)
				}
			})
		})
	})
  </script>
</head>
<body>

<div class="container">
  <h2>DCoutside 회원가입</h2>
  <br>
  <hr>
  <br>
    <div class="form-group">
      <label for="usr">ID:</label>
      <input type="text" class="form-control" id="id" name="id" placeholder="아이디 4~10글자" 
      maxlength="10" style="width:300px;">
    </div>
      <button type="button" id="idcheck" name="idcheck" class="btn btn-info">아이디 중복 체크</button>
    <br><br>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호를 입력해 주세요" 
      maxlength="10" style="width:300px;">
    </div>
    <div class="form-group">
      <label for="usr">이름 :</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해 주세요" 
      style="width:300px;">
    </div>
    <div class="form-group">
      <label for="usr">연락처:</label>
      <input type="text" class="form-control" id="tel" name="tel" placeholder="연락처를 입력해 주세요"
      style="width:300px;">
    </div>
    <button type="button" id="join" name="join" class="btn btn-success">회원가입</button>
</div>

</body>
</html>