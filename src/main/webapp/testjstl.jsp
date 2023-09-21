<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2>Parameter</H2>
<table>
<c:forEach var="parameter" items="${param}">
<TR>
	<td>${parameter.key}</td><td>${parameter.value}</td>
</TR>
</c:forEach>
</table>
</body>
</html>