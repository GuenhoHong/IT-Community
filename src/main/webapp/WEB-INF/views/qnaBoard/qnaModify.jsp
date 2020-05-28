<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<head>
<title>게시판</title>
<link rel="stylesheet" href="/css/board.css">
</head>
<body>
	<%@ include file="../includes/sidebar.jsp"%>

	<script>
		$(document).ready(
				function() {
					var formObj = $("form");
					$('button').on(
							"click",
							function(e) {
								e.preventDefault();
								var oper = $(this).data("oper");

								if (oper === 'remove') {
									formObj.attr("action",
											"/qnaBoard/qnaDelete").submit();
								} else if (oper === 'list') {
									formObj.attr("action", "/qnaBoard/qnaList")
											.attr("method", "get");
									var pageNumTag = $("input[name='pageNum']")
											.clone();
									var amountTag = $("input[name='amount']")
											.clone();

									formObj.empty();
									formObj.append(pageNumTag);
									formObj.append(amountTag);
								}
								formObj.submit();
							});
				});
	</script>

	<form role="form" action="/qnaBoard/qnaModify" method="post">


		<input type="hidden" name="no" value="${qnaBoard.no}"> <input
			type="hidden" name="pageNum" value="${qnaCri.pageNum }"> <input
			type="hidden" name="amount" value="${qnaCri.amount }"> <input
			type="hidden" name="qnaKeyWord" value="${qnaCri.qnaKeyWord }">
		<input type="hidden" name="qnaType" value="${qnaCri.qnaType }">


		<div class="container" style ="margin-left :22%">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 notice-table">
					<table class="table table-striped">
						<tr>
							<td>&nbsp;</td>
							<td align="center">NOTICE</td>
							<td>성공회 대학교 질문게시판입니다</td>
							<td>&nbsp;</td>
						</tr>


						<tr>
							<td>&nbsp;</td>
							<td align="center">제목</td>
							<td><input type="text" name="title" size="100"
								maxlength="100" value="${qnaBoard.title}"> <!--  값 입력하기  --></td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td align="center"></td>
							<td><textarea name="content" cols="100" rows="13">
								${qnaBoard.content}
									
								</textarea></td>

							<td>&nbsp;</td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td colspan="2">
							<button type="submit" data-oper='modify' class='btn btn-default btn-sm'>수정
								완료</button>
							<button type="submit" data-oper='remove' class='btn btn-default btn-sm'>삭제</button>
							<button type="submit" data-oper='list' class='btn btn-default btn-sm'>목록</button>
							<td>&nbsp;</td>
						</tr>

					</table>
				</div>
			</div>


		</div>
	</form>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>