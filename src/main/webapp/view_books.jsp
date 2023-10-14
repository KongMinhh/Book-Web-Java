<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Books</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
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
				<div class="header__cart">
					<i class="fa-regular fa-cart-shopping header__icon"></i> <span
						class="header__label">Giỏ Hàng</span>
				</div>
				<!-- Account -->
				<div class="header__account">
					<i class="fa-regular fa-user header__icon"></i> <span
						class="header__label">Tài Khoản</span>
					<div class="header-account__login">
						<a class="btn btn-primary btn-lg" href="./login.jsp">Đăng nhập</a>
						<a class="btn btn-outline-primary btn-lg" href="./register.jsp">Đăng
							ký</a>
					</div>
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
	<!-- * * * * * * View Books * * * * * * * *  -->
	<%
		int bid = Integer.parseInt(request.getParameter("bid"));
		BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
		BookDtls b = dao.getBookById(bid);
	%>


	<section class="view-book">
		<div class="container book-inner">
			<div class="row">
				<!-- View Media -->
				<div class="col col-lg-5 col-12">
					<figure class="view-book__media">
						<img class="view-book__img" src="./book/<%=b.getPhotoName()%>"
							alt="Book" />
					</figure>
				</div>
				<!-- View Product -->
				<div class="col col-lg-7 col-12">
					<section class="view-book__content">
						<h1 class="view-book__heading">
							Tên Sách: <span class="view-book__sub"><%=b.getBookName()%></span>
						</h1>
						<p class="view-book__title">
							Tên Tác Giả: <span class="view-book__sub"><%=b.getAuthor()%></span>
						</p>
						<p class="view-book__title">
							Loại Sách: <span class="view-book__sub"><%=b.getBookCategory()%></span>
						</p>
						<div class="view-book__contact">
							<%
							if("Old".equals(b.getBookCategory())) {
							%>	
							<h2 class="view-book__seller">Liên hệ:</h2>
							<a href="mailto: <%=b.getEmail() %>@gmail.com" class="view-book__link"><%=b.getEmail() %></a>
							<%	
							}
							%>
							
						</div>
						<h3 class="view-book__pay">Phương thức thanh toán</h3>
						<!-- Payment  -->
						<div class="view-book__payment-list">
							<div class="view-book__item">
								<i class="fa-regular fa-money-bill-wave"></i> <span
									class="view-book__desc">Thanh toán khi giao hàng</span>
							</div>
							<div class="view-book__item">
								<i class="fa-regular fa-arrow-rotate-left"></i> <span
									class="view-book__desc">Trả hàng</span>
							</div>
							<div class="view-book__item">
								<i class="fa-regular fa-truck-bolt"></i> <span
									class="view-book__desc">Giao hàng miễn phí</span>
							</div>
						</div>
						<!-- CTA -->
						<div class="view-book__btn">
							<a href="#!" class="btn btn-outline-primary btn-xxl"> <i
								class="fa-solid fa-cart-plus"></i>
								Thêm vào giỏ hàng
							</a> <a href="#!" class="btn btn-primary"> <i
								class="fa-solid fa-bag-shopping"></i> <span
								class="view-book__price">90000 đ</span>
							</a>
						</div>
					</section>
				</div>
			</div>
		</div>
	</section>
	<!-- * * * * Footer * * * -->
	<%@include file="all_component/footer.jsp"%>
</body>
</html>