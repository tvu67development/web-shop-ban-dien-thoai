<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="home">Shop 96er</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse justify-content-end"
			id="navbarsExampleDefault">
			<ul class="navbar-nav m-auto">
				<c:if test="${sessionScope.acc != null}">
					<li class="nav-item"><a class="nav-link" href="#">Hello
							${sessionScope.acc.user}</a></li>
					<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
				</c:if>
				<c:if test="${sessionScope.acc == null}">
					<li class="nav-item"><a class="nav-link" href="Login.jsp">Login</a>
					</li>
				</c:if>
			</ul>

			<form action="search" method="post" class="form-inline my-2 my-lg-0">
				<div class="input-group input-group-sm">
					<input value="${txtSearch}" name="txtSearch" type="text"
						class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
					<div class="input-group-append">
						<button type="submit" class="btn btn-secondary btn-number">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				<a class="btn btn-success btn-sm ml-3" href="Cart.jsp"> <i
					class="fa fa-shopping-cart"></i> Cart <span
					class="badge badge-danger text-light">${total}</span>
				</a>
			</form>
		</div>
	</div>
</nav>
<section class="jumbotron text-center">
	<div class="container">
		<div><a href="${pageContext.request.contextPath}/home"><img alt="" src="${pageContext.request.contextPath}/img/96erStore.png"></a></div>
		<div><img alt=""
			src="${pageContext.request.contextPath}/img/connecting.png">
		</div>
	</div>
</section>
<!--end of menu-->
<div class="container">
	<div class="row">
		<div class="col">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="home">Home</a></li>
					<li class="breadcrumb-item"><a href="#">Category</a></li>
					<li class="breadcrumb-item active" aria-current="#">Sub-category</li>
				</ol>
			</nav>
		</div>
	</div>
</div>