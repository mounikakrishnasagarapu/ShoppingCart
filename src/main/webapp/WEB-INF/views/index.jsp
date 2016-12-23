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
  </head>
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

<body>
<!--  <div id="templatemo_content">
    
    	<div id="templatemo_content_left"> -->
    	<h1>ShopCart</h1>
    	
     
    
     

 


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">mounikaonline</a>
      <ul class="nav navbar-nav">
            <!-- <li class="active"><a href="#">Home</a></li> </ul>    -->
             <!--   <ul class="nav navbar-nav navbar-right" style="margin-bottom:0px;"> -->
             <li class="dropdown" >
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories
              <span class="caret"></span></a>
                    <ul class="dropdown-menu">
        <li>
          <c:forEach items="${categoryList}" var="obj">
          
				<a href="navproduct/${obj.id }"><c:out value="${obj.name}" /></a>
							<br>
						
					</c:forEach>
					</li>
        </ul>
    </div>
 
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



</script>
<!DOCTYPE html>
<html>
<head>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>mounika online</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="C:\devops\workspace\ShoppingCart\src\main\webapp\resources\images\vpcw125ag-p-1.jpg" alt="site" width="300" height="200">
        <div class="carousel-caption">
          <
                  </div>
      </div>

      <div class="item">
        <img src="C:\devops\workspace\ShoppingCart\src\main\webapp\resources\images\10729smartphone-samsung-galaxy-core-2-duos-dual-chip-3gandroid-4.4-cam.-5mp-tela-4-5-34-proc.-quad-core-086774600.jpg" alt="" width="200" height="100">
        <div class="carousel-caption">
          
       
        </div>
      </div>
    
      <div class="item">
        <img src="C:\devops\workspace\ShoppingCart\src\main\webapp\resources\images\inspiring-ideas-beautiful-best-tv-stands-for-wall-mounted-tv-tv-wall-mount-vs-tv-stand-tv-stand-for-under-wall-mounted-tv-tv-stand-for-wall-mounted-flat-screen-tv-tv-cabinet-for-.jpg" alt="" width="300" height="200">
        <div class="carousel-caption">
          
         
        </div>
      </div>
    
      <div class="item">
        <img src="C:\devops\workspace\ShoppingCart\src\main\webapp\resources\images\sony-design_sf.jpg" alt="" width="300" height="200">
        <div class="carousel-caption">
      
      
                 
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>


 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>shopcart Website </title>
<meta name="keywords" content="free website template, flower shop, website templates, CSS, HTML" />
<meta name="description" content="Flower Shop - free website template, W3C compliant HTML CSS layout" />
<!-- <link href="templatemo_style.css" rel="stylesheet" type="text/css" /> -->

</head>
<c:forEach items="${productList}" var="product">
			<tr>


				<td>
					<!-- --<div class="thumbnail">-->
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
 <c:if test="${UserClickedRegistration}">
<jsp:include page="Registration.jsp"></jsp:include>
</c:if> 
 
<c:if test="${UserClickedCategory}">
<jsp:include page="Category.jsp"></jsp:include></c:if> 
 <c:if test="${UserClickedSupplier}">
<jsp:include page="Supplier.jsp"></jsp:include></c:if>
<c:if test="${UserClickedProduct}">
<jsp:include page="Product.jsp"></jsp:include></c:if>
 
 <c:if test="${UserClickedAdmin}">
<jsp:include page="Admin.jsp"></jsp:include></c:if>       

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
		<c:when test="${userClickedRegistration}">
			<c:import url="/WEB-INF/views/Registration.jsp"></c:import>
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

	
</body>
</html>
  
