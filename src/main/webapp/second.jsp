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
<!-- via EL Ausgabe -->
<c:set var="variablenname" scope="page" value="Wert der Variable" />
${variablenname } <BR>
<!-- Oder Ausgabe über die JSTL -->
<c:out value="${variablenname }"></c:out>
<BR>
<c:set var="gehalt" scope="page" value="3000" />
<c:if test="${gehalt > 2500 }">Du verdienst viel!</c:if><p>

<table>
<c:forEach var="i" begin="1" end="6">
<c:choose>
<c:when test="${i%2 != 0 }"> <%--Wenn ungerade Zeilennummer, anderer Hintergrund --%>
<tr><td style="background-color: lightgrey;">
</c:when>
<c:otherwise>
<tr><td style="background-color: white;">
</c:otherwise>
</c:choose>
Nummer ${i} <td></TD></TR>
</c:forEach>
</table>
</body>
</html>