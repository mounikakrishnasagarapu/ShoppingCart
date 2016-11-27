<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
     pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en-US">
<head><title>Category</title>
</head>
<style>
body  {
   
    background-color: #ffe6e6  ;
}
</style>

<body><center>
  <c:url var="addAction" value="addCategory" ></c:url>

<form:form action="${addAction}" modelAttribute="category" id="btn-add">
   <h3>
                    <c:if test="$(category.id==0}">
		       Add New Item
	            </c:if>
	            <c:if test="${!empty category.id}">
	            
		      Update Item for Category List ID <c:out value="${category.id}"/> 
		     <%--  <form:hidden path="id"/> --%>
	            </c:if>
	    
    </h3>     
	  <table>
	  
	  <tr>  <c:if test="${category.id!=0}">
	  <td> Id:</td> <td><form:input  path="id"/></td> 
	   </c:if>
	    <tr> <td>  Name:</td> <td><form:input  path="name"/></td> 
	    <tr> <td> Description:</td> <td><form:input path="description"/> </td> 
	     
		
  
	    <tr> <td colspan="2">
    	        <c:if test="${category.id==0}">
			      <input type="submit" value="Add" id="btn-add"> 
	         </c:if>
	         <c:if test="${category.id!=0}">
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
        <th>Category ID</th>
        <th>Category  Name</th>
        <th>Category  DESCRIPTION</th>
          <th>Action</th>
        
      </tr>
    </thead>
    	      <c:forEach var="obj" items="${categoryList}">
		      <tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 <td> <c:out value="${obj.description}"/> </td>
				
				
				 <td> <a href="deleteByid/${obj.id}">Delete </a> |
				     <a href="editByid/${obj.id}">Edit</a> 
				 </td>
		      </tr>
	      </c:forEach>
          </table> 
         
 </form:form>
  </center>
</body>
</html>
 



