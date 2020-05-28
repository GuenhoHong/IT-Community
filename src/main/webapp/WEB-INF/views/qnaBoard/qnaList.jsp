<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>QNA BOARD</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/css/qnaList.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<body>
	<%@ include file="../includes/sidebar.jsp"%>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var result = '<c:out value="${result}"/>';
							checkModal(result);

							history.replaceState({}, null, null);

							function checkModal(result) {
								if (result === '' || history.state) {
									return;
								}
								if (parseInt(result) >= 0) {
									$(".modal-body").html("게시글이 등록 되었습니다");
								}
								$("#myModal").modal("show");

							}

							var actionForm = $("#actionForm");

							$(".paginate_button a").on(
									"click",
									function(e) {
										e.preventDefault();
										console.log("click");
										actionForm
												.find("input[name='pageNum']")
												.val($(this).attr("href"));
										actionForm.submit();
									});

							//게시글 제목에만 걸어주면, pageNum과 amount가 전송되지 않는다
							$(".move")
									.on(
											"click",
											function(e) {
												e.preventDefault();
												actionForm
														.append("<input type ='hidden' name='no' value ='"
																+ $(this).attr(
																		"href")
																+ "'>");
												actionForm.attr("action",
														"/qnaBoard/qnaView");
												actionForm.submit();
											});

							var searchForm = $("#search");

							$("#search button").on(
									"click",
									function(e) {
										if (!searchForm.find("option:selected")
												.val()) {
											alert("검색 종류를 선택해 주세요");
											return false;
										}

										if (!searchForm.find(
												"input[name='qnaKeyWord']")
												.val()) {
											alert("검색어를 입력하세요");
											return false;
										}

										searchForm
												.find("input[name='pageNum']")
												.val("1");
										e.preventDefault();

										searchForm.submit();
									});

						});
	</script>

	<div class="container" style="margin-left :22%">
		<div class="row">
			<div class="col-md-10 qnaLabel-row">
				<p>Q&A</p>
			</div>
		</div>

		<div class="row qna_body">
			<div class="col-md-10 col-md-offset-1"></div>
			<table class="table qna-board">

				<colgroup>
					<col width=50px;>
					<!-- NO -->
					<col width=250px;>
					<!-- TITLE -->
					<col width=80px;>
					<!-- NAME -->
					<col width=80px;>
					<!-- DATE -->
					<col width=50px;>
					<!-- HIT -->
				</colgroup>

				<thead>
					<tr>
						<td>NO</td>
						<td>TITLE</td>
						<td>WRITER</td>
						<td>DATE</td>
						<td>HIT</td>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${qnaList}" var="qna">
						<tr>
							<td>${qna.no}</td>
							<td><a class='move' href='<c:out value="${qna.no}"/>'>
									<c:out value="${qna.title }" />
							</a></td>
							<td>${qna.writer}</td>
							<td>${qna.regDate}</td>
							<td>${qna.hit }</td>
						</tr>
					</c:forEach>
						<tr>
				</tbody>
			</table>
			

			<!-- 검색 처리 기능 -->
			<div class="col-md-10 col-md-offset-8">
				<form id='search' action="/qnaBoard/qnaList" method="get">
					<select class="form-control"
						style="width: 100px; display: inline-block;" name="qnaType">
						<option value="T"
							<c:out value="${pageMaker.qnaCri.qnaType == 'T' ?'selected':''}"/>>제목</option>
						<option value="C"
							<c:out value="${pageMaker.qnaCri.qnaType == 'C' ?'selected':''}"/>>내용</option>
						<option value="TC"
							<c:out value="${pageMaker.qnaCri.qnaType == 'TC' ?'selected':''}"/>>제목
							+ 내용</option>
						<option value="W"
							<c:out value="${pageMaker.qnaCri.qnaType == 'W' ?'selected':''}"/>>작성자</option>
					</select> 
					<input type="text" class="form-control" name="qnaKeyWord"
						style="width: 180px; display: inline-block;"
						value="${qnaPageMaker.qnaCri.qnaKeyWord}" /> <input type='hidden'
						name='pageNum' value="${qnaPageMaker.qnaCri.pageNum }"> <input
						type='hidden' name='amount' value="${qnaPageMaker.qnaCri.amount }">
					<button class="btn btn-default">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					</button>

				</form>
				<button type="button" class="btn btn-default btn-sm"
					onclick="location.href ='/qnaBoard/qnaWrite'">글쓰기</button>
			</div>
			
			<!-- pagination -->
			<div class="col-md-10 pagination-div">
				<ul class="pagination">

					<c:if test="${qnaPageMaker.prev}">
						<li class="paginate_button previous"><a
							href="${qnaPageMaker.startPage-1 }">이전</a></li>
					</c:if>

					<c:forEach var="num" begin="${qnaPageMaker.startPage }"
						end="${qnaPageMaker.endPage }">
						<li
							class="paginate_button ${qnaPageMaker.qnaCri.pageNum == num ? "active":"" }"><a
							href="${num }">${num }</a></li>
					</c:forEach>

					<c:if test="${qnaPageMaker.next }">
						<li class="paginate_button next"><a
							href="${qnaPageMaker.endPage+1 }">다음</a></li>
					</c:if>

				</ul>
			</div>
		</div>

	</div>


	<!-- amount와 pageNum값을 전송시켜준다  -->
	<form id="actionForm" action="/qnaBoard/qnaList" method="get">
		<input type="hidden" name="pageNum"
			value="${qnaPageMaker.qnaCri.pageNum }"> <input type="hidden"
			name="amount" value="${qnaPageMaker.qnaCri.amount }"> <input
			type="hidden" name="qnaKeyWord"
			value="${qnaPageMaker.qnaCri.qnaKeyWord }"> <input
			type="hidden" name="qnaType" value="${qnaPageMaker.qnaCri.qnaType }">
	</form>



	<!--  Modal 추가 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">게시글 확인</h4>
				</div>
				<div class="modal-body">처리가 완료 되었습니다</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">저장</button>
				</div>
			</div>
			<!-- Modal-content -->
		</div>
		<!-- Modal-dialog -->
	</div>
	<!-- Modal -->
</body>
</html>