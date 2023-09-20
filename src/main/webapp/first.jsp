<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First Counter</title>
</head>
<body>
<% int counter =0; %>
<% counter++;%>
<%= counter %>
<!-- HTML Kommentar -->
<%-- JSP Kommentar --%>
<BR>
<%= new Date() %>
</body>
</html>