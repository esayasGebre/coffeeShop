<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Add Product</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Products</h1>
				<p>Add product</p>
			</div>
		</div>
	</section>
	<section class="container">
	
<%-- <form action="add" method="post">
Product name :
<input type="text" name="productName" placeholder="product name"/>

<input type="submit" value="submit" />
</form> --%>
<!-- <input type="text" name="description" placeholder="description"/>
<input type="text" name="price" placeholder="price"/>
<input type="text" name="productType" placeholder="type"/>
 -->
 
	 <form method="post" action="add" class="form-horizontal">
			<fieldset>
				<legend>Add new product</legend>
<!-- 				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="id"></label>
					<div class="col-lg-10">
						<input name="id" type="text"
							class="form:input-large" />
					</div>
				</div> -->

				<div class="form-group">
					<label class="control-label col-lg-2" for="name"></label>
					<div class="col-lg-10">
						<input name="productName" type="text"
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="price"></label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<input name="price" type="text"
								class="form:input-large" />
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="description"></label>
					<div class="col-lg-10">
						<textarea name="description" rows="2" ></textarea>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="productType"></label>
					<div class="col-lg-10">
						<input type="text" name="productType" />
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
</body>
</html>
