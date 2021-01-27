<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<!-- !PAGE CONTENT! -->
	<div class="w3-main w3-content w3-padding"
		style="max-width: 1200px; margin-top: 50px">
		<section>
			<img alt="login"
				src="<%=request.getContextPath()%>/image/Screenshot_3.jpg"
				width="100%">
		</section>
		<section class="flex__between">
			<p style="font-size: 18px; font-weight: 600;">총 개</p>
			<span class="flex">
			<div>
			<p style="margin-right: 10px; font-size: 20px;">글로벌 배송 가능상품 보기</p>
			</div>
			<div>
			<select name="">
				<option>신상품순</option>
				<option>판매량순</option>
				<option>낮은 가격순</option>
				<option>높은 가격순</option>
			</select>
			</div>
			</span>
		</section>
		<!-- Pagination -->
		<div class="container">
			<c:forEach var="product" items="${products}">
				<div class="card col-md-12 m-2">
					<div class="card-body">
						<img src="<%=request.getContextPath()%>/image/${product.image}"
							width="30%">
						<p class="list__product__productname">${product.productname}</p>
						<p class="list__product__price">${product.price}원</p>
					</div>
				</div>
			</c:forEach>

		</div>

		<div class="w3-center w3-padding-32">
			<div class="w3-bar">
				<a href="#" class="w3-bar-item w3-button w3-hover-black">«</a> <a
					href="#" class="w3-bar-item w3-black w3-button">1</a> <a href="#"
					class="w3-bar-item w3-button w3-hover-black">2</a> <a href="#"
					class="w3-bar-item w3-button w3-hover-black">3</a> <a href="#"
					class="w3-bar-item w3-button w3-hover-black">4</a> <a href="#"
					class="w3-bar-item w3-button w3-hover-black">»</a>
			</div>
		</div>

	</div>
	<!-- About Section -->
	<div class="w3-container w3-padding-32 w3-center ">
		<hr>
		<span class="footer__container">
			<ul class="footer__container__main">
				<li><a class="footer__container__text" href="#">이용약관</a></li>
				<li><a class="footer__container__text" href="#"
					style="font-weight: bold;">개인정보 처리방침</a></li>
				<li><a class="footer__container__text" href="#">운영정책</a></li>
				<li><a class="footer__container__text" href="#">고객센터</a></li>
				<li><a class="footer__container__text" href="#">공지사항</a></li>
				<li><a class="footer__container__text" href="#">한국어</a></li>
				<li><a class="footer__container__text" href="#">Copyright ©
						KaKao Corp. All rights reserved</a></li>
			</ul>
		</span>
	</div>


	</body>
	</html>