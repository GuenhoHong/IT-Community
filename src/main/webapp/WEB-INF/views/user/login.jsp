<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SKHU 복수전공</title>
<link rel="stylesheet" href="/css/mainBoost.css">
<link rel="stylesheet" href="/css/loginTest.css">
</head>
<body>

	<%@ include file="../includes/sidebar.jsp"%>

	<div class="login-box">
		<h1>로그인</h1>
		<form id="login-form" action="/user/loginPost" method="post"
			role="form">
			<p>아이디</p>
			<input type="text" name="userId" required pattern="a-zA-Z].+[0-9]"
				placeholder="아이디">
			<p>비밀번호</p>
			<input type="password" name="userPw" placeholder="password">
			<input type="submit" id="login-submit" name="submit" value="Login">

		</form>

		<div class="find-id">
			<a href="#">아이디 찾기</a>
		</div>
		<div class="find-pw">
			<a href="#">비밀번호 찾기</a>
		</div>
		<div class="find-check" align ="left">
			<label for="remember" style = "display:inline-block;"> 자동로그인
			<input type="checkbox" name="useCookie"></label>
		</div> 	
	</div>
	

<script>
	$(document).ready(function(){
	var form = $("#login-form");
	$("#login-submit").click(function(){
		if($('input[name="userId"]').val() == "" || $('input[name="userId"]').val() == null){
			alert("아이디를 입력해주세요.");
			$('input[name="userId"]').focus();
			return false;
		}
		if($('input[name="userPw"]').val() == "" || $('input[name="userPw"]').val() == null){
			alert("비밀번호를 입력해주세요.");
			$('input[name="userPw"]').focus();
			return false;
		}
		form.submit();
	});
});
</script>


</body>
</html>