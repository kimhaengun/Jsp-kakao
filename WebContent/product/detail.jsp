<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<div class="flex__center">
		<div style="width: 100%">
			<div class="flex__center">
				<img src="<%=request.getContextPath()%>/image/${dto.id}title.jpg"
					width="50%">
			</div>

			<div class="flex__center" style="font-size: 40px; font-weight: 800">
				<p>${dto.productname}</p>
			</div>
			<div class="flex__center" style="font-size: 30px; font-weight: 500">
				<p>${dto.price}원</p>
			</div>
			<div class="flex__center" style="font-size: 25px;">
				<a>${dto.productcontent}</a>
			</div>
			<div class="flex__center">
				<img src="<%=request.getContextPath()%>/image/${dto.id}content.jpg"
					width="100%">
			</div>
			<nav class="navbar navbar-expand-sm bg-danger navbar-dark fixed-bottom d-flex justify-content-center">
				<a class="navbar-brand" href="/kakao/order?cmd=orderForm&userId=${principal.id}&productId=${dto.id}">주문하기</a>
			</nav>
		</div>
	</div>
	<!-- About Section -->
	<div class="w3-container w3-padding-32 w3-center" style="margin-bottom: 30px">
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
</div>
</body>
</html>