<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib   uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>category</title>
</head>
<body>

 <c:url var="addAction" value="addCategory" ></c:url>

<form:form action="${addAction}" modelAttribute="category" cid="btn-add">
   <h3>
                    <c:if test="${category.cid==0}">
		       Add New Item
	            </c:if>
	            
	            <c:if test="${!empty category.cid}">
		      Update Item for cid: <c:out value="${category.cid}"/>
		     <%--  <form:hidden path="cid"/> --%>
	            </c:if>
	            
   </h3> 
   
        
	  <table>
	  
	  <tr>  <c:if test="${category.cid!=0}">
	  <td>cId:</td> <td><form:input  path="cid"/></td> 
	   </c:if>
	    <tr> <td>cName:</td> <td><form:input  path="cname"/></td> 
	    <tr><td>cDescription:</td><td><form:input path="cdescription"/></td>
	     
	    
  
	    <tr> <td colspan="2">
    	        <c:if test="${category.cid==0}">
			      <input type="submit" value="Add" id="btn-add"> 
	         </c:if>
	         <c:if test="${category.cid!=0}">
			      <input type="submit" value="Update" id="btn-update"> 
	         </c:if>
		</td> 
		<tr> <td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> 
	  </table>
	  
	  
	  
	  
	  <table>   
		 <tr>	 <td> cID </td>
		        	 <td> cName </td>
				 
				  <td> cDescription </td>
				 
				 
				  
	      	</tr>
    	      <c:forEach var="obj" items="${listcategory}">
		      <tr>
		                 <td> <c:out value="${obj.cid}"/> </td>
		                 <td> <c:out value="${obj.cname}"/> </td>
				         <td> <c:out value="${obj.cdescription}"/> </td>
				 
				 <td> <a href="deleteBycid/${obj.cid}">Delete </a> |
				     <a href="editBycid/${obj.cid}">Edit</a> 
				 </td>
		      </tr>
	      </c:forEach>
          </table> 
         
      
          
          
 </form:form>
</body>
</html>
 
 
 
 
 
 
 
 
 
 