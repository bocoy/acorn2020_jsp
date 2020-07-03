<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	request.setCharacterEncoding("utf-8");
	MemberDao dao = MemberDao.getInstance();
	MemberDto dto = dao.getData(num);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/updateform</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<div class="navbar navbar-expand-sm navbar-dark bg-primary">
			<a href="${pageContext.request.contextPath }/" class="navbar-brand">Acorn</a>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list2.jsp">Todo2</a></li>
			</ul>
		</div>
		<form action="update.jsp" method="post">
			<div class="border border-primary">
				<h1>회원정보 수정 폼 입니다.</h1>
			<%-- form 을 제출했을때 회원의 번호가 전송되도록 input type="hidden"
			에 회원 번호를 출력해 놓는다.  --%>
			<div class="form-group">
				<input type="hidden" name="num" value="<%=dto.getNum() %>" />
				<label for="num" >번호</label>
				<!-- disabled 속성이 추가된 input 요소는 수정이 불가하고 form 울
				제출했을때 전송도 되지 않는다. -->
				<input class="form-control" type="text" id="num" value="<%=dto.getNum()%>" disabled/><br />
			</div>
			<div class="form-group">
				<label for="name">이름</label>
				<input class="form-control" type="text" name="name" id="name" value="<%=dto.getName()%>" />
			</div>
			<div class="form-group">
				<label for="addr">주소</label>
				<input class="form-control" type="text" name="addr" id="addr" value="<%=dto.getAddr()%>" />
			</div>
			<button class="btn btn-warning ml-2 mb-2" type="submit">수정</button>
			<button class="btn btn-primary mb-2" type="reset">취소</button>
			</div>
		</form>
	</div>
</body>
</html>