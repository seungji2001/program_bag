<%@ tag language="java" pageEncoding="UTF-8"%>
<jsp:useBean class="p.project_bag_selproduct_data" id="data" scope="page"/>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ attribute name="color" %>
			<jsp:useBean class="p.project_bag_selproduct_array" id="array" scope="application"/>
			<div>
				<table style="background-color:${color }">
				<c:forEach var="data" items="${ array.getArray()}">
					<tr>
						<td>${data.getId() }</td>
						<td>${data.getProduct() }</td>
						<td>${data.getNum() }</td>
					</tr>
				</c:forEach>
				</table>	
				<p>
		 		<form action="project_bag_result.jsp">
		 			<a href="project_bag_selproduct.jsp">추가하기</a><p>
		 			<input type="hidden" name="status" value="logout">
		 			<input type="submit" value="로그아웃">
		 		</form>
	 		</div>