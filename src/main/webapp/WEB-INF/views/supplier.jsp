<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib   uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>supplier</title>
</head>
<body>
 <c:url var="addAction" value="addSupplier" ></c:url>

<form:form action="${addAction}" modelAttribute="supplier" sid="btn-add">
   <h3>
                    <c:if test="${supplier.sid==0}">
		       Add New Item
	            </c:if>
	            
	            <c:if test="${!empty supplier.sid}">
		      Update Item for sId: <c:out value="${supplier.sid}"/>
		     <%--  <form:hidden path="sId"/> --%>
	            </c:if>
	            
   </h3> 
        
	  <table>
	  
	  <tr>  <c:if test="${supplier.sid!=0}">
	  <td>SId:</td> <td><form:input  path="sid"/></td> 
	   </c:if>
	    <tr> <td>SName:</td> <td><form:input  path="sname"/></td> 
	    <tr> <td>SAddress:</td> <td><form:input path="saddress"/> </td> 
	    
  
	    <tr> <td colspan="2">
    	        <c:if test="${supplier.sid==0}">
			      <input type="submit" value="Add" id="btn-add"> 
	         </c:if>
	         <c:if test="${supplier.sid!=0}">
			      <input type="submit" value="Update" id="btn-update"> 
	         </c:if>
		</td> 
		<tr> <td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> 
	  </table>
	  
	  
	  
	  
	  <table>   
		 <tr>	 <td> SID </td>
		        	 <td> SName </td>
				 <td> SAddress</td>
				 
				  
	      	</tr>
    	      <c:forEach var="obj" items="${listSupplier}">
		      <tr>
		                 <td> <c:out value="${obj.sid}"/> </td>
		                 <td> <c:out value="${obj.sname}"/> </td>
				 <td> <c:out value="${obj.saddress}"/> </td>
				 
				 <td> <a href="deleteBysid/${obj.sid}">Delete </a> |
				     <a href="editBysid/${obj.sid}">Edit</a> 
				 </td>
		      </tr>
	      </c:forEach>
          </table> 
          
          
          
          
 </form:form>
