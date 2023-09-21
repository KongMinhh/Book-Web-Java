<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookFair: Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<!-- * * * * Register * * * * -->
	<main>
	<div class="register">
		<!-- * * * * Media * * * * *   -->
		<figure class="register__media">
			<!-- Logo -->
			<div class="register__logo">
				<img width="150" src="./img/book-decor.png" alt="book-decor" /> <span
					class="register__sologan">BookFair</span>
			</div>
			<!-- Decor -->
			<img class="register__decor" src="./img/register-decor.png"
				alt="register" />
		</figure>
		<!-- * * * register form * * *  -->
		<div class="register-form">
			<h1 class="register__heading">Đăng ký</h1>
			<form action="register" method="post" autocomplete="off">
				<!-- Name -->
				<div class="form-group">
					<label for="name" class="form-label">Họ Tên</label> <input
						type="text" id="name" name="fname" class="form-input"
						placeholder="Nguyễn Văn A" />
					<p class="form-error">Vui lòng nhập trường này</p>
				</div>
				<!-- Email -->
				<div class="form-group">
					<label for="email" class="form-label">Email</label> <input
						type="text" id="email" name="email" class="form-input"
						placeholder="nguyenvana@gmail.com" />
					<p class="form-error">Vui lòng nhập trường này</p>
				</div>
				<!-- Phone -->
				<div class="form-group">
					<label for="phone" class="form-label">Số Điện Thoại</label> <input
						type="tel" id="phone" name="phone" class="form-input"
						placeholder="0123456789" />
					<p class="form-error">Vui lòng nhập trường này</p>
				</div>
				<!-- Phone -->
				<div class="form-group">
					<label for="password" class="form-label">Mật Khẩu</label> <input
						type="password" name="password" id="password" class="form-input" />
					<p class="form-error">Vui lòng nhập trường này</p>
				</div>
				<!-- Accect -->
				<div class="form-group form-checkbox">
					<input hidden type="checkbox" name="check" id="checked"
						class="form-input-checkbox" /> <label for="checked"
						class="form-label form-label-checkbox">Tôi chấp nhận các
						điều khoản và điều kiện và chính sách bảo mật </label>
				</div>
				<!-- Message -->
				<c:if test="${not empty succMsg}">
					<p class="message message-success">${succMsg}</p>
					<c:remove var="succMsg" scope="session"/>
				</c:if>
				
				<c:if test="${not empty failedMsg }">
					<p class="message message-error">${failedMsg}</p>
					<c:remove var="failedMsg" scope="session"/>
				</c:if>
				<!-- Submit -->
				<div class="btn-submit">
					<a href="./index.jsp" class="btn btn-outline-primary btn-xs">Quay
						Lại</a>
					<button class="btn btn-primary btn-xs" type="submit">Đăng
						ký</button>
				</div>
			</form>
		</div>
	</div>
	</main>
</body>
</html>