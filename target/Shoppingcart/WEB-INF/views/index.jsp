<%@ page language ="java" contentType="text/html;  charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<html>
<head>
<meta http-equiv="context-Type" content ="text/html; charset=ISO-8859-1">
</head>
<body>
<h2><center>SHOPPING SITE</center></h2><hr>
<!-- <h3>Existing User <a href="login">Login Here</a></h3>
<h3>New User : <a href="register">Register Here</a></h3> -->
<jsp:include page="header.jsp"></jsp:include>
<hr>
${errorMessage}
${registerMessage}
<%-- <c:if test="${UserClickedLogin}">
<jsp:include page="login.jsp"></jsp:include>
</c:if> --%>
<c:if test="${UserClickedRegister}">
<jsp:include page="register.jsp"></jsp:include>
</c:if>
<%-- <c:if test="${UserClickedProduct}">
<jsp:include page="product.jsp"></jsp:include>
</c:if>
<c:if test="${UserClickedSupplier}">
<jsp:include page="supplier.jsp"></jsp:include>
</c:if>
<c:if test="${UserClickedCategory}">
<jsp:include page="category.jsp"></jsp:include>
</c:if> --%>
</body>
</html>
