<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<main class="join__container">
	<div class="main__container">
		<div class="main__box">
			<section class="hd__container">
				<p class="main__title">kakao</p>
			</section>

			<section class="join__box">
				<div style="margin-top: -50px">
					<div class="join__box__email">
						<p style="font-size: 30px; font-weight: 400">카카오계정 정보를 입력해주세요</p>
						<p class="join__box__impotext">카카오계정 아이디</p>
						<input class="join__box__input" type="text" placeholder="아이디 입력">
						<div class="join__box__content">
							<p>입력한 카카오메일로 카카오계정에 로그인할 수 있습니다.</p>
							<p>한번 만든 카카오메일은 변경할 수 없으니, 오타가 없도록 신중히 확인해주세요.</p>
							<p>생성한 카카오메일로 카카오계정과 관련한 알림을 받아볼 수 있습니다.
						</div>
					</div>
					<div class="join__box__common">
						<p class="join__box__impotext">비밀번호</p>
						<input class="join__box__input" type="text" placeholder="비밀번호 입력">
					</div>
					<div class="join__box__common">
						<p class="join__box__impotext">이름</p>
						<input class="join__box__input" type="text" placeholder="이름 입력">
					</div>
					<div class="join__box__common">
						<p class="join__box__impotext">휴대폰번호</p>
						<input class="join__box__input" type="text" placeholder="휴대폰번호 입력">
					</div>
					<div class="join__box__common">
						<p class="join__box__impotext">주소</p>
						<input class="join__box__input" type="text" placeholder="주소 입력">
					</div>
					<div class="join__box__btn">
						<button class="join__box__success">회원가입</button>
					</div>
				</div>
			</section>
		</div>
	</div>
</main>
<!-- main end -->
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