<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Orders</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
.table-all-book th, .table-all-book td {
	padding: 17px;
}
</style>
</head>
<body>
	<!-- Header -->
	<%@include file="header.jsp"%>
	<div class="bg-white">
		<h1 class="section-heading section-gardient header-admin-heading">Xin
			chào, Admin</h1>
	</div>


	<!-- Orders Book -->
	<section class="order-book">
		<div class="container">
			<table class="table-all-book table-orders-book">
				<thead>
					<tr>
						<th>Mã Đơn Hàng</th>
						<th>Tên Khách Hàng</th>
						<th>Email</th>
						<th>Địa Chỉ</th>
						<th>Số Điện Thoại</th>
						<th>Tên Sách</th>
						<th>Tên Tác Giả</th>
						<th>Giá</th>
						<th>Phương thức thanh toán</th>
					</tr>
				</thead>
				<tbody>
					<!-- Row 1 -->
					<tr>
						<th>1</th>
						<td>Đắc Nhân Tâm</td>
						<td>Dale Carnegie</td>
						<td>41.600</td>
						<td>New</td>
						<td>Còn Hàng</td>
						<td>Minh</td>
						<td>140000</td>
						<td>Cod</td>
					</tr>
					<!-- Row 2-->
					<tr>
						<th>2</th>
						<td>Đắc Nhân Tâm</td>
						<td>Dale Carnegie</td>
						<td>41.600</td>
						<td>New</td>
						<td>Còn Hàng</td>
						<td>Minh</td>
						<td>140000</td>
						<td>Cod</td>
					</tr>
					<!-- Row 3 -->
					<tr>
						<th>3</th>
						<td>Đắc Nhân Tâm</td>
						<td>Dale Carnegie</td>
						<td>41.600</td>
						<td>New</td>
						<td>Còn Hàng</td>
						<td>Minh</td>
						<td>140000</td>
						<td>Cod</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
	<!-- Footer  -->
	<footer class="footer">
		<div class="container">
			<div class="footer__inner">
				<div class="row">
					<div class="col-lg-4">
						<section class="footer__column">
							<!-- Logo -->
							<a href="#!" class="footer__logo"> <svg width="53"
									height="53" viewBox="0 0 24 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
                    <path
										d="M12.75 2.46034C13.731 1.51391 15.423 1.24331 17.418 1.42738C19.269 1.59771 21.1725 2.14578 22.5 2.65403V16.2845C21.123 15.8038 19.3395 15.334 17.5695 15.1719C15.9285 15.0194 14.1525 15.1183 12.75 15.8477V2.46034ZM12 1.21858C10.5225 0.0551221 8.3805 -0.117955 6.4305 0.0606166C4.1595 0.270782 1.8675 0.983694 0.4395 1.57847C0.308474 1.63305 0.197363 1.72099 0.119432 1.83182C0.0415 1.94264 3.98571e-05 2.07166 0 2.20348L0 17.3134C3.4743e-05 17.4283 0.0315557 17.5414 0.0916756 17.6422C0.151796 17.7431 0.238593 17.8285 0.344116 17.8907C0.44964 17.9529 0.570517 17.9899 0.695675 17.9982C0.820833 18.0065 0.946271 17.986 1.0605 17.9384C2.3835 17.3889 4.515 16.7282 6.5805 16.5373C8.694 16.3422 10.4655 16.6568 11.415 17.7419C11.4853 17.8222 11.5743 17.8869 11.6756 17.9314C11.7768 17.9759 11.8877 17.999 12 17.999C12.1123 17.999 12.2232 17.9759 12.3244 17.9314C12.4257 17.8869 12.5147 17.8222 12.585 17.7419C13.5345 16.6568 15.306 16.3422 17.418 16.5373C19.485 16.7282 21.618 17.3889 22.9395 17.9384C23.0537 17.986 23.1792 18.0065 23.3043 17.9982C23.4295 17.9899 23.5504 17.9529 23.6559 17.8907C23.7614 17.8285 23.8482 17.7431 23.9083 17.6422C23.9684 17.5414 24 17.4283 24 17.3134V2.20348C24 2.07166 23.9585 1.94264 23.8806 1.83182C23.8026 1.72099 23.6915 1.63305 23.5605 1.57847C22.1325 0.983694 19.8405 0.270782 17.5695 0.0606166C15.6195 -0.119329 13.4775 0.0551221 12 1.21858Z"
										fill="#C92127";=""
                    ></path>
                  </svg> <span class="header__sologan">BOOKFAIR</span>
							</a>
							<!-- Address -->
							<p class="footer__address">Km 10, Đường Nguyễn Trãi, Quận
								Thanh Xuân , TP Hà Nội, Việt Nam</p>
							<p class="footer__info">Bookfair.com nhận đặt hàng trực tuyến
								và giao hàng tận nơi. KHÔNG hỗ trợ đặt mua và nhận hàng trực
								tiếp tại văn phòng cũng như tất cả Hệ Thống Bookfair trên toàn
								quốc.</p>
							<a href="#!"> <img class="footer__img-checked"
								src="../img/footer__checked.png" alt="Checked" />
							</a>
							<!-- Social -->
							<div class="footer__socials">
								<a href="#!" class="footer__social-icon"> <i
									class="fa-brands fa-facebook-f"></i>
								</a> <a href="#!" class="footer__social-icon"> <i
									class="fa-brands fa-instagram"></i>
								</a> <a href="#!" class="footer__social-icon"> <i
									class="fa-brands fa-youtube"></i>
								</a> <a href="#!" class="footer__social-icon"> <i
									class="fa-brands fa-tumblr"></i>
								</a> <a href="#!" class="footer__social-icon"> <i
									class="fa-brands fa-twitter"></i>
								</a> <a href="#!" class="footer__social-icon"> <i
									class="fa-brands fa-pinterest-p"></i>
								</a>
							</div>
							<!-- Link -->
							<div class="footer__links">
								<a href="#!"> <img src="../img/gg-play.png"
									alt="Google Play" />
								</a> <a href="#!"> <img src="../img/appstore.png" alt="Appstore" />
								</a>
							</div>
						</section>
					</div>
					<div class="col-lg-8">
						<div class="row">
							<!-- Item 1 -->
							<div class="col-lg-4">
								<article class="footer__wrapp">
									<h3 class="footer__title">DỊCH VỤ</h3>
									<ul class="footer__list">
										<li class="footer__item"><a href="#!"
											class="footer__link">Điều khoản sử dụng</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Chính sách bảo mật thông tin cá nhân</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Chính sách bảo mật thanh toán</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Giới thiệu Bookfair</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Hệ thống trung tâm - nhà sách</a></li>
									</ul>
								</article>
							</div>
							<!-- Item 2 -->
							<div class="col-lg-4">
								<article class="footer__wrapp">
									<h3 class="footer__title">HỖ TRỢ</h3>
									<ul class="footer__list">
										<li class="footer__item"><a href="#!"
											class="footer__link">Chính sách đổi - trả - hoàn tiền</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Chính sách bảo hành - bồi hoàn</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Chính sách vận chuyển</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Chính sách khách sỉ</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Phương thức thanh toán và xuất HĐ</a></li>
									</ul>
								</article>
							</div>
							<!-- Item 3 -->
							<div class="col-lg-4">
								<article class="footer__wrapp">
									<h3 class="footer__title">TÀI KHOẢN CỦA TÔI</h3>
									<ul class="footer__list">
										<li class="footer__item"><a href="#!"
											class="footer__link">Đăng nhập/Tạo mới tài khoản</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Thay đổi địa chỉ khách hàng</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Chi tiết tài khoản</a></li>
										<li class="footer__item"><a href="#!"
											class="footer__link">Lịch sử mua hàng</a></li>
									</ul>
								</article>
							</div>
						</div>
						<h3 class="footer__title footer__contact">LIÊN HỆ</h3>
						<div class="row footer__about">
							<!-- Item 1-->
							<div class="col-lg-4">
								<span class="footer__text"> <i
									class="fa-sharp fa-solid fa-location-dot"></i> Thanh Xuân, Hà
									Nội
								</span>
							</div>
							<!-- Item 2-->
							<div class="col-lg-4">
								<a href="mailto: cskh@bookfair.com.vn" class="footer__email">
									<i class="fa-solid fa-envelope"></i> cskh@bookfair.com.vn
								</a>
							</div>
							<!-- Item 3-->
							<div class="col-lg-4">
								<a href="tel: +1900636467" class="footer__phone"> <i
									class="fa-sharp fa-solid fa-phone"></i> 1900636467
								</a>
							</div>
						</div>
						<div class="footer__delivery">
							<img src="../img/vnpost1.png" alt="Delivery" /> <img
								src="../img/ahamove_logo3.png" alt="Delivery" /> <img
								src="../img/icon_giao_hang_nhanh1.png" alt="Delivery" /> <img
								src="../img/icon_snappy1.png" alt="Delivery" /> <img
								src="../img/Logo_ninjavan.png" alt="Delivery" /> <img
								src="../img/vnpay_logo.png" alt="Delivery" /> <img
								src="../img/ZaloPay-logo.png" alt="Delivery" /> <img
								src="../img/momopay.png" alt="Delivery" /> <img
								src="../img/shopeepay_logo.png" alt="Delivery" /> <img
								src="../img/logo_moca.jpg" alt="Delivery" />
						</div>
					</div>
				</div>
				<p class="footer__copy">Giấy chứng nhận Đăng ký Kinh doanh số
					0304132047 do Sở Kế hoạch và Đầu tư Thành phố Hà Nội cấp ngày
					9/9/2023, đăng ký thay đổi lần thứ 10, ngày 10/10/2023.</p>
			</div>
		</div>
	</footer>
</body>
</html>