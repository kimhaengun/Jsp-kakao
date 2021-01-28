<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="body_container">
	<div class="main_container">
		<div class="order__box">
			<section>
				<p class="order__box__title">01 주문상품</p>
				<br>
				<div class="order__section__one">
					<img
						src="<%=request.getContextPath()%>/image/${dto.productId}title.jpg"
						width="20%">

					<div class="order__section__order"
						style="margin-left: 10px; margin-top: 30px; width: 100%">

						<div class="order__box__content">
							<p>${dto.productname}</p>
							<p>X머터리얼 아이콘</p>
						</div>

						<div class="order__box__content">
							<select name="count" style="width: 10%">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
							</select> <a>${dto.price}원</a>
						</div>

					</div>
				</div>
			</section>

			<hr>
			<br>
			<section>
				<div class="order__section__two">
					<div class="order__box__content">
						<a>상품가</a> <a>원</a>
					</div>
					<div class="order__box__content">
						<a>배송비</a> <a>3,000원</a>
					</div>
					<div class="order__box__content order__box__content__bord">
						<a>총합</a> <a>원</a>
					</div>
				</div>
			</section>
			<br> <br>
			<hr>
			<section>
				<br>
				<p class="order__box__title">02 배송지정보</p>
				<br>
				<div class="order__box__content">
					<p class="order__box__content__bord">받는분</p>
					<a>주문고객과 동일</a>
				</div>
				<input class="order__box__input" type="text"
					placeholder="${dto.usernickname}"> <input
					class="order__box__input" type="text" placeholder="${dto.phone}">
				<input class="order__box__input" type="text"
					placeholder="${dto.address}">
			</section>
			<br>
			<button>주문</button>

			<section></section>
		</div>
	</div>
</div>
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
</body>
</html>