<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SKHU 복수전공</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/mainBoost.css">
	<link rel="stylesheet" href="/css/login.css">
    <script src="/js/bootstrap.js"></script>
  	 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

<%@ include file="../includes/sidebar.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-login">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-6">
                            <a href="#" class="active" id="login-form-link">로그인</a>
                        </div>
                        <div class="col-xs-6">
                            <a href="#" id="register-form-link">회원가입</a>
                        </div>
                    </div>
                    <hr>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="login-form" action="/user/loginPost" method="post" role="form" style="display: block;">
                                <div class="form-group has-feedback">
                                    <input type="text" name="userId" tabindex="1" class="form-control" placeholder="UserId">
                                    <span class ="glyphicon glyphicon-envelope form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="password" name="userPw" tabindex="2" class="form-control" placeholder="Password">
                                    <span class ="glyphicon glyphicon-lock form-control-feedback"></span>
                                </div>
                                <div class="form-group text-center" STYLE="float: left">
                                    <input type="checkbox" tabindex="3" class="" name="useCookie">
                                    <label for="remember"> 자동로그인</label>
                                </div>
                                <div style="clear: both"></div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <input type="submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <a href="https://phpoll.com/recover" tabindex="5" class="forgot-password">비밀번호 찾기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            
                            <form id="register-form" action="/user/create" method="post" role="form" style="display: none;">
                                <div class="form-group">
                                    <input type="text" name="userId" tabindex="1" class="form-control" placeholder="ID" value="">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="name" tabindex="1" class="form-control" placeholder="이름" value="">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="userPw" tabindex="2" class="form-control" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" tabindex="2" class="form-control" placeholder="이메일">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phoneNum" tabindex="2" class="form-control" placeholder="핸드폰 번호">
                                </div>
                                
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="가입하기">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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