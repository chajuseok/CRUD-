<%@page import="org.apache.catalina.connector.Response"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "bbs.Bbs" %>
<%@ page import = "bbs.BbsDAO" %>
<%@ page import = "java.io.PrintWriter" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title> JSP 게시판 웹 사이트</title>
</head>
<body>
		<%

		String user_id = null;
	
		if(session.getAttribute("user_id") != null){
			user_id = (String)session.getAttribute("user_id");
			
		}
		int bbs_id = 0;
		if(request.getParameter("bbs_id") != null){
			bbs_id = Integer.parseInt(request.getParameter("bbs_id"));
		}
		
		if(bbs_id == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않는 글입니다')");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		
		Bbs bbs = new BbsDAO().getBbs(bbs_id);
		%>
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
   <a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
   <a class="navbar-brand text-secondary" href="main.jsp">메뉴</a>
   <a class="navbar-brand text-secondary" href="bbs.jsp">게시판</a>
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   	메뉴
  </button>
 	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
     <a class="dropdown-item" href="login.jsp">로 그 아 웃</a>
  </div>
</div>
 </nav>
 
 <div class="container">
  <div class="col-lg-4"></div>
  <div class="col-lg-4">
   <div class="jumbotron" style="padding-top: 50px;margin-top: 50px;">
     <h3 style="text-align: center;">게시판 화 면</h3>
     <br>
    <div class="container">
  <div class="row">
    <div class="col-sm">

      <table class="table">
  <thead>
    <tr>
      <th colspan = "3" style = "background-color : #eeeeee; test-algin:center;">게시판 글보기</th>
    </tr>
  </thead>
  <tbody>
    <tr>
		<td style = "width : 200%;">글제목 </td> 	 
		<td colspan="2"> <%= bbs.getBbsTitle() %>
		</tr>
		
		<tr>
		<td>작성자 </td> 	
		</tr>
		<tr>
		<td colspan="2"> <%= bbs.getBbsContent()%>
		</td>
		</tr>
		
		

  </tbody>
</table>
<a href = "bbs.jsp" class = "btn btn-primary"> 목록</a>



  </div>
</div>


   </div>
  </div>
 </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>