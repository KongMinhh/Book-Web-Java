<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All New Book</title>
<%@include file="all_component/allCss.jsp"%>

</head>
<body>
	<%
		User u = (User) session.getAttribute("userobj");
	%>
	<c:if test="${not empty addCart }">
		<div id="toast">${addCart}</div>
		<script type="text/javascript">
			const toast = document.querySelector('#toast');
			showToast("${addCart}");
			function showToast(content) {
				toast.classList.add('display');
				toast.innerHTML = content;
				setTimeout(function() {
					toast.remove('display');
				}, 2000);
			}
		</script>
		
		<c:remove var="addCart" scope="session"/>
	</c:if>



	<!-- * * * Header * * * -->
	<%@include file="all_component/header.jsp"%>

	<!-- Book New -->
	<section class="book-new">
		<div class="container book-inner">
			<h2 class="section-heading section-gardient">Sách Mới</h2>
			<div class="row row-cols-lg-5 row-cols-md-2 row-cols-sm-1">
				<%
					BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
					List<BookDtls> list = dao.getAllNewBook();
					for (BookDtls b : list) {
				%>
				<!-- Item  -->
				<div class="col">
					<article class="book-item">
						<figure class="book-item__img">
							<a href="#!"> <img src="./book/<%=b.getPhotoName()%>"
								alt="Book" />
							</a>
							<a href="./view_books.jsp" class="btn btn-gray btn-md btn-more">Xem
								Thêm</a>
							<span class="book-label-new"><%=b.getBookCategory()%></span>
						</figure>
						<div class="book-item__body">
							<h3 class="book-item__name line-clamp"><%=b.getBookName()%></h3>
							<p class="book-item__author"><%=b.getAuthor()%></p>
							<div class="book-item__prices">
								<span class="book-item__new"><%=b.getPrice()%> đ</span> <span
									class="book-item__old">189.000 đ</span>
							</div>
							<div class="book-items__stars">
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
							<%
								if (u == null) {
							%>
							<a href="./login.jsp"
								class="btn btn-outline-primary btn-sm btn-book"> <i
								class="fa-regular fa-basket-shopping"></i> Chọn mua
							</a>
							<%
								} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-outline-primary btn-sm btn-book"> <i
								class="fa-regular fa-basket-shopping"></i> Chọn mua
							</a>
							<%
								}
							%>
						</div>
					</article>
				</div>
				<%
					}
				%>

			</div>
		</div>
	</section>

	<!-- * * * * Footer * * * -->
	<%@include file="all_component/footer.jsp"%>
	<!-- * * * * * SLICK SLIDER * * * * * -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('.hero__left')
									.slick(
											{
												arrows : true,
												dots : true,
												autoplay : true,
												autoplaySpeed : 2000,
												prevArrow : "<button type='button' class='slick-prev pull-left'><i class='fa-regular fa-angle-left' aria-hidden='true'></i></button>",
												nextArrow : "<button type='button' class='slick-next pull-right'><i class='fa-regular fa-angle-right' aria-hidden='true'></i></button>",
											});
							$('.book-new__img').slick({
								arrows : false,
								dots : false,
								autoplay : true,
								speed : 500,
								fade : true,
								cssEase : 'linear',
							});
						});
	</script>
</body>
</html>