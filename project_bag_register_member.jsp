<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("utf-8");%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>register member</title>
<style>
table,th,td{border:1px solid black;}
table{margin:auto;}
</style>
</head>
<body>
<form action="project_bag_register_member.jsp">
	<table>
		<tr><td>아이디</td><td><input type="text" name="id"></td></tr>
		<tr><td>비밀번호</td><td><input type="text" name="pwd"></td></tr>
		<tr><th colspan = 2><input type="submit" value="회원가입"></th></tr>		
	</table>
</form>
<c:if test="${param.id != null}">
	<jsp:useBean class="p.project_bag_member_array" id="mArray" scope="application"/>
	<c:choose>
	<c:when test="${mArray.search(param.id) }">
		<script>alert('이미있음');</script>
	</c:when>
	<c:otherwise>
		<jsp:useBean id="data" class="p.project_bag_member_data" scope="session"/>
		<jsp:setProperty name="data" property="*"/>
		<%session.setAttribute("id",request.getParameter("id")); %>
		<%mArray.add(data); %>
		<%response.sendRedirect("project_bag_selproduct.jsp"); %>
	</c:otherwise>
	</c:choose>
</c:if>
</body>
</html>