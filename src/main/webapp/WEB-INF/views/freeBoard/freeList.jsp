<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FREE BOARD</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- bootstrap js -->
<script src="/js/bootstrap.js"></script>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/freeList.css">
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
														.append("<input type ='hidden' name='NO' value ='"
																+ $(this).attr(
																		"href")
																+ "'>");
												actionForm.attr("action",
														"/freeBoard/freeView");
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
												"input[name='freeKeyWord']")
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
			<div class="col-md-10 freeLabel-row">
				<p>자유 게시판</p>
			</div>
		</div>

		<div class="row free_body">
			<div class="col-md-10 col-md-offset-1"></div>
			<table class="table free-board">

				<colgroup>
					<col width=50px;>
					<!-- NO -->
					<col width=250px;>
					<!-- TITLE -->
					<col width=80px;>
					<!-- DATE -->
					<col width=50px;>
					<!-- HIT -->
				</colgroup>

				<thead>
					<tr>
						<td>NO</td>
						<td>TITLE</td>
						<td>DATE</td>
						<td>HIT</td>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${list}" var="list">
						<tr>
							<td>${list.NO}</td>
							<td><a class='move' href='<c:out value="${list.NO}"/>'>
									<c:out value="${list.TITLE }" />
							</a></td>
							<td>${list.REG_DATE}</td>
							<td>${list.HIT }</td>
						</tr>
					</c:forEach>
					<tr>
				</tbody>
			</table>

			<!-- 검색 처리 기능 -->
			<div class="col-md-10 col-md-offset-8">
				<form id='search' action="/freeBoard/freeList" method="get">
					<select class="form-control"
						style="width: 100px; display: inline-block;" name="freeType">
						<option value="T"
							<c:out value="${pageMaker.cri.freeType == 'T' ?'selected':''}"/>>제목</option>
						<option value="C"
							<c:out value="${pageMaker.cri.freeType == 'C' ?'selected':''}"/>>내용</option>
						<option value="TC"
							<c:out value="${pageMaker.cri.freeType == 'TC' ?'selected':''}"/>>제목
							+ 내용</option>
					</select> <input type="text" class="form-control" name="freeKeyWord"
						style="width: 180px; display: inline-block;"
						value="${pageMaker.cri.freeKeyWord}" /> <input type='hidden'
						name='pageNum' value="${pageMaker.cri.pageNum }"> <input
						type='hidden' name='amount' value="${pageMaker.cri.amount }">
					<button class="btn btn-default">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					</button>

				</form>
				<button type="button" class="btn btn-default"
					onclick="location.href ='/freeBoard/freeWrite'">글쓰기</button>
			</div>

			<!-- Pagination -->
			<div class="col-md-10 pagination-div">
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
						<li class="paginate_button previous"><a
							href="${pageMaker.startPage-1 }">이전</a></li>
					</c:if>

					<c:forEach var="num" begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }">
						<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" }"><a
							href="${num }">${num }</a></li>
					</c:forEach>

					<c:if test="${pageMaker.next }">
						<li class="paginate_button next"><a
							href="${pageMaker.endPage+1 }">다음</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>

	<!-- amount와 pageNum값을 전송시켜준다  -->
	<form id="actionForm" action="/freeBoard/freeList" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="freeKeyWord"
			value="${pageMaekr.cri.freeKeyWord }"> <input type="hidden"
			name="freeType" value="${pageMaekr.cri.freeType }">
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