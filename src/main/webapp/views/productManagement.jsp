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
<jsp:include page="header.jsp"/>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Manage Products</h1>
				<p>Admin</p>
			</div>
		</div>
	</section>
	<section class="container">
 
	 <form method="post" action="add" class="form-horizontal">
			<fieldset>
				<legend>Add new product</legend>

				<div class="form-group">
					<label class="control-label col-lg-2" for="name">Product Name:</label>
					<div class="col-lg-10">
						<input name="productName" type="text" required
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="price">Price:</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<input name="price" type="text" required
								class="form:input-large" />
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="description">Description: </label>
					<div class="col-lg-10">
						<textarea required name="description" rows="4"  cols="23" ></textarea>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="productType">Product Type:</label>
					<div class="col-lg-10">
						<select name="productType" >
	  						<option value="BREAKFAST">BREAKFAST</option>
	  						<option value="LUNCH">LUNCH</option>
	  						<option value="DINNER">DINNER</option>
						</select>
					<!-- 	<input type="text" name="productType" /> -->
					</div>
				</div>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" name="btnAdd" class="btn btn-primary"
							value="Add" />
					</div>
				</div>

			</fieldset>
		</form>
	</section>
	
	<section class="container">
 
	 <form method="post" action="add" class="form-horizontal">
			<fieldset>
				<legend>List of products:</legend>
				
				<!-- tabular list of products edit->the delete, update -->
	
			

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
				<!-- detail -->	<a
									href=" <spring:url value="/products/product?id=${product.id}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a>
				<!-- delete -->	
								<a
									href=" <spring:url value="/products/delete?id=${product.id}" /> "
									class="btn btn-primary" id="delete" onclick="return confirm('Are you sure, U want to Remove this product?')"> <span
									class="glyphicon-info-sign glyphicon" /></span> Delete
								</a>
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
				

			</fieldset>
		</form>
	</section>
	
<jsp:include page="footer.jsp"/>	
</body>
</html>
