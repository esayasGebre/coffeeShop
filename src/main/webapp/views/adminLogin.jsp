<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

	<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
		<div class="thumbnail">
			<div class="caption">
	
		<form action="adminlog" method="post">
			Username: <input type="text" name="username" placeholder="User Name"/>
			Passwork: <input type="password" name="password" />
			
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			
			<input type="submit" value="lonin" />
		</form>
			</div>
		</div>
	</div>

</body>
</html>