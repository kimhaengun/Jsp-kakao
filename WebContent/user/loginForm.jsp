<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
	<div class="container body_container">
		<div class="main_container">
			<section class="left_container">
				<div>
					<p class="left_title">카카오계정 하나로 충분합니다.</p>
					<p class="left_content">
						Kakao의 모든 서비스 뿐 아니라 Melon, Daum등 다른 다양한 서비스까지<br>이제 카카오계정으로
						이용해 보세요!
					</p>
				</div>
				<img alt="login"
					src="<%=request.getContextPath()%>/image/login_banner.png"
					width="540">
			</section>
			<section class="right_container">
				<div class="login">
					<div class="login__box">
						<a style="font-size: 50px">kakao</a>
						<div class="login_form">
							<form action="/kakao/user?cmd=login" method="post">
								<input type="text" name="username" placeholder="카카오메일 아이디, 이메일, 전화번호" required/><br />
								<input type="text" name="password" placeholder="비밀번호" required><br />

						</div>
						<div>
							<p>로그인 상태 유지</p>
						</div>
						<button class="login__btn">로그인</button>
						<div class="login__or">
							<hr>
							<p>또는</p>
							<hr>
						</div>
						<button class="qr__btn">QR코드 로그인</button>
							</form>
						<div class="join__form">
							<a class="footer__container__text" href="<%=request.getContextPath()%>/user?cmd=joinForm">회원가입</a>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- main container end -->
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