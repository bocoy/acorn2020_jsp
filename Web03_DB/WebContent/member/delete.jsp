<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	request.setCharacterEncoding("utf-8");
	MemberDao dao = MemberDao.getInstance();
	dao.delete(num);
	String cPath= request.getContextPath();
	response.sendRedirect(cPath+"/member/list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/delete</title>
</head>
<body>

</body>
</html>