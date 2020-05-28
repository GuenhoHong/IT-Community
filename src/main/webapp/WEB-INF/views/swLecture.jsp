<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="/css/script.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
<!-- Compiled and minified Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Minified JS library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Compiled and minified Bootstrap JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/swLecture.css">

<body>
	<%@ include file="./includes/sidebar.jsp"%>

	<div class="container" style= "margin-left:22%">
		<h2>SW강의</h2>
		<br> <br>
	</div>

	<div class="container second-level-menu" style= "margin-left:22%">
		<div class="row">
			<div class="col-xs-12">
				<ul class="nav tag-switch" role="tablist">
					<li role="presentation" class="active level1"><a
						href="#second-level-menu1" role="tab" data-toggle="tab">Java
							강의</a></li>
					<li role="presentation" class="level1"><a
						href="#second-level-menu2" role="tab" data-toggle="tab">JSP 강의</a></li>
					<li role="presentation" class="level1"><a
						href="#second-level-menu3" role="tab" data-toggle="tab">SPRING
							강의</a></li>
					<li class="pull-right tab-content level2">
						<ul class="list-inline tab-pane active" role="tabpanel"
							id="second-level-menu1">
							<li role="presentation" class="active"><a
								href="#second-level-menu1-content1" role="tab" data-toggle="tab">SKHU</a>
							</li>

						</ul>
						<ul class="list-inline tab-pane" role="tabpanel"
							id="second-level-menu2">
							<li role="presentation"><a
								href="#second-level-menu2-content2" role="tab" data-toggle="tab">SKHU</a>
							</li>

						</ul>
						<ul class="list-inline tab-pane" role="tabpanel"
							id="second-level-menu3">
							<li role="presentation"><a
								href="#second-level-menu3-content1" role="tab" data-toggle="tab">SKHU</a>
							</li>
						</ul>
					</li>
				</ul>
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active"
						id="second-level-menu1-content1">
						<div class="row">
							<div class="col-xs-12">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">
											<span class="glyphicon ghlyphicon-tags"></span>

										</h3>
									</div>
									<div class="panel-body">
										<table class="table">
											<thead>
												<tr>
													<th>강사명</th>
													<th>강의 번호</th>
													<th>강의 제목</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>SKHU</td>
													<td>1</td>
													<td><a
														href="https://www.youtube.com/watch?v=PZg00WiwDxA&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB">[java_01강]
															Java 프로그래밍이란?</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>2</td>
													<td><a
														href="https://www.youtube.com/watch?v=6eB4a0Nj9wo&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=2">[java_02강]
															Java 프로그램의 실행 구조</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>3</td>
													<td><a
														href="https://www.youtube.com/watch?v=Kykor5z1Zo4&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=3">[java_03강]
															변수</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>4</td>
													<td><a
														href="https://www.youtube.com/watch?v=cw0zStiSaAs&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=4">[java_04강]
															기본자료형</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>5</td>
													<td><a
														href="https://www.youtube.com/watch?v=E2EuLhOgfgA&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=5">[java_05강]
															특수문자와 서식문자</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>6</td>
													<td><a
														href="https://www.youtube.com/watch?v=gycy6Ykjyfo&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=6">[java_06강]
															연산자</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>7</td>
													<td><a
														href="https://www.youtube.com/watch?v=0LrpsHxDFKY&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=12">[java_7강]
															클래스 제작과 객체 생성 </a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>8</td>
													<td><a
														href="https://www.youtube.com/watch?v=PllhSf9zVx8&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=13">[java_8강]
															메서드</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>9</td>
													<td><a
														href="https://www.youtube.com/watch?v=OshkyLGPo3Y&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=15">[java_9강]
															생성자와 소멸자 그리고 this 키워드</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>10</td>
													<td><a
														href="https://www.youtube.com/watch?v=pFdaJABkEVw&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=16">[java_10강]
															패키지와 static</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>11</td>
													<td><a
														href="https://www.youtube.com/watch?v=rOSvUl3JapQ&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=17">[java_11강]
															데이터 은닉 </a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>12</td>
													<td><a
														href="https://www.youtube.com/watch?v=3-fdyuCD2cc&list=PLpkj8RKr48wYXFtzJdXUo46tmxnj94mjB&index=19">[java_12강]
															상속 특징</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>13</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=13">[java_13강]
															내부 클래스와 익명 클래스</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>14</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=14">[java_14강]
															인터페이스</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>15</td>
													<td><a
														href="https://www.youtube.com/embed/v=q4tfF3UGaQg&list=PLRx0vPvlEmdAZ-wT8pwVJn5GBp5a5aVGy&index=12">[java_15강]
															인터페이스</a></td>
												</tr>


											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane"
						id="second-level-menu2-content1">

						<div class="row">
							<div class="col-xs-12">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">
											<span class="glyphicon hlyphicon-tags"></span>

										</h3>
									</div>
									<div class="panel-body">
										<table class="table">
											<thead>
												<tr>
													<th>강사명</th>
													<th>강의 번호</th>
													<th>강의 제목</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>SKHU</td>
													<td>1</td>
													<td><a
														href="https://www.youtube.com/watch?v=MtxFWczSFqU&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=1">JSP
															게시판 만들기 강좌 1강 - Hello World! (JSP Advanced Development
															Tutorial #1)</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>2</td>
													<td><a
														href="https://www.youtube.com/watch?v=MtxFWczSFqU&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=2">JSP
															게시판 만들기 강좌 2강 - 로그인 페이지 디자인 (JSP Advanced Development
															Tutorial #2)</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>3</td>
													<td><a
														href="https://www.youtube.com/watch?v=kN8xRG6UPZM&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=3">JSP
															게시판 만들기 강좌 3강 - 회원 데이터베이스 구축하기 (JSP Advanced Development
															Tutorial #3)</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>4</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=4">JSP
															게시판 만들기 강좌 4강 - 로그인 기능 구현하기 (JSP Advanced Development
															Tutorial #4)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>5</td>
													<td><a
														href="https://www.youtube.com/watch?v=-Kbhn2TJGn4&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=5">JSP
															게시판 만들기 강좌 5강 - 회원가입 페이지 디자인 (JSP Advanced Development
															Tutorial #5)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>6</td>
													<td><a
														href="https://www.youtube.com/watch?v=v2mmPRLjJGw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=6">JSP
															게시판 만들기 강좌 6강 - 회원가입 기능 구현하기 (JSP Advanced Development
															Tutorial #6)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>7</td>
													<td><a
														href="https://www.youtube.com/watch?v=eJRB__ErXd4&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=7">JSP
															게시판 만들기 강좌 7강 - 접속한 회원 세션 관리하기 (JSP Advanced Development
															Tutorial #7) </a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>8</td>
													<td><a
														href="https://www.youtube.com/watch?v=pCqaGoexV5c&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=8">JSP
															게시판 만들기 강좌 8강 - 게시판 메인 페이지 디자인 (JSP Advanced Development
															Tutorial #8)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>9</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=9">JSP
															게시판 만들기 강좌 9강 - 게시판 데이터베이스 구축하기 (JSP Advanced Development
															Tutorial #9)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>10</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=10">JSP
															게시판 만들기 강좌 10강 - 글쓰기 기능 구현하기 (JSP Advanced Development
															Tutorial #10)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>11</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=11">JSP
															게시판 만들기 강좌 11강 - 게시판 글 목록 기능 구현하기 (JSP Advanced
															Development Tutorial #11) </a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>12</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=12">JSP
															게시판 만들기 강좌 12강 - 게시글 보기 기능 구현하기 (JSP Advanced Development
															Tutorial #12)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>13</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=13">JSP
															게시판 만들기 강좌 13강 - 게시글 수정 및 삭제 기능 구현하기 (JSP Advanced
															Development Tutorial #13)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>14</td>
													<td><a
														href="https://www.youtube.com/watch?v=RYo3OGlRoJw&list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6&index=14">JSP
															게시판 만들기 강좌 14강 - 웹 사이트 메인 페이지 디자인 (JSP Advanced
															Development Tutorial #14)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>15</td>
													<td><a
														href="https://www.youtube.com/embed/v=q4tfF3UGaQg&list=PLRx0vPvlEmdAZ-wT8pwVJn5GBp5a5aVGy&index=12">JSP
															게시판 만들기 강좌 15강 - 프로젝트 완성 및 배포 (JSP Advanced Development
															Tutorial #15)</a></td>
												</tr>


											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane"
						id="second-level-menu2-content2">


						<div class="row">
							<div class="col-xs-12">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">
											<span class="glyphicon hlyphicon-tags"></span>

										</h3>
									</div>
									<div class="panel-body">
										<table class="table">
											<thead>
												<tr>
													<th>강사명</th>
													<th>강의 번호</th>
													<th>강의 제목</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>SKHU</td>
													<td>1</td>
													<td><a
														href="https://www.youtube.com/watch?v=APJAJeePl4g&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 제 01강 웹프로그래밍</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>2</td>
													<td><a
														href="https://www.youtube.com/watch?v=0cy1Oa-2DQg&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=2">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 제 02강 개발 환경 설정</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>3</td>
													<td><a
														href="https://www.youtube.com/watch?v=dWkKwWDQxio&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=3">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 03강 JSP 맛보기</a></td>

												</tr>
												<tr>
													<td>SKHU</td>
													<td>4</td>
													<td><a
														href="https://www.youtube.com/watch?v=MmxzA_0Vtoo&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=4">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 04강 Servlet 맛보기</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>5</td>
													<td><a
														href="https://www.youtube.com/watch?v=6D1hOSyHJTg&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=5">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 05강 Servlet 본격적으로 살펴보기</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>6</td>
													<td><a
														href="https://www.youtube.com/watch?v=U6FA7oWgizc&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=6">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 06강 Servlet 본격적으로 살펴보기-II</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>7</td>
													<td><a
														href="https://www.youtube.com/watch?v=2Pqi-kUMwtw&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=7">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 07강 Servlet 본격적으로 살펴보기-III </a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>8</td>
													<td><a
														href="https://www.youtube.com/watch?v=nb0ACztuQR0&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=8">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 08강 Servlet 본격적으로 살펴보기-IV</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>9</td>
													<td><a
														href="https://www.youtube.com/watch?v=9x5PMVLzz08&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=9">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 09강 JSP 본격적으로 살펴보기-I</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>10</td>
													<td><a
														href="https://www.youtube.com/watch?v=FFaajg6ac_Y&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=10">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 10강 JSP 본격적으로 살펴보기-II</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>11</td>
													<td><a
														href="https://www.youtube.com/watch?v=pM98rGimZDE&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=11">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 11강 JSP 본격적으로 살펴보기-III </a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>12</td>
													<td><a
														href="https://www.youtube.com/watch?v=GsmqSd9BFLY&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=12">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 12강 JSP 액션태그</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>13</td>
													<td><a
														href="https://www.youtube.com/watch?v=V4tZpzeDIow&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=13">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 13강 쿠키</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>14</td>
													<td><a
														href="https://www.youtube.com/watch?v=zu4nmI1tPU4&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=14">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 14강 세션)</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>15</td>
													<td><a
														href="https://www.youtube.com/watch?v=JXHceuYcytw&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=15">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 15강 예외 페이지</a></td>
												</tr>

												<tr>
													<td>SKHU</td>
													<td>16</td>
													<td><a
														href="https://www.youtube.com/watch?v=aoolZnzoKP8&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=16">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 16강 자바 빈</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>17</td>
													<td><a
														href="https://www.youtube.com/watch?v=OFnieB9KDTg&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=17">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 17강 데이터 베이스 - I</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>18</td>
													<td><a
														href="https://www.youtube.com/watch?v=o7h43C95uWI&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=18">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 18강 데이터 베이스 - II</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>19</td>
													<td><a
														href="https://www.youtube.com/watch?v=483iFKa4EUM&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=19">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 19강 데이터 베이스 - III</a></td>
												</tr>
												<tr>
													<td>SKHU</td>
													<td>20</td>
													<td><a
														href="https://www.youtube.com/watch?v=2_vetq6gGMo&list=PLcyqcrDVDnf0F_wfbLLzEXfSHKA24LQd_&index=20">신입SW인력을
															위한 실전 JSP Servlet 동영상과정 - 제 20강 커넥션풀</a></td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane"
						id="second-level-menu3-content1">
						<div class="row">
							<div class="col-xs-12">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<h3 class="panel-title">
											<span class="glyphicon hlyphicon-tags"></span>
										</h3>
									</div>
									<div class="panel-body">
										<table class="table">
											<thead>
												<tr>
													<th>강사명</th>
													<th>강의 번호</th>
													<th>강의 제목</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>뉴렉처</td>
													<td>1</td>
													<td><a
														href="https://www.youtube.com/watch?v=XtXHIDnzS9c&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T">스프링
															프레임워크 강의 1강 - Spring 소개와 학습 안내</a></td>

												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>2</td>
													<td><a
														href="https://www.youtube.com/watch?v=KJ9Rus3QfUc&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=2">스프링
															프레임워크 강의 2강 - 느슨한 결합력과 인터페이스</a></td>

												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>3</td>
													<td><a
														href="https://www.youtube.com/watch?v=WjsDN_aFfyw&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=3">스프링
															프레임워크 강의 3강 - DI(Dependency Injection)</a></td>

												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>4</td>
													<td><a
														href="https://www.youtube.com/watch?v=QrIp5zc6Bo4&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=4">스프링
															프레임워크 강의 4강 - IoC(Inversion Of Control) 컨테이너</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>5</td>
													<td><a
														href="https://www.youtube.com/watch?v=gtqctgfywn4&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=5">스프링
															프레임워크 강의 5강 - Dependency를 직접 Injection하기</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>6</td>
													<td><a
														href="https://www.youtube.com/watch?v=Jwoz4ORX60A&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=6">스프링
															프레임워크 강의 6강 - 스프링 DI 설정을 위해 이클립스 플러그인 설치하기</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>7</td>
													<td><a
														href="https://www.youtube.com/watch?v=bYu9MNLBvX0&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=7">스프링
															프레임워크 강의 7강 - 스프링 DI 지시서 작성하기(Spring Bean Configuration)
													</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>8</td>
													<td><a
														href="https://www.youtube.com/watch?v=R_6fW1tVj8Y&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=8">스프링
															프레임워크 강의 8강 - 스프링 IoC 컨테이너 사용하기(ApplicationContext 이용하기)</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>9</td>
													<td><a
														href="https://www.youtube.com/watch?v=9iNvs7aeeDM&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=9">스프링
															프레임워크 강의 9강 - 값 형식 DI</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>10</td>
													<td><a
														href="https://www.youtube.com/watch?v=K_4xDEeDvk8&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=10">스프링
															프레임워크 강의 10강 - 생성자 DI</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>11</td>
													<td><a
														href="https://www.youtube.com/watch?v=0ktRT5Fatnw&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=11">스프링
															프레임워크 강의 11강 - 콜렉션 생성과 목록 DI </a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>12</td>
													<td><a
														href="https://www.youtube.com/watch?v=S065KRjXRSY&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=12">스프링
															프레임워크 강의 12강 - 어노테이션을 이용할 때의 장점과 @Autowired를 이용한 DI 해보기</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>13</td>
													<td><a
														href="https://www.youtube.com/watch?v=Od-WtriilwY&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=13">스프링
															프레임워크 강의 13강 - @Autowired의 동작방식 이해와 @Qualifier 사용하기</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>14</td>
													<td><a
														href="https://www.youtube.com/watch?v=MlTk1AFMIzU&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=14">스프링
															프레임워크 강의 14강 - @Autowired의 위치와 required 옵션</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>15</td>
													<td><a
														href="https://www.youtube.com/watch?v=DNrkw3pAsAM&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=15">스프링
															프레임워크 강의 15강 - 어노테이션을 이용한 객체생성</a></td>
												</tr>

												<tr>
													<td>뉴렉처</td>
													<td>16</td>
													<td><a
														href="https://www.youtube.com/watch?v=pyMzPpK4uXk&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=16">스프링
															프레임워크 강의 16강 - 특화된 @Component 어노테이션
															(@Controller/@Service/@Repository)</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>17</td>
													<td><a
														href="https://www.youtube.com/watch?v=XzrXZIRB1vM&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=17">스프링
															프레임워크 강의 17강 - XML Configuration을 Java Configuration으로
															변경하기</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>18</td>
													<td><a
														href="https://www.youtube.com/watch?v=y2JkXjOocZ4&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=18">스프링
															프레임워크 강의 18강 - AOP(Aspect Oriented Programming) 이란?</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>19</td>
													<td><a
														href="https://www.youtube.com/watch?v=DhcrnaKKrbA&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=19">스프링
															프레임워크 강의 19강 - AOP 자바 코드 이해하기</a></td>
												</tr>
												<tr>
													<td>뉴렉처</td>
													<td>20</td>
													<td><a
														href="https://www.youtube.com/watch?v=pr2dwdf_03k&list=PLq8wAnVUcTFUHYMzoV2RoFoY2HDTKru3T&index=20">스프링
															프레임워크 강의 20강 - 순수 자바로 AOP 구현해보기</a></td>
												</tr>


											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="./includes/footer.jsp"%>

	<script type="text/javascript">
    $('.tag-switch a').mouseover(function () {
        $(this).click();
    })

    $('.second-level-menu .level1 a').mouseover(function ()
    {
        var contentid = $(this).attr("href");

        var contentfirst = contentid + " li:first a";
        $(contentfirst).click();
    }).mouseout(function () {
        var contentid = $(this).attr("href");

        var contentfirst = contentid + " li:first";
        $(".level2 ul li").removeClass("active");
        $(contentfirst).addClass("active");
    })

</script>
</body>
</html>

</body>
</html>