<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import = "user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "user" class = "user.User" scope = "page"/>
<jsp:setProperty name = "user" property = "user_id"/>
<jsp:setProperty name = "user" property = "userPassword"/>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> JSP 게시판 웹 사이트</title>
</head>
<body>
	
	<%

		String user_id = null;
	
		if(session.getAttribute("user_id") != null){
			user_id = (String)session.getAttribute("user_id");
			
		}
		
		if(user_id != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인 되어있습니다')");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUser_id(), user.getUserPassword());
		if(result == 1){
			session.setAttribute("user_id", user.getUser_id());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}

	%>

</body>
</html>