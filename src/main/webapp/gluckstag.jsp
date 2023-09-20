<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ist heute Dein Glückstag?</title>
</head>

<%
String[] colors = {"Rot", "Grün", "Blau", "Gelb"};
String servletColor = colors[(new java.util.Random()).nextInt(colors.length)];
%>

<body style="background-color: <%=servletColor%> ">
<%-- JSP Kommentar --%> <!-- HTML-Kommentar -->
<% double num = Math.random(); %>
<% if (num>0.90) {  %>
	<h2>Dein Glückstag!</h2><p>(<%= num  %>) <p>
<% } else { %>
	<h2>Naja...vielleicht morgen</h2><p>( <%= num %>) <p>
<% } %>
<a href="<%= request.getRequestURI() %>"><h2>Nochmals versuchen...</h2></a>

</body>
</html>