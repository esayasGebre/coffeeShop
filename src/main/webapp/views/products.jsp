<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Products</h1>
				<p>All the available products in our coffee store</p>
			</div>
		</div>
	</section>

<div class="main">
	<section class="container">
		<div class="row">
			<c:forEach items="${products}" var="product">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
					<!-- img src="<c:url value="/resource/images/${product.id}.png"></c:url>" alt="image"  style = "width:100%"/-->
						<div class="caption">
							<h3>${product.productName}</h3>
							<p>${product.description}</p>
							<p>${product.price}USD</p>
 							<p>
								<a
									href=" <spring:url value="/products/product?id=${product.id}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a>
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	</div>
	<div class="rightMenu" >
	login
	</div>
	
</body>
</html>
