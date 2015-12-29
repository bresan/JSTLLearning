<%@page import="br.com.bresan.jstl.web.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<!-- Foreach on the received list -->
		<c:forEach items="${userList}" var="p" varStatus="st">
			<tr id="usuario${p.id}">

				<!-- Count -->
				<td>${st.count}</td>
				<td>${p.name}</td>
				<td>${p.email}</td>
				<td>${p.age}</td>

				<!-- First way of testing -->
				<c:if test="${p.valid}">
					<td>Sim</td>
				</c:if>
				<c:if test="${!p.valid}">
					<td>Não</td>
				</c:if>

				<!-- Second way -->
				<c:choose>
					<c:when test="${p.valid}">
						<td>Sim</td>
					</c:when>
					<c:otherwise>
						<td>Não</td>
					</c:otherwise>
				</c:choose>
				
			
			</tr>
		</c:forEach>
	</table>

	<c:url value="/other.jsp" var="urlOther" />
	<a href="${urlOther}">Outra página</a>
	
	<c:import url="footer.jsp"/>
</body>
</html>