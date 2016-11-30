<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en-US">
<head><title>Login</title>
</head>
<style>
body  {
   
    background-color: #ffe6e6  ;
}
</style>

<body><center>
  <c:url var="addAction" value="addLogin" ></c:url>

<form:form action="${addAction}" modelAttribute="login" id="btn-add">
   <h3>
                    <c:if test="$(login.lid==0}">
		       Add New Item
	            </c:if>
	            <c:if test="${!empty login.lid}">
	            
		      Update Item for LID <c:out value="${login.lid}"/> 
		     <%--  <form:hidden path="lid"/> --%>
	            </c:if>
	    
    </h3>     
	  <table>
	  
	  <tr>  <c:if test="${login.lid!=0}">
	  <td>L Id:</td> <td><form:input  path="lid"/></td> 
	   </c:if>
	    <tr> <td> L Name:</td> <td><form:input  path="lname"/></td> 
	    <tr> <td> Password:</td> <td><form:input path="password"/> </td> 
	     
		
  
	    <tr> <td colspan="2">
    	        <c:if test="${login.lid==0}">
			      <input type="submit" value="Add" id="btn-add"> 
	         </c:if>
	         <c:if test="${login.lid!=0}">
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
        <th>LID</th>
        <th>LName</th>
        <th>PASSWORD</th>
          <th>Action</th>
        
      </tr>
    </thead>
    	      <c:forEach var="obj" items="${loginList}">
		      <tr>
		                 <td> <c:out value="${obj.lid}"/> </td>
		                 <td> <c:out value="${obj.lname}"/> </td>
				 <td> <c:out value="${obj.password}"/> </td>
				
				
				 <td> <a href="deleteBylid/${obj.lid}">Delete </a> |
				     <a href="editBylid/${obj.lid}">Edit</a> 
				 </td>
		      </tr>
	      </c:forEach>
          </table> 
         
 </form:form>
  </center>
</body>
</html>