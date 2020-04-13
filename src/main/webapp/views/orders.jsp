<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Orders</title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Order</h1>
				<p>Order list</p>
			</div>
		</div>
	</section>

	<section class="container">
		<div class="row">
			<table class="table table-hover">
				<tr>
					<th>Order Id</th>
					<th>Order Date</th>
					<th>Quantity</th>
					<th>Total Amount</th>
					<th>Customer Name</th>
					<th>Phone</th>
				</tr>
				<c:forEach var="order" items="${orders}">
					<tr>
						<td>${order.getId()}</td>
						<td>${order.getOrderDate()}</td>
						<td>${order.getQuantity()}</td>
						<td>${order.getTotalAmount()}</td>
						<td>${order.getPerson().getFirstName()}
							${order.getPerson().getLastName()}</td>
						<td>${order.getPerson().getPhone()}</td>
				</c:forEach>
			</table>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>
