<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>모서리</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/boardView.css">

</head>

<body>

	<%@ include file="../includes/sidebar.jsp"%>

	<script type="text/javascript">
		$(document).ready(function() {
			var operForm = $("#operForm");
			$("button[data-oper ='modify']").on("click", function(e) {
				operForm.attr("action", "/qnaBoard/qnaModify").submit();
			});

			$("button[data-oper='list']").on("click", function(e) {
				operForm.find("#no").remove();
				operForm.attr("action", "/qnaBoard/qnaList");
				operForm.submit();
			});

		});
	</script>

	<div class="container" style="width: 100%; margin-left : 15%;">

		<div class="row" style="margin-top: 70px; margin-bottom: 30px;">

			<div class="col-md-8 col-md-offset-1 noticeLabel-row"
				style="margin-bottom: 70px">

				<table class="table table-bordered">

					<tr>
						<td align="center" class="view_title">제목</td>
						<td colspan="3">${qnaBoard.title}</td>
					</tr>

					<tr>
						<td align="center" class="view_title">작성자</td>
						<td colspan="3">${qnaBoard.writer }</td>
					</tr>

					<tr>
						<td class="view_title" align="center">작성일</td>
						<td>${qnaBoard.regDate}</td>
						<td class="view_title" align="center">조회수</td>
						<td>${qnaBoard.hit }</td>
					</tr>

					<tr>
						<td colspan="4" height="300px" width="300px">${qnaBoard.content}
						</td>
					</tr>


				</table>

				<c:if test="${qnaBoard.writer eq login.userId or login.auth eq 1 }">
					<div>
						<button data-oper="modify" class="btn btn-default btn-sm">수정</button>
						<button data-oper="list" class="btn btn-default btn-sm">목록</button>
					</div>
				</c:if>
			</div>
		</div>


		<form id='operForm' action="/qnaBoard/qnaModify" method="get">
			<input type='hidden' name='no'
				value='<c:out value = "${qnaBoard.no }"/>'> <input
				type='hidden' name='pageNum'
				value='<c:out value = "${qnaCri.pageNum }"/>'> <input
				type='hidden' name='amount'
				value='<c:out value = "${qnaCri.amount }"/>'> <input
				type="hidden" name="qnaKeyWord" value="${qnaCri.qnaKeyWord }">
			<input type="hidden" name="qnaType" value="${qnaCri.qnaType }">
		</form>


	</div>
	
	<script type="text/javascript">
	
		$(document).ready(function(){
			
			var bno = ${qnaBoard.no };
			
			getReply(bno);
			
			$("#replyAddBtn").on('click',function(){
				
				var writer = $("#newReplyWriter").val();
				var content = $("#newReplyText").val();
				
				
				var reply = {
						bno : bno,
						writer : writer,
						content : content
				};
				
				if(!content) {
    				alert('내용을 입력해주세요.');
    				$('#reply_content').focus();
    				return false;
    			}
				
				$.ajax({
					type : 'post',
					url : '/replies/register',
					contentType : "application/json; charset=utf-8",
					data : JSON.stringify(reply),
					async:false,
					success : function(result){
						if(result == 'SUCCESS'){
							console.log(result);
							alert('등록 되었습니다');
						}
					}
					
				});
				
				});
			
		});
		
		
		function getReply(bno){
			
			$.ajax({
				type:'get',
				url: '/replies/replyGet/' + bno,
				async:false,
				success: function(reply){
					addReplyHtml(reply);
				}
			});
		}
		
		function addReplyHtml(reply) {
    		var member_id = '${login.userId}';
    		var replyHtml = '';
			$('.get_reply_tbl tbody').html(replyHtml);
			
			for(var i = 0; i < reply.length; i++) {
				replyHtml += '<tr>'
					           + '	<td>' + String(reply[i].writer) + '</td>'
							   + '	<td class="delete_reply">'
							   replyHtml += '	</td>'
							   + '</tr>'
							   + '<tr>'
							   + '	<td colspan="3">' + reply[i].content + '</td>'
							   + '</tr>';
			}
						  
			$('.get_reply_tbl tbody').append(replyHtml);
    	} // end addReplyHtml

	
		
	</script>



	<div class="col-md-8 col-md-offset-1"  style = "margin-left : 13%">
		<table class="table table-bordered reg_reply_tbl" style = "margin-left : 15%">
			<!-- login is session id -->
			<c:if test="${login eq null }">
				<tr>
					<td>회원에게만 댓글 작성 권한이 있습니다</td>
				</tr>
			</c:if>

			<c:if test="${login ne null }">
				<tr>
					<td>댓글</td>
				</tr>
				<div>
				<tr>
					<td>
						<input type="hidden" id ="newReplyWriter" name ="writer" value="${login.userId }">
						<input type="text" class="form-control"
						name="content" id="newReplyText"></input>
						<button type="button" id ="replyAddBtn" class="btn btn-default btn-sm reg_reply">등록</button>
					</td>
				</tr>
				</div>

			</c:if>
		</table>

		<table class="table get_reply_tbl" style = "margin-left : 15%">
			<colgroup>
				<col width="10%">
				<col width="30%">
				<col width="60%">
			</colgroup>
			<tbody>
			</tbody>
		</table>
	</div>
	


</body>
</html>