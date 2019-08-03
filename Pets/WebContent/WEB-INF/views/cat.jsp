<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "com.codingdojo.web.models.Cat"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pussy Cat</title>
</head>
<body>
		<h3>You created a <c:out value="${cat.breed}"/>!</h3>
		<c:out value="${cat.showAffection()}"/>

</body>
</html>