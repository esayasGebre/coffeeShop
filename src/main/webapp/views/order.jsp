<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Order</title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
	<jsp:include page="headerUser.jsp" />
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Order Detail</h1>
				<p>Order</p>
			</div>
		</div>
	</section>

	<section class="container">
		<fieldset>
			<legend>List of Products</legend>
			<table>
				<tr>
					<th>product ID</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Sub total</th>
				</tr>
				<c:forEach var="oline" items="${orderedProducts}">
					<tr>
						<td>${oline.getProduct().getId()}</td>
						<td>${oline.getProduct().getProductName()}</td>
						<td>${oline.getPrice()}</td>
						<td>${oline.getQuantity()}</td>
						<td>${oline.getSubtotal()}</td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
	</section>
	<br />
	<section class="container">
		<fieldset>
			<legend>Order Informaion:</legend>
			<table>
				<tr>
					<th>Customer Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Address</th>
					<th>Order Date</th>
					<!-- <th>Order Quantity</th> -->
					<!-- 		<th>Total Amount</th> -->
				</tr>
				<tr>
					<td>${orderDetail.getPerson().getFirstName()}</td>
					<td>${orderDetail.getPerson().getEmail()}</td>
					<td>${orderDetail.getPerson().getPhone()}</td>
					<td>${orderDetail.getPerson().getAddress().getCity()}
						${orderDetail.getPerson().getAddress().getState()}
						${orderDetail.getPerson().getAddress().getCountry()}
						${orderDetail.getPerson().getAddress().getZipcode()}</td>
					<td>${orderDetail.getOrderDate()}</td>
					<%-- <td>${orderDetail.getQuantity()}</td> --%>
					<%-- <td>${orderDetail.getTotalAmount()}</td> --%>
				</tr>
			</table>

		</fieldset>
		<br />
		<div class="col-md-5">
			<a href=" <spring:url value="/success" /> " class="btn btn-default">
				<span class="glyphicon-hand-left glyphicon"></span> Confirmation
			</a> <a href="<spring:url value="/products" />" class="btn btn-default">
				<span class="glyphicon-hand-left glyphicon"></span> back
			</a>
		</div>
	</section>

</body>
</html>