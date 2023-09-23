<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Book Web</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%
		User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_component/header.jsp"%>

	<!-- Test Connection Mysql -->
	<%-- <% Connection conn=DBConnect.getConn();
	out.println(conn);
	%> --%>
	<!-- * * * * Main * * * * * -->
	<main> <!-- * * * * Recent * * * --> <%@include
		file="all_component/recent.jsp"%> <!-- * * * * New * * *  -->
	<%@include file="all_component/new.jsp"%> <!-- * * * * Old * * *  -->
	<%@include file="all_component/old.jsp"%> </main>
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