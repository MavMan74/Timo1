<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="massangaben" uri="/WEB-INF/conversions.tld" %>


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
<BR>
Das ist ein EL-Ausdruck kann nur Ausgabe! Man kann nicht Variablen definieren oder Methoden aufrufen!
${massangaben:konvertiere("km","miles",100 )}



<%@ page import="tags.ConversionClass" %>
<BR> Und nun kommt JAVA Code, wie in jeder Java Klasse.<BR>
Die Ausgabe des print-Befehls wird nicht im Browser, sondern in der Console des Servers gezeigt!!!!
<% // Hier kann normaler Java-Code stehen, aber keine EL-Funktionen
	float value = 100;
	String sourceUnit = "km";
	String targetUnit = "miles";
	float result = value * 0.621371f; // Hier sollte die Umrechnung durchgeführt werden
	out.println("Das ist der Result in der Console" + result);
%>
<p>Result: ${massangaben:konvertiere(sourceUnit, targetUnit, value)}</p>

<p>Result: <%= result %></p>

</body>
</html>