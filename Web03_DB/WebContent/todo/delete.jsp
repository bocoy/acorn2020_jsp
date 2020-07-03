<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//할일을 삭제 해야 하는데 몇번글을 삭제 하지??
	
	//GET 방식 파라미터로 전달되는 삭제할 글 번호를 읽어와서 숫자로 바꿔준다.
	// delete.jsp?num=x
	int num = Integer.parseInt(request.getParameter("num"));
	request.setCharacterEncoding("utf-8");
	// 2. DB에 저장한다.
	TodoDao dao=TodoDao.getInstance();
	dao.delete(num);
	String cPath= request.getContextPath();
	response.sendRedirect(cPath+"/todo/list.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/delete.jsp</title>
</head>
<body>

</body>
</html>