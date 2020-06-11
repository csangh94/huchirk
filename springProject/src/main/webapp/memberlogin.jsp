<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>DCOutside 로그인</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>DCoutside 로그인</h2>
  <hr>
  <form action="login.do">
    <div class="form-group">
      <label for="usr">ID:</label>
      <input type="text" class="form-control" id="id" name="id" style="width:300px;">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pw" name="pw" style="width:300px;">
    </div>
    <button type="submit" class="btn btn-success" >로그인하기</button><br><br>
    아직 회원이 아니시라면? <a href = "memberinsert.jsp">   회원가입하기</a>
  </form>
</div>

</body>
</html>
