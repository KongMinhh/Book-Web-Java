<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Book New -->
<section class="book-new">
	<div class="container book-inner">
		<h2 class="section-heading section-gardient">Sách Mới</h2>
		<figure class="book-new__img">
			<img src="./img/banner-book-new-01.jpg" alt="Book new" />
			<img src="./img/banner-book-new-02.jpg" alt="Book new" />
			<img src="./img/banner-book-new-03.jpg" alt="Book new" />
			<img src="./img/banner-book-new-04.jpg" alt="Book new" />
		</figure>
		<div class="row row-cols-lg-5 row-cols-md-2 row-cols-sm-1">
			<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getNewBook();
				for (BookDtls b : list) {
			%>
			<!-- Item 1 -->
			<div class="col">
				<article class="book-item">
					<figure class="book-item__img">
						<a href="#!"> <img src="./book/<%=b.getPhotoName()%>"
							alt="Book" />
						</a>
						<a href="./view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-gray btn-md btn-more">Xem Thêm</a>
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

		<div class="book-more">
			<a href="./all_new_book.jsp" class="btn btn-outline-primary btn-lg">Xem Thêm</a>
		</div>
	</div>
</section>