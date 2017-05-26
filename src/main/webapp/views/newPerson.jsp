<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>User</title>
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Welcome</h1>
				<p>abc coffee shop....</p>
			</div>
		</div>
	</section>
	<section class="container">
 
	 <form method="post" action="addperson" class="form-horizontal">
			<fieldset>
				<legend>Type your personal detail:	
				<a href="<c:url value="/logout" /> "> Logout </a> | </legend>

				<div class="form-group">
					<label class="control-label col-lg-2" for="firstName">First Name:</label>
					<div class="col-lg-10">
						<input name="firstName" type="text" required
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="lastName">Last Name:</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<input name="lastName" type="text" required
								class="form:input-large" />
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="productType">Email: </label>
					<div class="col-lg-10">
						<input type="text" name="email" required/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="productType">Phone:</label>
					<div class="col-lg-10">
						<input type="text" name="phone" required/>
					</div>
				</div>
<h4>Address: </h4>	
				<div class="form-group">
					<label class="control-label col-lg-2" for="productType">City:</label>
					<div class="col-lg-10">
						<input type="text" name="city" required/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="productType">State:</label>
					<div class="col-lg-10">
						<input type="text" name="state" required/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="productType">Country:</label>
					<div class="col-lg-10">
						<input type="text" name="country" required/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="productType">Zipcode:</label>
					<div class="col-lg-10">
						<input type="text" name="zipcode" required />
					</div>
				</div>
				
				
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" name="btnAdd" class="btn btn-primary"
							value="Next -> to product lists" />
					</div>
				</div>

			</fieldset>
		</form>
	</section>
</body>
</html>

