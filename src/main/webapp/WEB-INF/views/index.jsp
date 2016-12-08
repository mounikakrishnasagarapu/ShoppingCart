<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
 <html>
<head>


  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
body {
    background-color: lightblue;
}

h1 {
    color: white;
    text-align: center;
}

p {
    font-family: verdana;
    font-size: 20px;
}
</style>
</head>
<body>


     	 <div id="templatemo_content">
    
    	<div id="templatemo_content_left">
    	<h1>ShoppingCart Mounika</h1>
    	
     </div>
     </div>
 
    
     

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">mounikaonline</a>
    </div>
  <%--  <ul>
           <sec:authorize access="!isAuthenticated()">
    
      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li><br>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li></ul>
      </sec:authorize>
      <sec:authorize access="isAuthenticated()">
     <ul class="nav navbar-nav navbar-right">
      <li><a href="Cart"><span class="glyphicon glyphicon-user"></span>Cart</a></li>
	<li><a href="<c:url value="/perform_logout" />">Logout</a></li>
	<li><a href="">Welcome  <sec:authentication property="principal.username"/></a></li></ul>
</sec:authorize></ul></div> --%>
 <ul class="nav navbar-nav navbar-right">
    <sec:authorize access="!isAuthenticated()">
    
      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </sec:authorize>
    </ul>
    <sec:authorize access="isAuthenticated()">
     <ul class="nav navbar-nav navbar-right">
      <li><a href="Cart1"><span class="glyphicon glyphicon-user"></span>Cart</a></li>
	<li><a href="<c:url value="/perform_logout" />">Logout</a></li>
	<li><a href="">Welcome  <sec:authentication property="principal.username"/></a></li></ul>
</sec:authorize>
</nav><!-- end of menu -->
    
<body>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>



<div class="w3-content w3-display-container">
  <img class="mySlides" src="C:\devops\workspace\ShoppingCart\src\main\webapp\resources\images\fantasy-book-cover.jpg" style="width:70%">
  
  <img class="mySlides" src="C:\devops\workspace\ShoppingCart\src\main\webapp\resources\images\inspiring-ideas-beautiful-best-tv-stands-for-wall-mounted-tv-tv-wall-mount-vs-tv-stand-tv-stand-for-under-wall-mounted-tv-tv-stand-for-wall-mounted-flat-screen-tv-tv-cabinet-for-.jpg" style="width:50%">
  <img class="mySlides" src="C:\devops\workspace\ShoppingCart\src\main\webapp\resources\images\fantasy-book-cover.jpg" style="width:70%">
  <img class="mySlides" src="img_forest.jpg" style="width:100%">

  <a class="w3-btn-floating w3-display-left" onclick="plusDivs(-1)">&#10011;</a>
  <a class="w3-btn-floating w3-display-right" onclick="plusDivs(1)">&#10011;</a>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Shopping Website Mounika</title>
<meta name="keywords" content="free website template, flower shop, website templates, CSS, HTML" />
<meta name="description" content="Flower Shop - free website template, W3C compliant HTML CSS layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

</head>

   ${errorMessage} 
${registerMessage}
<!-- if the error message is there, i have to open login.jsp -->
<c:if test="${errorMessage}">
<jsp:include page="Login.jsp"></jsp:include>
 if the user clicked login link, I have to open login.jsp 
</c:if>
  <c:if test="${UserClickedLogin}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>
 <c:if test="${userClickedRegistration}">
<jsp:include page="Registration.jsp"></jsp:include></c:if> 
 
<c:if test="${UserClickedCategory}">
<jsp:include page="Category.jsp"></jsp:include></c:if> 
 <c:if test="${UserClickedSupplier}">
<jsp:include page="Supplier.jsp"></jsp:include></c:if>
<c:if test="${UserClickedProduct}">
<jsp:include page="Product.jsp"></jsp:include></c:if>
 <c:if test="${UserClickedRegister}">
<jsp:include page="Registration.jsp"></jsp:include></c:if>
 <c:if test="${UserClickedAdmin}">
<jsp:include page="Admin.jsp"></jsp:include></c:if>       
<c:forEach items="${productList}" var="product">
			<tr>


				<td>
					<div class="thumbnail">
					<div class="col-md-4">
						<a href="ShowProduct/${product.id}"> <img height="150px"
							width="150px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>

						<td><c:url var="action" value="addtocart/${product.id}"></c:url>
							<form:form action="${action}" modelAttribute="cart">
								<td id="td1"><c:out value="${product.name}" /><br>
								<td id="td1"><c:out value="${product.price}" /> <input
									type="submit" class="btn btn-primary" value="Add To Cart" /><br>
							</form:form></td>
						<br>

					</div>
			</tr>
			</td>
		</c:forEach>
	</div>

	<div ng-view></div>

	<script>
		$(document).ready(function() {
			$('.dropdown a.test').on("click", function(e) {
				$(this).next('ul').toggle();
				e.stopPropagation();
				e.preventDefault();
			});
		});
	</script>

	<c:choose>
		<c:when test="${UserClickedadmin}">
			<c:import url="/WEB-INF/views/Admin.jsp"></c:import>
		</c:when>
	</c:choose>

	<c:choose>
		<c:when test="${UserClickedshowproduct}">
			<c:import url="/WEB-INF/views/ShowProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${UserClickedCart}">
			<c:import url="/WEB-INF/views/Cart1.jsp"></c:import>
		</c:when>
	</c:choose>
<c:choose>
		<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/views/Payment.jsp">
			</c:import>
		</c:when>
		</c:choose>
<%-- <c:choose>
		<c:when test="${IfMakePaymentClicked}">
			<c:import url="/WEB-INF/views/thanks.jsp">
			</c:import>
		</c:when>
		</c:choose> --%>
		<div ng-view></div>

	<script>
		$(document).ready(function() {
			$('.dropdown a.test').on("click", function(e) {
				$(this).next('ul').toggle();
				e.stopPropagation();
				e.preventDefault();
			});
		});
	</script>

	<c:choose>
		<c:when test="${UserClickedAdmin}">
			<c:import url="/WEB-INF/views/Admin.jsp"></c:import>
		</c:when>
	</c:choose>
</body>
</html>
  
