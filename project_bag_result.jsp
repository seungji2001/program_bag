<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <jsp:useBean class="p.project_bag_selproduct_data" id="data" scope="page"/>
     <jsp:setProperty name="data" property="*"/>	
      <jsp:useBean class="p.project_bag_selproduct_array" id="array" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(request.getParameter("status").equals("login")){
		array.add(data);
		response.sendRedirect("main.jsp");
	}
	else if(request.getParameter("status").equals("logout")){
		session.invalidate();
		response.sendRedirect("main.jsp");
	}
%>
</body>
</html>