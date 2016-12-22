<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> <html>
<head>

</head>
<style>
body  {
   
    background-color: #ffe6e6  ;
}
</style>

 <style>
table {
	background: #d9d9d9;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 20px;
	line-height: 20px;
	margin: 40px auto;
	text-align: left;
	width: 400px;
}	

th {
	background: url(), linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;	
}

th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

tr {
	background: url(G:\Shoppingsite\src\main\webapp\resources\images\bg1.jpg);	
}

tr:nth-child(odd) td {
	background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	

tbody:hover td {
	color:  #ffe6e6;
	text-shadow: 0 0 3px #aaa;
}

tbody:hover tr:hover td {
	color: #444;
	text-shadow: 0 1px 0 #fff;
} 
</style>
<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
 <body>
	${message}
	<div class="text-center myForm">
	<div align="center">
		<section id="content">
			<c:url var="addAction" value="adduser"></c:url>
			
			<form:form action="${addAction}" commandName="user"
				method="post">
				
				<table>
				
				 <tr><td> Name</td>
  		         <div class="col-md-2">
					<td><form:input path="name" type="text" placeholder="Name"
						pattern=".{5,10}" required="true" id="username" name="username" 
						title="minimum length for name is 5"/></td>
			</tr> 
			</div>  
			
			

				<br>
				
				<tr><td>User name</td>
			 <div class="col-md-2">
				
					<td><form:input path="userName" type="text" placeholder="Username"
					pattern=".{3,8}" required="true" id="username" name="username"
					title="minimum length for username is 3" /></td>
					</tr>
				</div>
				
				
				<br>
				<tr>
				<td>Password</td>
			
				 <div class="col-md-2">
					<td><form:input path="password" type="password" placeholder="Password" 
					pattern=".{5,10}" required="true" id="password" name="password" 
					title="minimum length for passsword is 5" /></td>
			
				</tr></div>
			
				
				<br>
				
				<tr><td>Email</td>
                 <div class="col-md-2">
              
				<div>
				  
					<td><form:input path="email" type="email" placeholder="Email"
						 required="true" id="username" name="username" /></td>
						</div>
						
						</div>
		
				<br>
			
                     <tr><td>Mobile</td>
                       <div class="col-md-2">
			                  	<div>	
				               	<td><form:input path="mobile" type="text" placeholder="Mobile"
				              		pattern="^[789]\d{9}$" required="true" id="username"
						             name="username" title="Enter valid mobile number" /> </td>
				                     </div>
				                         </div>
				                         </div>
				                                   </div>
				                        
				                             </tr></div> </table>
				                                         
				                                   <br>
				                                   
				<div>
					<!-- <input type="submit" value="Register" /><a href="Login">Sign In</a> -->
					<button class="button" input type="submit" style="vertical-align:middle"><span>Register </span></button>
					
				</div>

			</form:form>
			</div>
			
		</section>
		
	</div>
	
</body>
</html> 



