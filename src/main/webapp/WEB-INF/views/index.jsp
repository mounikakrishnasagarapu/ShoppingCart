<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="context-Type" content ="text/html; charset=ISO-8859-1">
</head>
<body bgcolor="">
<h2><center><font color="red">shoppingcart</font></center></h2>
<!--  
<h3>Existing User <a href="login">Login Here</a></h3>
<h3>New User : <a href="register">Register Here</a></h3>-->
<jsp:include page="header.jsp"></jsp:include>
<hr>

${errorMessage} 
${registerMessage}
<!-- if the error message is there, i have to open login.jsp -->
<c:if test="${errorMessage}">
<jsp:include page="login.jsp"></jsp:include>
<!-- if the user clicked login link, I have to open login.jsp -->
</c:if>
  <%-- <c:if test="${UserClickedLogin}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>  --%>
 <c:if test="${UserClickedRegister}">
<jsp:include page="register.jsp"></jsp:include></c:if> 
 <c:if test="${errorMessage}">
<!--<jsp:include page="logout.jsp"></jsp:include></c:if>-->
<!--<c:if test="${UserClickedLogout}"> -->
<!--<jsp:include page="logout.jsp"></jsp:include></c:if>--> 
<c:if test="${UserClickedCategory}">
<jsp:include page="Category.jsp"></jsp:include></c:if> 
 <c:if test="${UserClickedSupplier}">
<jsp:include page="supplier.jsp"></jsp:include></c:if>
<c:if test="${UserClickedProduct}">
<jsp:include page="product.jsp"></jsp:include></c:if>
 
 
 </body>
</html>