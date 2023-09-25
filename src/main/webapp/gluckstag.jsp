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
String[] colors = {"Red", "Green", "Blue", "Yellow"};
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
Das ist ein EL-Ausdruck der kann nur Ausgabe! Man kann nicht Variablen definieren oder Methoden aufrufen!<BR>
${massangaben:konvertiere("km","miles",100 )}

<%@ page import="tags.ConversionClass" %>
<BR><P> Und nun kommt JAVA Code, wie in jeder Java Klasse.<BR>

<% // Hier bin ich im Natural JAVA mit den <% Tag- Hier kann normaler Java-Code stehen, aber keine EL-Funktionen
	/* Das ist ein JAVA Kommentar, der NICHT im Browser angezeigt wird! */
	float value = 100;
	String sourceUnit = "km";
	String targetUnit = "miles";
	float result = value * 0.621371f; // Hier sollte die Umrechnung durchgeführt werden
	// Ausgabe von println erfolgt im Browser
	out.println("Das ist das Ergebnis für den Browser aus JAVA: " + result);
%>
<p>Ergebnis aus dem Java-Schnipsel, wenn ich es in der JSP ausgebe ist gleich dem Java println: <%= result %></p>
<BR>
<p>Ergebnis aus der EL: ${massangaben:konvertiere("km", "miles", 100)}</p>
<BR>

</body>
</html>