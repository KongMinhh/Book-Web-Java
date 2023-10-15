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

	<!-- Home Poppup -->
	<div class="home-popup-overlay">
		<div class="home-popup-content ">
			<figure class="home-popup-img">
				<img alt="popuphome" src="./img/popuphome.png"">
				<button class="popup-home-close">
					<i class="fa-regular fa-xmark"></i>
				</button>
			</figure>
		</div>
	</div>

	<!-- * * * * * SLICK SLIDER * * * * * -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script defer type="text/javascript">
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
	<!-- Home Popup -->
	<script defer="defer" type="text/javascript">
		window
				.addEventListener(
						"load",
						function() {
							document.documentElement.style.overflow = 'hidden';
							setTimeout(
									function() {
										document
												.querySelector(".home-popup-overlay").style.display = "flex";
									}, 1000);
						});
		document
				.querySelector(".popup-home-close")
				.addEventListener(
						"click",
						function() {
							document.querySelector(".home-popup-overlay").style.display = "none";
							document.documentElement.style.overflow = 'auto';
						});
	</script>

	<script type="text/javascript">
	<!-- Start of Async Drift Code -->
		<script>
		"use strict";

		!function() {
			var t = window.driftt = window.drift = window.driftt || [];
			if (!t.init) {
				if (t.invoked)
					return void (window.console && console.error && console
							.error("Drift snippet included twice."));
						t.invoked = !0,
						t.methods = [ "identify", "config", "track", "reset",
								"debug", "show", "ping", "page", "hide", "off",
								"on" ],
						t.factory = function(e) {
							return function() {
								var n = Array.prototype.slice.call(arguments);
								return n.unshift(e), t.push(n), t;
							};
						},
						t.methods.forEach(function(e) {
							t[e] = t.factory(e);
						}),
						t.load = function(t) {
							var e = 3e5, n = Math.ceil(new Date() / e) * e, o = document
									.createElement("script");
							o.type = "text/javascript", o.async = !0,
									o.crossorigin = "anonymous",
									o.src = "https://js.driftt.com/include/"
											+ n + "/" + t + ".js";
							var i = document.getElementsByTagName("script")[0];
							i.parentNode.insertBefore(o, i);
						};
			}
		}();
		drift.SNIPPET_VERSION = '0.3.1';
		drift.load('huhx68zwe26h');

</body>
</html>