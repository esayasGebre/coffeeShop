<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
	<jsp:include page="headerUser.jsp" />
	<h1>Message...</h1>
	<h2>Successful Order</h2>
	<h3>your coffee will arrive In a minute</h3>
	<a href="<c:url value="/exit" /> "> Back to the product list </a> |
	<a href="<c:url value="/logout" /> "> logout </a> |
</body>
</html>