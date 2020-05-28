<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/css/board.css">
<script src="/ckeditor/ckeditor.js"></script>
</head>

<body>
	<%@ include file="../includes/sidebar.jsp"%>

	<script type="text/javascript">
		//document.폼이름
		function writeCheck() {
			var form = document.writeform;
			var flag = true;

			if (form.title.value === '') {
				alert("제목을 입력해 주세요");
				form.title.focus();
				flag = false;

			}
			if (form.content.value === '') {
				alert("내용을 입력해 주세요");
				form.content.focus();
				flag = false;

			}
			console.log(flag);
			if (flag) {
				form.submit();
			}

		}
	</script>
	
	<script src="/ckeditor/ckeditor.js"></script>

	<div class="container" style ="margin-left :22%">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 notice-table">
				<form name="writeform" method="post">
					<table class="table table-striped">
						<tr>
							<td>&nbsp;</td>
							<td align="center">NOTICE</td>
							<td>성공회 대학교 질문 게시판 입니다</td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td align="center">제목</td>
							<td><input type="text" name="title" size="100"
								maxlength="100"></td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td align="center"></td>
							<td><textarea name="content" cols="100" rows="13"></textarea>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td align="center">작성자</td>
							<td><input type="text" name="writer" size="30"
								maxlength="100" readonly="readonly" value="${login.userId}">
								<!--  값 입력하기  --></td>
							<td>&nbsp;</td>
						</tr>

						<tr align="center">
							<td>&nbsp;</td>
							<td colspan="2"><input type="button" value="등록"
								class="btn btn-dark" OnClick="javascript:writeCheck()">
								<input type="button" value="취소" class="btn btn-dark"
								OnClick="javascript:history.back(-1)">
							<td>&nbsp;</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
	
</body>
</html>