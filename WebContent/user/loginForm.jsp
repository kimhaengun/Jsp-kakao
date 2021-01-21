<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.body_container {
	margin-bottom: 100px;
}

.main_container {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 300px;
}

.left_container {
	margin-right: 50px;
	margin-top: -150px;
}

.left_title {
	font-size: 25px;
	color: #252525;
	font-weight: 550;
	font-family: 'Malgun Gothic';
}

.left_content {
	margin-top: 5px;
	font-size: 13px;
	line-height: 18px;
	color: #7c7c7c;
	font-weight: 600;
	font-family: 'Malgun Gothic';
}

.right_container {
	margin-top: -350px;
	border: 1px solid red;
	border-color: #7c7c7c;
	max-width: 480px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.test {
	padding: 100px;
}

.footer__container {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px;
	margin-top: -30px;
}

.footer__container__main {
	display: flex;
	flex-wrap: wrap;
	list-style: none;
}

.footer__container__text {
	color: grey;
	font-size: 13px;
	margin-right: 10px;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container body_container">
		<div class="main_container">
			<div class="left_container">
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
			</div>

			<div class="right_container">
				<div class="test">
					<div>kakao이미지</div>
					<div>카카오메일 아이디, 이메일, 전화번호</div>
					<div>비밀번호</div>
					<div>버튼</div>
					<div>회원가입</div>
				</div>
			</div>
		</div>
		<!-- main container end -->
	</div>
	<hr>
	<span class="footer__container">
		<ul class="footer__container__main">
			<li><a class="footer__container__text" href="#">이용약관</a></li>
			<li><a class="footer__container__text" href="#" style="font-weight: bold;">개인정보 처리방침</a></li>
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