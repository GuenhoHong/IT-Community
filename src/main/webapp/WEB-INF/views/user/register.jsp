<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="/css/regi.css">
<script type="text/javascript">

            window.onload = function () {
                var btncheck = document.getElementById("submit");
                btncheck.onclick = function () {

                    var pw1 = document.getElementById("pwd1");
                    var pw2 = document.getElementById("pwd2");
                    var id = document.getElementById("userId");
                    var email= document.getElementById("email");

                    var passvalue = pw1.value;
                    var passvalue2 = pw2.value;

                    var checktext = document.getElementById("same");
                    var checktext2= document.getElementById("check");

                            if (passvalue != passvalue2) {
                                checktext.innerHTML = "비밀번호가 일치하지않습니다."
                                pw1.focus();
                                checktext.style.color = "red";
                                checktext.style.fontFamily = "sans-serif";
                                checktext.style.fontSize = "13px";
                                checktext.style.fontStyle = "bold";
                                return false;
                            }
                            if(passvalue.length<6){
                                checktext.innerHTML="";
                                checktext2.innerHTML="비밀번호는 6글자이상 13글자 이하로 작성해주세요.";
                                checktext2.style.color = "red";
                                checktext2.style.fontFamily = "sans-serif";
                                checktext2.style.fontSize = "13px";
                                checktext2.style.fontStyle = "bold";
                                pw1.focus();
                                return false;
                            }
                             return true;
                        }

            }

        </script>

</head>
<body>

	<%@ include file="../includes/sidebar.jsp"%>
	<div class="login-box">
		<h1>회원가입</h1>
		<form name="register" method="post" action="/user/create">
			<p>아이디</p>
			<input type="text" name="userId" required>
			<p>이름</p>
			<input type="text" name="name" required>
			<p>비밀번호</p>
			<input type="password" name="userPw" id="pwd1" required
				maxlength="14"><span id="check"></span>
			<p>이메일</p>
			<input type="email" name="email" required>
			<p>핸드폰 번호</p>
			<input type="text" name="phoneNum" required> <input
				type="submit" name="submit" id="submit" value="회원가입">
		</form>
	</div>

</body>
</html>