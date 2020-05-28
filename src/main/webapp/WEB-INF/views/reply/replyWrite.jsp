<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
	<%@ include file="../includes/navbar.jsp"%>
	<div class="container" style="margin-left: 22%;">

		<table width="100%">
			<form name="writeform" method="post">
				<table class="table table-striped" margin-top:"50px">
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
							maxlength="100" readonly="readonly" value="${login.userId }">
							<!--  값 입력하기  --></td>
						<td>&nbsp;</td>
					</tr>

					<tr align="center">
						<td>&nbsp;</td>
						<td colspan="2"><input type=submit value="등록"
							class="btn btn-dark"> <input type=button value="취소"
							class="btn btn-dark" OnClick="javascript:history.back(-1)">
						<td>&nbsp;</td>
					</tr>
				</table>

			</form>
		</table>
	</div>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>