<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
.LoginInfo {
	border-radius: 20px;
	border: 3px solid YellowGreen;
	padding: 3px;
}

.LoginInfo a {
	text-decoration: none;
	margin: 20px;
}

.container{
	padding-top: 100px;
	padding-bottom: 100px;
}

/* carousel 설정 보류
.carousel-inner> .item > img{

}

#carouselExampleCaptions {
	width: 500px;
	height: auto;
	width: 500px;
}
*/
.txt-point {
	color: red;
}
</style>
</head>
<body>
	<!--로그인 표시 -->
	<c:choose>
		<c:when test="${id ne null}">
			<c:choose>
				<c:when test="${isNLogin ne null}">
					<span class="LoginInfo"> <span><strong>${id}</strong>님이
							네이버로 로그인 되었습니다</span> <a href="member/logout.do">로그아웃</a>
					</span>
				</c:when>
				<c:otherwise>
					<span class="LoginInfo"> <span><strong>${id}</strong>님
							로그인 되었습니다</span> <a href="member/logout.do">로그아웃</a>
					</span>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<span class="LoginInfo"> <a
				href="member/identification_form.do">회원가입</a> <a
				href="member/login_form.do">로그인</a>
			</span>
		</c:otherwise>
	</c:choose>
	<div style="margin-top: 30px;"></div>
	<!-- 로그인표시끝 -->
	<!-- 각자 맡으실 페이지의 링크를  아래의 div에 적어두면 
	메인페이지 하시는분이 편하게할  수 있을거 같으니 본인의 링크는
	아래 div안에 작성해주세요 -->
	<div id="이상훈">
		<li><a href="review/list.do">리뷰 페이지 가기</a></li>
	</div>
	<div id="홍덕환">
		<a href="">ip등록</a> <a href="manager/login.do">관리자 로그인</a> <a
			href="manager/private/mypage.do">관리자 페이지</a>
	</div>
	<div id="LMH">
		<a href="car/carList.do">차 판매 리스트 페이지</a>
	</div>

	<!-- 이 밑으로는 태희씨가 작업하시면 될 것 같아요 -->
	<h2>인덱스페이지입니다</h2>
	<p>모든 페이지는 여기서부터 시작합니다</p>
	<!-- 메인 페이지 -->
	<!-- carousel slide -->
	<div class="container">
		<div id="carouselExampleCaptions" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleCaptions" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath}/resources/img/k_car.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<p>slide img1</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/k_car.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide label</h5>
						<p>slide img2</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/k_car.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Third slide label</h5>
						<p>slide img3</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleCaptions"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-- carousel slide end-->

	<!-- 내차 사고 팔기 -->

	<div class="container">
		<h2>
			중고차 사고 팔 땐, <strong class="txt-point">집에서 홈서비스!</strong>
		</h2>
		<div class="row">
			<div class="col-sm">
				<h5>
					온라인 구매하면 당일 배송! <br /> 내차사기 홈서비스
				</h5>
				<p>
					중고차 쇼핑도 집에서, <br /> 3일 책임환불까지!
				</p>
				<a href="${pageContext.request.contextPath}/">
					<button class="btn btn-dark" type="submit">내차사기</button>
				</a>
			</div>
			<div class="col-sm">
				<h5>
					온라인 구매하면 당일 배송! <br /> 내차사기 홈서비스
				</h5>
				<p>
					부당 감가 없이, 높은 가격으로 <br /> K Car 차량평가사가 직접 방문·매입!
				</p>
				<a href="${pageContext.request.contextPath}/">
					<button class="btn btn-dark" type="submit">내차팔기</button>
				</a>
			</div>
		</div>
	</div>
	<!-- 내차 사고 팔기 끝-->

	<!-- 공지사항 -->
	<div class="container">
		<div class="row">
			<div class="col-sm">
				<h2>
					내차 사고 팔 땐, <br /> <strong class="txt-point">1588-5455</strong>
				</h2>
				<p>
					월~토요일 09:00~18:00 <br /> 일요일 휴무
				</p>
			</div>
			<div class="col-sm">
				<a href="${pageContext.request.contextPath}/">
					<h2 class="txt-point">공지사항</h2>
				</a>
			</div>
		</div>
	</div>
	<!-- 공지사항 끝-->

	<!-- script -->
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
	<!-- script end-->

	<!-- 메인페이지 끝 -->
</body>
</html>