<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/navbar.css">
<link rel="stylesheet" href="/css/container.css">
<title>SKHU 복수전공</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
	<%@ include file="./includes/sidebar.jsp"%>

	<div class="container" style="margin-left: 22%">
		<div class="jumbotron" style="margin-top: 5%">
			<h1 class="text-center">SKHU IT</h1>
			<p class="text-center">Are you interested in Programming?</p>
			<p class="text-center">
				<a class="btn Qqbtn-primary btn-lg" href="#" role="button">Information</a>
			</p>
		</div>

		<div class="row">
			<div class="col-md-2" style="margin-top: 20px">
				<img src="../resources/images/skhulogo.jpg" width="100px"
					height="100px" />
			</div>
			<div class="col-md-4" style="margin-top: 20px">
				<h4>성공회대학교 인문대생을 위한 TIP!</h4>
				<p>
					IT 복수전공을 원하시나요?<br> 필수적으로 들어야하는 전공필수 과목!<br>
				<p>
					<a class="btn btn-primary" data-target="#modal" data-toggle="modal">Information</a>
				</p>
			</div>
			<div class="col-md-6">
				<a href="#"> <i class="fas fa-newspaper"
					style="color: black; font-size: large;">&nbsp IT 개발</i>
				</a></br>
				</br>
				<table class="table-bordered">

					<td>
						<h4
							onclick="location.href='https://www.itdaa.net/open_mentorings/966'"
							style="cursor: pointer">비전공자 IT 개발자, 취업 가능한가요?</h4>
					</td>

					</tr>
					<tr>
						<td>
							<h4
								onclick="location.href='http://media.fastcampus.co.kr/knowledge/why-non-major-also-need-for-software-programming-project/'"
								style="cursor: pointer">프로그래밍 분야에서 비전공자가 가져갈 수 있는 강점</h4>

						</td>
					</tr>

					<tr>
						<td>
							<h4
								onclick="location.href='https://www.youtube.com/watch?v=5bIzMeC6Djk'"
								style="cursor: pointer;">비전공자로 개발자 커리어를 시작하는 사람들에게</h4>
						</td>
					</tr>
					<tr>
						<td>
							<h4
								onclick="location.href='https://www.sciencetimes.co.kr/?news=2019%EB%85%84%EC%97%90-%EC%9D%B8%EA%B8%B0-%EC%9E%88%EB%8A%94-it%EC%97%85%EC%A2%85-10%EC%84%A0'"
								style="cursor: pointer;">2019년에 인기 있는 IT업종 10선</h4>
						</td>
					</tr>


				</table>
			</div>

		</div>
		<hr>
	</div>

	<div class="row" style="margin-left:22%">
		<div class="modal" id="modal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header" style="text-align: center";>
						소프트웨어 개설 과목
						<button class="close" data-dismiss="modal">&times</button>
					</div>
					<div class="modal-body" style="text-align: center;">
						<h4>전공필수과목</h4>
						<br> C프로그래밍1 ★★☆☆☆<br> 웹페이지구축1★★☆☆☆<br>
						데이터베이스개론★★★★☆<br> 자바프로그래밍★★☆☆☆<br> 컴퓨터구조★★★☆☆<br>
						운영체제론★★★☆☆<br> 자료구조론★★★★☆<br> 알고리즘★★★★★<br>
						<h5>
							<a href="http://sw.skhu.ac.kr/">MORE INFORMATION</a>
						</h5>
						<img src="../resources/images/logo.jpg" width="150px"
							height="100px" ;/>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="margin-left:22%">
		<br> <Br> <a href="#"> <i class="fas fa-search"
			style="color: black; font-size: large;">&nbsp IT취업정보</i>
		</a> <br> <br>
		<div class="row">
			<div class="col-md-12">
				<div id="Carousel" class="carousel slide">

					<ol class="carousel-indicators">
						<li data-target="#Carousel" data-slide-to="0" class="active"></li>
						<li data-target="#Carousel" data-slide-to="1"></li>
						<li data-target="#Carousel" data-slide-to="2"></li>
					</ol>

					<!-- Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row">
								<div class="col-md-4"
									onclick="location.href='https://kakaobank.recruiter.co.kr/app/jobnotice/list'"
									style="cursor: pointer">
									<a href="#"><img src="../images/kakao.jpg" alt="Image"
										style="width: 20%; height: 20%;"> </a> <br>
									<h3>한국카카오은행(주)</h3>
									<br>
									<h4>iOS 개발자 채용공고</h4>
								</div>

								<div class="col-md-4"
									onclick="location.href='https://www.woowahan.com/#/recruit/tech'"
									style="cursor: pointer;">
									<a href=""><img src="../images/bros.JPG" alt="Image"
										style="width: 66px; height: 27px;"> </a> <br>
									<h3>(주) 우아한형제들</h3>
									<br>
									<h4>부문별 신입 및 경력 채용공고</h4>
									<br> <br>

								</div>
								<div class="col-md-4"
									onclick="location.href='http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&rec_idx=37327218&recommend_ids=eJxVzsENgEAIRNFqvC8MMOzZQuy%2FC40xcTi%2BfAKA6I6NK8sOniDYyLjK%2FKOB%2FrNz7RSCAWWV1oXasuqZtkH4oOfgaqVBDjHctc43aMa33udqL%2Fs%3D&view_type=public-recruit&gz=1&t_ref=public-recruit#seq=0'"
									style="cursor: pointer">
									<a href="#"><img src="../images/kg.jpg" alt="Image"
										style="width: 66px; height: 27px;"> </a> <br>
									<h3>[KG]이니시스</h3>
									<br>
									<h4>IT본부 경력직 채용</h4>
									<br> <br>

								</div>

							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item" style="margin-left: 22%">
							<div class="row">
								<div class="col-md-4"
									onclick="location.href='http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&rec_idx=37352969&recommend_ids=eJxtkLsVAjEMBKshX%2Bu7iinE%2FXcBHFingHA8a%2B2TNNUVsO3FRz514LbvQxZShnck%2F%2BCJh5cP39g%2BmDX8weNNfY26xuNJ6JjfeHwtkbFO492fMeYnXWOnxYVrQcXbSoGr2r5PwavshwFnDUwzNEqZywgXykZvY5%2FZI%2B7fquAYpgbyE48XdBZf2g%3D%3D&view_type=search&searchword=%EC%BB%B4%ED%88%AC%EC%8A%A4&searchType=search&gz=1&t_ref_content=generic&t_ref=search&paid_fl=n#seq=0'"
									style="cursor: pointer">
									<a href="#"><img src="../images/com2s.jpg" alt="Image"
										style="width: 66px; height: 27px;"> </a>
									<h3>(주)컴투스</h3>
									<br>
									<h4>데이터베이스 관리자 경력직 채용</h4>
									<br> <br>

								</div>
								<div class="col-md-4"
									onclick="location.href='http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&rec_idx=37173152&recommend_ids=eJxtzrkBAzEIRNFqnAMzXLELUf9deA%2BvcODw6YMkJLxKdHnXK99IzQLqDxevA4S3Tx8%2BvdWM0zefzjIez4VetJL2XCF2Vw9RX8n4knnUh5qSFnsXSfZ5913Ns8WH5dAZPipddwVIyaHG%2BY29y5bCMKgYIuASU7si4ndXVU5%2BADaGTFM%3D&view_type=search&searchword=%EC%82%AC%EB%9E%8C%EC%9D%B8hr&searchType=search&gz=1&t_ref_content=generic&t_ref=search&paid_fl=n#seq=0'"
									style="cursor: pointer">
									<a href="#"><img src="../images/saramin.jpg" alt="Image"
										style="width: 66px; height: 27px;"> </a>

									<h3>(주)사람인에이치알</h3>
									<br>
									<h4>PHP/ASP/JAVA 웹 개발자 경력직 채용</h4>
									<br> <br>

								</div>
								<div class="col-md-4"
									onclick="location.href='http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&rec_idx=37384410&recommend_ids=eJxNzLsNgAAMQ8Fp6JM4P9cMwv5bAEIiKU%2B2HgrdTlyRetSJQinKrlT72CGMRX8eiyjHsAr0YbZmL4rUWoM0brauVLhTh4BqDjVA%2BWmk%2BJzNxfGm8gbnxC%2Fs&view_type=public-recruit&gz=1&t_ref=public-recruit#seq=0'"
									style="cursor: pointer">
									<a href="#"><img src="../images/tour2.jpg" alt="Image"
										style="width: 66px; height: 27px;"> </a>

									<h3>(주)투어팁스</h3>
									<Br>
									<h4>Java서버개발/iOS/Android개발 채용</h4>
									<br> <br>

								</div>

							</div>
							<!--.row-->
						</div>
						<!--.item-->


					</div>
					<!--.carousel-inner-->
					<a data-slide="prev" href="#Carousel" class="left carousel-control">‹</a>
					<a data-slide="next" href="#Carousel"
						class="right carousel-control">›</a>
				</div>
				<!--.Carousel-->

			</div>
		</div>
	</div>
	<!--.container-->
	<div class="container" style="margin-left:22%">

		<table class="table table-striped table-hover" style="width: 100%"
			align="center">
			<tr
				onclick="location.href='https://kakaopage.recruiter.co.kr/appsite/company/index'"
				style="cursor: pointer">
				<th align="center"><h3>(주) 카카오페이지</h3></th>
				<th><h3>19 카카오페이지 개발분야 1st 경력공채</h3>
					<p>서버/네트워크/보안 | 웹개발 | 응용프로그램 개발 외</p></th>
				<th><h3>상시채용</h3></th>
			</tr>
			<tr
				onclick="location.href='https://recruit.wemakeprice.com/notice/view?noticeSeq=947'"
				style="cursor: pointer">
				<th align="center"><h3>(주) 위메프</h3></th>
				<th><h3>[QA]O2O 신규서비스 QA엔지니어(정규직)</h3>
					<p>웹마스터/QA/테스터서버/네트워크/보안웹개발</p></th>
				<th><h3>~ 10/20</h3></th>
			</tr>
			<tr onclick="location.href='https://www.woowahan.com/#/recruit/list'"
				style="cursor: pointer">
				<th align="center"><h3>(주) 우아한형제들</h3></th>
				<th><h3>각 부문별 신입/경력 상시채용</h3>
					<p>서버/네트워크/보안</p></th>
				<th><h3>상시채용</h3></th>
			</tr>
			<tr>
			<tr onclick="location.href='https://welcome.danal.co.kr/'"
				style="cursor: pointer">
				<th align="center"><h3>(주) 다날</h3></th>
				<th><h3>각 부문별 신입/경력 상시채용</h3>
					<p>웹개발 | 응용프로그램개발 | 시스템개발</p></th>
				<th><h3>~ 10/04</h3></th>
			</tr>
			<tr onclick="location.href='https://welcome.danal.co.kr/'"
				style="cursor: pointer">
				<th align="center"><h3>(주) 필링크</h3></th>
				<th><h3>2019년 IT부문 개발자 모집공고</h3>
					<p>웹마스터·QA·테스터 | 서버/네트워크/보안</p></th>
				<th><h3>~ 10/06</h3></th>
			</tr>
			<tr
				onclick="location.href='https://kakaopage.recruiter.co.kr/appsite/company/index'"
				style="cursor: pointer">
				<th align="center"><h3>(주) 카카오페이지</h3></th>
				<th><h3>19 카카오페이지 개발분야 1st 경력공채</h3>
					<p>서버/네트워크/보안 | 웹개발 | 응용프로그램 개발 외</p></th>
				<th><h3>상시채용</h3></th>
			</tr>
			<tr
				onclick="location.href='https://kakaopage.recruiter.co.kr/appsite/company/index'"
				style="cursor: pointer">
				<th align="center"><h3>(주) 카카오페이지</h3></th>
				<th><h3>19 카카오페이지 개발분야 1st 경력공채</h3>
					<p>서버/네트워크/보안 | 웹개발 | 응용프로그램 개발 외</p></th>
				<th><h3>상시채용</h3></th>
			</tr>

		</table>
	</div>





	<%@ include file="./includes/footer.jsp"%></body>


</html>