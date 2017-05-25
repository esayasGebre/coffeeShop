<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="headerUser.jsp"/>
	<h1>list of selected products...</h1>
	<div>
	
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
	<h4>order info:</h4>
	
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
	
	
	
	</div>
			<div class="col-md-5">
 			<a href=" <spring:url value="/success" /> " class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span> Confirmation
					</a>

			</div>
		
			<div class="col-md-5">
 			<a href="<spring:url value="/products" />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span> back
					</a>

			</div>
		
		
		
</body>
</html>