<!DOCTYPE html>
<html lang="en">
<head>
  <title>mounika</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
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
</head>
</html>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">shopping cart</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Category">category</a></li>
            <li><a href="Supplier">supplier</a></li>
            <li><a href="Product">product</a></li>
          </ul>
        </li>
         </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
 <c:chooose>
 <c:when test="${UserClickedProduct}">
 <c:import url=/WEB-INF/views/product.jsp"></c:import>
 </c:when>
 </c:chooose>
  <c:chooose>
 <c:when test="${UserClickedSupplier}">
 <c:import url=/WEB-INF/views/supplier.jsp"></c:import>
 </c:when>
 </c:chooose>
<c:chooose>
 <c:when test="${UserClickedCategory}">
 <c:import url=/WEB-INF/views/category.jsp"></c:import>
 </c:when>
 </c:chooose>
</body>
</html>

