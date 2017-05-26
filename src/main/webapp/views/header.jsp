<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
	<div class="header">
		<a href="<c:url value="/listpersons" /> "> List of Persons </a> |
		<a href="<c:url value="/listoforders" /> "> List of Orders </a> |
		<a href="<c:url value="/mgtproduct" /> "> Product Management </a> |
		<a href="<c:url value="/logout" /> "> Logout </a> | 
	</div>
</body>
</html>
