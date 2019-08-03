<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>CheckerBoard</title>
</head>
<body>
	<div id="container">
		<%
			int width = 0;
			int height = 0;
			if (request.getParameter("width") != null) {
				width = Integer.parseInt(request.getParameter("width"));
			}
			if (request.getParameter("height") != null) {
				height = Integer.parseInt(request.getParameter("height"));
			}
		%>
		<h1>
			<c:out value="${draw.draw}"/>
			CheckerBoard
			<%=width%>w X
			<%=height%>h
		</h1>
		<%
			for (int i = 0; i < height; i++) {
				if (i % 2 == 0) {
		%>
		<div class="even">
			<%
				for (int j = 0; j < width; j++) {
							if (j % 2 == 0) {
			%>
			<div class="red"></div>
			<%
				} else {
			%>
			<div class="black"></div>
			<%
				}
						}
			%>
		</div>
		<%
			} else {
		%>
		<div class="odd">
			<%
				for (int j = 0; j < width; j++) {
							if (j % 2 == 0) {
			%>
			<div class="black"></div>
			<%
				} else {
			%>
			<div class="red"></div>
			<%
				}
						}
			%>
		</div>
		<%
			}
		%>
		<%
			}
		%>
	</div>



</body>
</html>