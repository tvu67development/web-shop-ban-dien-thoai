

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
	import="entity.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<jsp:include page="Menu.jsp"></jsp:include>
	<div class="shopping-cart">
		<div class="px-4 px-lg-0">

			<div class="pb-5">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

							<!-- Shopping cart table -->
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th scope="col" class="border-0 bg-light">
												<div class="p-2 px-3 text-uppercase">Product</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="py-2 text-uppercase">Price</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="py-2 text-uppercase">Amount</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="py-2 text-uppercase">Delete</div>
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${listC}" var="o">
											<tr>
												<th scope="row">
													<div class="p-2">
														<img src="${o.src}" alt="" width="70"
															class="img-fluid rounded shadow-sm">
														<div class="ml-3 d-inline-block align-middle">
															<h5 class="mb-0">
																<a href="detail?pid=${o.id}"
																	class="text-dark d-inline-block">${o.name}</a>
															</h5>
															<span class="text-muted font-weight-normal font-italic"></span>
														</div>
													</div>
												</th>
												<td class="align-middle"><strong>${o.price}</strong></td>
												<td class="align-middle"><a href="#"><button
															class="btnSub">-</button></a> <strong>${o.number}</strong> <a
													href="#"><button class="btnAdd">+</button></a></td>
												<td class="align-middle"><a
													href="cart?pid=${o.id}&action=delete" class="text-dark">
														<button type="button" class="btn btn-danger">Delete</button>
												</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- End -->
						</div>
					</div>

					<div class="row py-5 p-4 bg-white rounded shadow-sm">
						<div class="col-lg-6">
							<div
								class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
							<div class="p-4">
								<div class="input-group mb-4 border rounded-pill p-2">
									<input type="text" placeholder="Voucher..."
										aria-describedby="button-addon3" class="form-control border-0">
									<div class="input-group-append border-0">
										<button id="button-addon3" type="button"
											class="btn btn-primary px-4 rounded-pill">
											<i class="fa fa-gift mr-2"></i>USE
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div
								class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Summary</div>
							<div class="p-4">
								<ul class="list-unstyled mb-4">
									<li class="d-flex justify-content-between py-3 border-bottom"><strong
										class="text-muted">SubTotal</strong><strong>$
											${amount} </strong></li>
									<li class="d-flex justify-content-between py-3 border-bottom"><strong
										class="text-muted">Shipping</strong><strong>Free ship</strong></li>
									<li class="d-flex justify-content-between py-3 border-bottom"><strong
										class="text-muted">Grand Total</strong>
										<h5 class="font-weight-bold">$ ${amount}</h5></li>
								</ul>
								<a href="buy"
									class="btn btn-success rounded-pill py-2 btn-block">PAY NOW</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>
</html>