<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Persons</title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
<jsp:include page="header.jsp"/>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Person</h1>
				<p>List of customers</p>
			</div>
		</div>
	</section>

	<section class="container">
		<div class="row">
		
		<table class="table table-hover">
		<tr>
			<th>Customer Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Address</th>
		</tr>
		<c:forEach var="p" items="${persons}">
		<tr>
		<td>${p.getFirstName()} ${p.getLastName()}</td>
		<td>${p.getEmail()}</td>
		<td>${p.getPhone()}</td>
		<td>${p.getAddress().getCity()}
			 ${p.getAddress().getState()}
			 ${p.getAddress().getCountry()}
			 ${p.getAddress().getZipcode()}</td>
		</c:forEach>
	</table>
	</div>
	</section>
<jsp:include page="footer.jsp"/>
</body>
</html>
