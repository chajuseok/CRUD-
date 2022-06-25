<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "bbs.BbsDAO" %>
<%@ page import = "bbs.Bbs" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "bbs" class = "bbs.Bbs" scope = "page"/>
<jsp:setProperty name = "bbs" property = "bbsTitle"/>
<jsp:setProperty name = "bbs" property = "bbsContent"/>

   
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
		
		if(user_id == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		
		
		int bbs_id = 0;
		if(request.getParameter("bbs_id") != null){
			bbs_id = Integer.parseInt(request.getParameter("bbs_id"));
		}
		if(bbs_id == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않는 글입니다')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		
		if(!user_id.equals(bbs.getUser_id())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없다')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		%>
		
		else{
			if(request.getParameter("bbsTitle") == null || request.getParameter == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력해주세요')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				BbsDAO bbsDAO = new BbsDAO();
				result = bbsDAO.write(bbs.getBbsTitle(), user_id, bbs.getBbsContent());
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'bbs.jsp'");
					script.println("</script>");
				}
			}
			
		}
		
		

	%>

</body>
</html>