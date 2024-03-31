<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
<!DOCTYPE html>
<html>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">ShoesSS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${sessionScope.acc.admin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="managertk">Manager Account</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Product</a>
                    </li>
                </c:if>
             <!--   <c:if test="${sessionScope.acc.customer == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Product</a>
                    </li>
                </c:if>
                -->  
                <c:if test="${sessionScope.acc != null}">
                   
                      <li class="nav-item">
                        <a class="nav-link" href="#">Hello ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li> 
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="login">Login</a>
                    </li>
                </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-success btn-sm ml-3" href="show">
                    <i class="fa fa-shopping-cart"></i> Cart
                </a>
            </form>
        </div>
    </div>
</nav>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading"> ShoesSS Nơi cung cấp giày chất lượng cao</h1>
    </div>
</section>

</html>