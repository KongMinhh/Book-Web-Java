<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Page</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<!-- * * * * * * Header Search * * * * * *  -->
	<header class="header">

		<div class="container">
			<div class="header__inner">
				<!-- Header logo -->
				<a href="/Book-Web" class="header__logo"> <svg width="53"
						height="53" viewBox="0 0 24 18" fill="none"
						xmlns="http://www.w3.org/2000/svg">
              <path
							d="M12.75 2.46034C13.731 1.51391 15.423 1.24331 17.418 1.42738C19.269 1.59771 21.1725 2.14578 22.5 2.65403V16.2845C21.123 15.8038 19.3395 15.334 17.5695 15.1719C15.9285 15.0194 14.1525 15.1183 12.75 15.8477V2.46034ZM12 1.21858C10.5225 0.0551221 8.3805 -0.117955 6.4305 0.0606166C4.1595 0.270782 1.8675 0.983694 0.4395 1.57847C0.308474 1.63305 0.197363 1.72099 0.119432 1.83182C0.0415 1.94264 3.98571e-05 2.07166 0 2.20348L0 17.3134C3.4743e-05 17.4283 0.0315557 17.5414 0.0916756 17.6422C0.151796 17.7431 0.238593 17.8285 0.344116 17.8907C0.44964 17.9529 0.570517 17.9899 0.695675 17.9982C0.820833 18.0065 0.946271 17.986 1.0605 17.9384C2.3835 17.3889 4.515 16.7282 6.5805 16.5373C8.694 16.3422 10.4655 16.6568 11.415 17.7419C11.4853 17.8222 11.5743 17.8869 11.6756 17.9314C11.7768 17.9759 11.8877 17.999 12 17.999C12.1123 17.999 12.2232 17.9759 12.3244 17.9314C12.4257 17.8869 12.5147 17.8222 12.585 17.7419C13.5345 16.6568 15.306 16.3422 17.418 16.5373C19.485 16.7282 21.618 17.3889 22.9395 17.9384C23.0537 17.986 23.1792 18.0065 23.3043 17.9982C23.4295 17.9899 23.5504 17.9529 23.6559 17.8907C23.7614 17.8285 23.8482 17.7431 23.9083 17.6422C23.9684 17.5414 24 17.4283 24 17.3134V2.20348C24 2.07166 23.9585 1.94264 23.8806 1.83182C23.8026 1.72099 23.6915 1.63305 23.5605 1.57847C22.1325 0.983694 19.8405 0.270782 17.5695 0.0606166C15.6195 -0.119329 13.4775 0.0551221 12 1.21858Z"
							fill="#C92127" ;
              />
            </svg> <span class="header__sologan">BOOKFAIR</span>
				</a>
				<!-- Search form -->
				<form action="" class="header__search-form">
					<input type="text" class="header__search-input"
						placeholder="Tìm kiếm sách mong muốn... " />
					<!-- Button submit -->
					<button type="submit" class="btn header__btn-search">
						<i class="fa-regular fa-magnifying-glass"></i>
					</button>
					<!-- Button clear -->
					<button type="reset" class="header__btn-clear">
						<i class="fa-regular fa-xmark"></i>
					</button>
				</form>
				<!-- Notification -->
				<div class="header__notification">
					<i class="fa-sharp fa-regular fa-bell header__icon"></i> <span
						class="header__label">Thông Báo</span>
				</div>
				<!-- Cart -->
				<c:if test="${not empty userobj}">
					<a href="cart.jsp" class="header__cart"> <i
						class="fa-regular fa-cart-shopping header__icon"></i> <span
						class="header__label">Giỏ Hàng</span>
					</a>
				</c:if>
				<c:if test="${empty userobj}">
					<a href="" class="header__cart"> <i
						class="fa-regular fa-cart-shopping header__icon"></i> <span
						class="header__label">Giỏ Hàng</span>
					</a>
				</c:if>




				<!-- Account -->


				<div class="header__account">
					<i class="fa-regular fa-user header__icon"></i> <span
						class="header__label">Tài Khoản</span>

					<c:if test="${not empty userobj}">
						<div class="header-account__login">
							<a class="btn btn-primary btn-lg" href="./login.jsp">${userobj.name}</a>
							<a class="btn btn-outline-primary btn-lg" href="./register.jsp">Đăng
								xuất</a>
						</div>
					</c:if>

					<c:if test="${empty userobj}">
						<div class="header-account__login">
							<a class="btn btn-primary btn-lg" href="./login.jsp">Đăng
								nhập</a> <a class="btn btn-outline-primary btn-lg"
								href="./register.jsp">Đăng ký</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</header>
	<!-- * * * * * * Header Navigation * * * * * * -->
	<header class="header-menu">
		<div class="container">
			<div class="header-menu__inner">
				<!-- Logo -->

				<a href="#!" class="header-menu__logo"> <i
					class="fa-regular fa-book"></i>
				</a>

				<!-- Navigation -->
				<nav class="navbar">
					<ul class="navbar__list">
						<li class="navbar__item"><a href="#!" class="navbar__link"
							navbar-link="Home">Home</a></li>
						<li class="navbar__item"><a href="#!" class="navbar__link"
							navbar-link="Sách gần đây">Sách gần đây </a></li>
						<li class="navbar__item"><a href="#!" class="navbar__link"
							navbar-link="Sách mới">Sách mới </a></li>
						<li class="navbar__item"><a href="#!" class="navbar__link"
							navbar-link="Sách cũ">Sách cũ </a></li>
					</ul>
				</nav>
				<!-- Setting -->
				<div class="header-menu__setting">
					<button class="btn btn-sm">Cài Đặt</button>
					<button class="btn btn-sm">Liên hệ</button>
				</div>
			</div>
		</div>
	</header>

	<main> <!-- View Car -->
	<section class="cart-view">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="cart-view__wrap">
						<h1 class="section-heading">Sản Phẩm Bạn Đã Chọn</h1>
						<div class="cart-view__inner">
							<table class="table-all-book table-orders-book">
								<!-- Message -->
								<c:if test="${not empty succMsg}">
									<p class="alert alert--success">${succMsg }</p>
									<c:remove var="succMsg" scope="session" />
								</c:if>
								<c:if test="${not empty failedMsg}">
									<p class="alert alert--error">${failedMsg }</p>
									<c:remove var="failedMsg" scope="session" />
								</c:if>

								<thead>
									<tr>
										<th>Tên Sách</th>
										<th>Tên Tác Giả</th>
										<th>Giá</th>
										<th>Sửa</th>
									</tr>
								</thead>
								<tbody>

									<%
										User u = (User) session.getAttribute("userobj");
										CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
										List<Cart> cart = dao.getBooKByUser(u.getId());
										Double totalPrice = 0.00;
										for (Cart c : cart) {
											totalPrice = c.getTotalPrice();
									%>
									<!-- Row 1 -->
									<tr>
										<th><%=c.getBookName()%></th>
										<td><%=c.getAuthor()%></td>
										<td><%=c.getPrice()%></td>
										<td><a
											href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>&&cid=<%=c.getCid()%>"
											class="btn btn-primary btn-xs">Xóa</a></td>
									</tr>
									<%
										}
									%>

									<!-- Row 1 -->
									<tr
										style="color: var(- -primary-color); font-weight: 700; font-size: 1.7rem">
										<th>Tổng Thành Tiền</th>
										<td></td>
										<td colspan="2"><%=totalPrice%></td>
									</tr>


								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="cart-view__wrap">
						<div class="cart-view__order">
							<h1 class="section-heading">Chi Tiết Đơn Đặt Hàng</h1>
							<form action="order" method="post" autocomplete="off">
								<input type="hidden" value="${userobj.id}" name="id">
								<div class="form-group-horizontal">
									<!-- User -->
									<div class="form-group">
										<label for="cart-user" class="form-label">Tên</label> <input
											type="text" id="cart-user" class="form-input"
											value="${userobj.name }" name="username" required />
									</div>
									<!-- Email -->
									<div class="form-group">
										<label for="cart-email" class="form-label">Email</label> <input
											type="text" id="cart-email" class="form-input"
											value="${userobj.email }" name="email" required />
									</div>
								</div>

								<div class="form-group-horizontal">
									<!-- Phone -->
									<div class="form-group">
										<label for="cart-phone" class="form-label">Số Điện
											Thoại</label> <input type="text" id="cart-phone" class="form-input"
											value="${userobj.phone }" name="phone" required />
									</div>
									<!-- Address -->
									<div class="form-group">
										<label for="cart-address" class="form-label">Địa Chỉ</label> <input
											type="text" id="cart-address" class="form-input"
											name="address"  required/>
									</div>
								</div>

								<div class="form-group-horizontal">
									<!-- Landmark -->
									<div class="form-group">
										<label for="cart-landmark" class="form-label">Quận</label> <input
											type="text" id="cart-landmark" class="form-input"
											name="landmark" required />
									</div>
									<!-- City -->
									<div class="form-group">
										<label for="cart-address" class="form-label">Thành Phố</label>
										<input type="text" id="cart-address" class="form-input"
											name="city" required />
									</div>
								</div>

								<div class="form-group-horizontal">
									<!-- State -->
									<div class="form-group">
										<label for="cart-state" class="form-label">Phường</label> <input
											type="text" id="cart-state" class="form-input" name="state"  required/>
									</div>
									<!-- Code -->
									<div class="form-group">
										<label for="cart-code" class="form-label">Mã Bưu Điện
										</label> <input type="text" id="cart-code" class="form-input"
											name="pincode" required />
									</div>
								</div>
								<!-- Payment  -->
								<div class="form-group">
									<label for="cart-paymet" class="form-label">Phương thức
										thanh toán</label> <select required id="cart-payment" name="payment">
										<option value="noselect">--- Chọn phương thức thanh
											toán ---</option>
										<option value="COD">Thanh toán khi giao hàng</option>
									</select>
								</div>
								<!-- Submit -->
								<div class="form-group-submit">
									<a href="./index.jsp" class="btn btn-outline-primary btn-xs">
										Quay Lại </a>
									<button type="submit" class="btn btn-yellow btn-xs">
										Đặt Sách</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	</main>
	<!-- * * * * Footer * * * -->
	<%@include file="all_component/footer.jsp"%>

</body>
</html>