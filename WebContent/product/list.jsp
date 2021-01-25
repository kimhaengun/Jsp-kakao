<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<!-- Pagination -->
		<div>
			<img src="<%=request.getContextPath()%>/image/">
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

