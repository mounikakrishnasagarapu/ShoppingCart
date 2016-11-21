<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib   uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>Login</title>
</head>
<body>
<%-- <c:url var="addAction" value="addLogin" ></c:url> --%>

<form:form action="addLogin" modelAttribute="login" lid="btn-add">
   <h3>
                    <c:if test="${login.lid==0}">
		       Add New Item
	            </c:if>
	            
	            <c:if test="${!empty login.lid}">
		      Update Item for LId: <c:out value="${login.lid}"/>
		     <%--  <form:hidden path="lid"/> --%>
	            </c:if>
	            
   </h3> 
        
	  <table>
	  
	  <tr>  <c:if test="${login.lid!=0}">
	  <td>L Id:</td> <td><form:input  path="lid"/></td>
	   </c:if></tr>
	    <tr> <td>  L Name:</td> <td><form:input  path="lname"/></td> 
	    <tr> <td>Password:</td> <td><form:input path="password"/> </td> 
	     
		
		
  
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
	  
	  
	  
	  
	  <table>   
		 <tr>	 <td>L ID </td>
		        	 <td>L Name </td>
				 <td> Password</td>
				 
				  
	      	</tr>
    	      <c:forEach var="obj" items="${listlogin}">
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
        </body>
        </html>
