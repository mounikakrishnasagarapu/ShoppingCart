<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>Supplier</title>
</head>
<style>
body  {
   
    background-color: #ffe6e6;
}
</style>

<body><center>
  <c:url var="addAction" value="addSupplier" ></c:url>

<form:form action="${addAction}" modelAttribute="supplier" id="btn-add">
   <h3>
                    <c:if test="$(supplier.id==0}">
		       Add New Item
	            </c:if>
	            <c:if test="${!empty supplier.id}">
		      Update Item for Supplier ID: <c:out value="${supplier.id}"/>
		     <%--  <form:hidden path="sid"/> --%>
	            </c:if>
         </h3>
	  <table>
	  
	  <tr>  <c:if test="${supplier.id!=0}">
	  <td> Id:</td> <td><form:input  path="id"/></td> 
	   </c:if>
	    <tr> <td> Name:</td> <td><form:input  path="name"/></td> 
	    <tr> <td>Address:</td> <td><form:input path="address"/> </td> 
	    <tr> <td>Product:</td> <td><form:input path="product"/> </td> 
	    
  
	    <tr> <td colspan="2">
    	        <c:if test="${supplier.id==0}">
			      <input type="submit" value="Add" id="btn-add"> 
	         </c:if>
	         <c:if test="${supplier.id!=0}">
			      <input type="submit" value="Update" id="btn-update"> 
	         </c:if>
		</td> 
		<tr> <td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> 
	  </table>
	   <table class="table table-bordered">
    <thead>
      <tr>
        <th>Supplier ID</th>
        <th>Supplier Name</th>
        <th>Supplier Address</th>
         <th>Supplier Product</th>
          <th>Action</th>
        
      </tr>
    </thead>
    <!-- <tbody>
	  <table>   
		 <tr>	 <td> SID </td>
		        	 <td> SName </td>
				 <td> Address</td>
				 
				 <td colspan="2"> Action </td>
	      	</tr> -->
    	      <c:forEach var="obj" items="${supplierList}">
		      <tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 <td> <c:out value="${obj.address}"/> </td>
				  <td> <c:out value="${obj.product}"/> </td>
				
				
				 <td> <a href="DeleteByid/${obj.id}">Delete </a> |
				     <a href="EditByid/${obj.id}">Edit</a> 
				 </td>
		      </tr>
	      </c:forEach>
          </table> 
 </form:form>
  
</center>

</body>
</html> 