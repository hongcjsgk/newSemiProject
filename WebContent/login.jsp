<%@page import="dto.member_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
member_Dto mem = (member_Dto)request.getAttribute("login");	
    		
    		session.setAttribute("login", mem);
    		session.setMaxInactiveInterval(60*60*3);
    		
    		response.sendRedirect("main_page.jsp");
    		
    		%>
</body>
</html>