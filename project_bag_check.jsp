<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean class="p.project_bag_member_data" id="member" scope="page"/>
<jsp:useBean class="p.project_bag_member_array" id="mArray" scope="application"/>
<c:forEach var="member" items="${mArray.getList() }">
	<c:if test="${member.id == param.id }">
		<c:set var="id" value="${member.id }" scope="session"/>	
		<c:redirect url="project_bag_selproduct.jsp"/>	
	</c:if>
</c:forEach>
<script>alert('등록된 회원이 아닙니다.');</script>
<a href="project_bag_register_member.jsp">회원가입하기</a>
</body>
</html>