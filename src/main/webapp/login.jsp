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
	<!-- * * * * Login * * * * -->
	<main>
	<div class="register">
		<!-- * * * * Media * * * * *   -->
		<figure class="register__media">
			<img class="login-img" src="./img/login-decor.png" alt="decor">
		</figure>
		<!-- * * * register form * * *  -->
		<div class="register-form">
			<h1 class="register__heading login__heading">Đăng nhập</h1>
			<form action="login" method="post" autocomplete="off">
				<!-- Email -->
				<div class="form-group">
					<label for="email" class="form-label">Email</label> <input
						type="text" id="email" name="email" class="form-input"
						placeholder="nguyenvana@gmail.com" />
					<p class="form-error">Vui lòng nhập trường này</p>
				</div>
				<!-- Password -->
				<div class="form-group">
					<label for="password" class="form-label">Mật Khẩu</label> <input
						type="password" name="password" id="password" class="form-input" />
					<p class="form-error">Vui lòng nhập trường này</p>
				</div>
				<!-- Message -->
				<c:if test="${not empty failedMsg}">
					<p class="message message-error">${failedMsg}</p>
					<c:remove var="failedMsg" scope="session" />
				</c:if>
				<c:if test="${not empty succMsg}">
					<p class="message message-success">${succMsg}</p>
					<c:remove var="succMsg" scope="session" />
				</c:if>
				<!-- Submit -->
				<div class="btn-submit">
					<a href="./register.jsp" class="btn btn-outline-primary">Tạo
						tài khoản</a>
					<button class="btn btn-primary" type="submit">Đăng nhập</button>
				</div>
			</form>
		</div>
	</div>
	</main>
</body>
</html>