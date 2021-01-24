<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.navb_container {
	margin-left: 150px;
	margin-right: 150px;
}

.body_container {
	margin-bottom: 100px;
}

.main_container {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 180px;
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
	margin-top: -100px;
	border: 1px solid rgb(210, 210, 210);
	max-width: 480px;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 420px;
	height: 556px;
}

.login {
	margin-top: -50px;
	width: 80%;
	height: 80%;
	width: 80%;
}

.login__box {
	display: block;
}

.login_form {
	margin-top: 10px;
	margin-bottom: 20px;
}

.login_form input {
	width: 100%;
	height: 40px;
	margin-bottom: 5px;
	border: 1px solid rgb(210, 210, 210);
}

.login__btn {
	margin: 10px 0;
	background-color: #FEE500;
	width: 100%;
	height: 50px;
	color: black;
	border-radius: 6px; /* 테두리굴곡*/
	border: 0;
	font-weight: 600;
	height: 50px;
}

.qr__btn {
	margin: 10px 0;
	background-color: #E7E7E7;
	width: 100%;
	height: 50px;
	color: black;
	border-radius: 6px; /* 테두리굴곡*/
	border: 0;
	font-weight: 600;
}

.login__or {
	display: flex;
}

.join__form {
	margin-top: 30px;
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

.join__container {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 50px;
	margin-left: -100px;
}

.hd__container {
	display: flex;
	justify-content: center;
}

.main__title {
	font-size: 40px;
	font-weight: bolder;
}

.join__box {
	border: 1px solid rgb(210, 210, 210);
	padding: 70px;
	width: 650px;
	height: 750px;
	margin-bottom: 20px;
}

.join__box__impotext {
	font-size: 13px;
	font-weight: 800;
}

.join__box__input {
	width: 100%;
	height: 40px;
	font-size: 20px;
}

.join__box__content p {
	font-size: 13px;
	color: gray;
	font-weight: 800;
}

.join__box__common {
	margin-top: 30px;
}

.join__box__btn {
	margin-top: 10px;
	display: flex;
	justify-content: flex-end;
}

.join__box__success {
	width: 80px;
	height: 40px;
	border-radius: 6px;
	background-color: #007BEE;
	color: white;
	border: 0;
}
.order__box{
	display: block;
	margin-top: -100px;
}
.order__box__title{
	font-size: 25px;
	font-weight: 800;
}
.order__box__content{
	font-size:18px;
	display: flex;
	justify-content: space-between;
	margin-bottom: 5px;
}
.order__box__content__bord{
	font-size: 18px; 
	font-weight: 600;
}
.order__section__one{
	display: flex;
}
.order__section__order{
	width: 70%;
}
.order__section__two{
	margin-top: 10px;
	margin-bottom: 15px;
}
.order__box__input{
	margin-top:10px;
	width: 100%;
	height: 40px;
	font-size: 20px;
}
</style>

</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-sm bg-white fixed-top navb_container">
		<div class="container d-flex justify-content-between"
			style="height: 30px;">
			<!-- Links -->
			<div>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
				</ul>
			</div>

			<div>
				<!-- Navbar text-->
				<span class="navbar-text navbar-brand mb-0 h1"
					style="font-weight: 900;"> 캐릭터 </span>
			</div>
			<div>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
					<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
				</ul>
			</div>

		</div>
	</nav>
	<!-- Narvar End -->