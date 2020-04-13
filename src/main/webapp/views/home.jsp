<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Add Product</title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
	<%-- <jsp:include page="header.jsp"/> --%>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Welcome to our COFFEE SHOP.</h1>
				<p>---</p>
			</div>
		</div>
	</section>

	<section class="container">
		<fieldset>
			<legend>

				<a href="<c:url value="/listpersons" /> "> List of Persons </a> <br />
				<a href="<c:url value="/listoforders" /> "> List of Orders </a> <br />
				<a href="<c:url value="/mgtproduct" /> "> Product Management </a> <br />

				<a href="<c:url value="/newperson" /> "> New Order </a> <br /> <a
					href="<c:url value="/secure" />"> Login </a>
			</legend>
		</fieldset>
	</section>
</body>
</html>