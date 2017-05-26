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
<jsp:include page="headerUser.jsp"/>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Product Detail</h1>
			</div>
		</div>
	</section>
	<section class="container" >
 	
		<div class="row">
 		
			<div class="col-md-5">
				<h3>${product.productName}</h3>
				<p>${product.description}</p>
				<p>
					<strong>Item Code : </strong><span class="label label-warning">${product.id}</span>
				</p>
 				<h4>${product.price} USD</h4>

				<form action="productcart" method="post" >
					<input type="text" name="quantity" placeholder="Quantity" required />
					<input type="hidden" name="id" value="${product.id}" /><br />
					<br /><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="submit" value="add to cart" class="btn btn-default" />
				</form>
 <a href="<spring:url value="/products" />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span> back
					</a>

			</div>
		</div>

	</section>
</body>
</html>
