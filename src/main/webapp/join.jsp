<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title> JSP 게시판 웹 사이트</title>
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
   <a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
   <a class="navbar-brand text-secondary" href="main.jsp">메뉴</a>
   <a class="navbar-brand text-secondary" href="bbs.jsp">게시판</a>
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   	메뉴
  </button>
 	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
     <a class="dropdown-item" href="join.jsp">회 원 가 입</a>
     <a class="dropdown-item" href="login.jsp">로 그 인</a>
  </div>
</div>
 </nav>
 
 <div class="container">
  <div class="col-lg-4"></div>
  <div class="col-lg-4">
   <div class="jumbotron" style="padding-top: 50px;margin-top: 50px;">
    <form method="post" action="joinAction.jsp">
     <h3 style="text-align: center;">회원가입 화 면</h3>
     <br>
     <div class="form-row">
      <input type="text" class="form-control" id="userID" name="user_id" placeholder="아 이 디" maxlength="20">
     </div>
     <br>
     <div class="form-row">
      <input type="password" class="form-control" id="userPassword" name="userPassword"  placeholder="비 밀 번 호" maxlength="20">
     </div>
     
     <div class="form-row">
      <input type="text" class="form-control" name="userName"  placeholder="이 름" maxlength="20">
     </div>
     
     <div class="form-row" style="text-align: center">
	      <div class="btn-group btn-group-toggle" data-toggle="buttons">
		  <label class="btn btn-secondary active">
		    <input type="radio" name="userGender"  autocomplete="off" checked value = "남자" > 남자
		  </label>
		  <label class="btn btn-secondary">
		    <input type="radio" name="userGender" autocomplete="off" value = "여자"> 여자dfd
		  </label>
	
		</div>
     </div>
     <div class="form-row">
      <input type="email" class="form-control" name="userEmail"  placeholder="이 메 일" maxlength="20">
     </div>
     <br>
     <input type="submit" class="btn btn-info form-control" value="회원가입">
    </form>
   </div>
  </div>
 </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>