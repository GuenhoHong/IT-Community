<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>모서리</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="/css/boardView.css">
</head>

<body>

	<%@ include file="../includes/sidebar.jsp"%>

	<script type="text/javascript">
		$(document).ready(function() {
			var operForm = $("#operForm");
			$("button[data-oper ='modify']").on("click", function(e) {
				operForm.attr("action", "/freeBoard/freeModify").submit();
			});

			$("button[data-oper='list']").on("click", function(e) {
				operForm.find("#NO").remove();
				operForm.attr("action", "/freeBoard/freeList");
				operForm.submit();
			});

		});
	</script>

	<div class="container" style="width: 100%; margin-left : 15%;">

		<div class="row" style="margin-top: 70px; margin-bottom: 50px;">
			<div class="col-md-8 col-md-offset-1 boardLabel-row">
				<table class="table table-bordered boardView-table">
					<tr>
						<td class="view_title" align="center">제목</td>
						<td colspan="3">${board.TITLE }</td>
					</tr>
					
					<tr>
						<td class="view_title" align="center">작성자</td>
						<td colspan="3">SKHU</td>
					</tr>
					
					<tr>
						<td class="view_title" align="center">작성일</td>
						<td>${board.REG_DATE }</td>
						<td class="view_title">조회수 </td>
						<td>${board.HIT}</td>
					</tr>

					<tr>
						<td colspan="4" height="300px" width="300px">${board.CONTENT }</td>
					</tr>

				</table>
				
				<c:if test = "${login.auth eq 1}">
					<button data-oper="modify" class="btn btn-default btn-sm">수정</button>
				</c:if>				
				<button data-oper="list" class="btn btn-default btn-sm">목록</button>

			</div>
		</div>


		<form id='operForm' action="/freeBoard/freeModify" method="get">
			<input type='hidden' name='NO'
				value='<c:out value = "${board.NO }"/>'> <input
				type='hidden' name='pageNum'
				value='<c:out value = "${cri.pageNum }"/>'> <input
				type='hidden' name='amount'
				value='<c:out value = "${cri.amount }"/>'> <input
				type='hidden' name='freeKeyWord'
				value='<c:out value="${cri.freeKeyWord }"/>'> <input
				type='hidden' name='freeType'
				value='<c:out value="${cri.freeType }"/>'>
		</form>


	</div>
	<%@ include file="../includes/footer.jsp"%>
	


</body>
</html>