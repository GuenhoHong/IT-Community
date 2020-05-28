<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="/css/script.css">
<link rel="stylesheet" href="/css/sidebar.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
<!-- Compiled and minified Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Minified JS library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Compiled and minified Bootstrap JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<nav class="sidebar">

	<ul class="nav-list">
		<li>
		<div class="social-media">
			<c:if test = "${empty login }">
				<a href="/user/login" class="icon-link"> <i
					class="fas fa-sign-in-alt"></i></a>
			</c:if>
			<c:if test="${empty login }">
				<a href="/user/register" class="icon-link"> <i
				class="fas fa-user"></i></a>
			</c:if>
			
			<c:if test="${!empty login }">
				<a href="/user/logout" class="icon-link"> <i
				class="fas fa-sign-out-alt"></i></a>
			</c:if>	
		</div>
		</li>
		
		<li class="nav-item"><a href="/"
			class="nav-link current"> <i class="fas fa-home"></i>Home
		</a></li>

		<li class="nav-item"><a href="/freeBoard/freeList" class="nav-link"> <i
				class="fas fa-star"></i>자유게시판
		</a></li>
		<li class="nav-item"><a href="/qnaBoard/qnaList" class="nav-link"> <i
				class="fas fa-briefcase"></i>질문게시판
		</a></li>

		<li class="nav-item"><a href="/swLecture" class="nav-link"> <i
				class="fas fa-blog"></i>SW강의
		</a></li>

		<!-- <li class="nav-item"><a href="lecture.html" class="nav-link">
				<i class="fas fa-envelope"></i>강의평가
		</a></li> -->
	</ul>
	<div class="social-media">
		<a href="https://www.youtube.com/" class="icon-link"> <i class="fab fa-youtube"></i>
		</a> <a href="https://opentutorials.org/course/1" class="icon-link"> <i class="fab fa-linkedin"></i>
		</a> <a href="https://github.com/ho8159" class="icon-link"> <i class="fab fa-github-square"></i>
		</a>
	</div>

</nav>