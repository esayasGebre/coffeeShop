<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>You are in!</title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>

<body>
<jsp:include page="header.jsp"/>
<h1>Coffee shop</h1>
	<a href="<c:url value="/listpersons" /> "> List of Persons </a> |
	<a href="<c:url value="/listoforders" /> "> List of Orders </a> |
	<a href="<c:url value="/mgtproduct" /> "> Product Management </a> |
	<a href="<c:url value="/logout" /> "> Logout </a> | 

</body>
</html>