<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/updateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>회원정보 수정 폼 입니다.</h1>
	<form action="update.do" method="post">
		<div class="form-group">
			<label for="id">아이디</label>
			<input class="form-control" type="text" id="id" value="${dto.user_id }" disabled/>
		</div>
		<div class="form-group">
			<label for="user_name">이름</label>
			<input class="form-control" type="text" id="user_name" name="user_name"
				 value="${dto.user_name }" />
		</div>
		<div class="form-group">
			<label for="user_phone">폰번호</label>
			<input class="form-control" type="text" id="user_phone" name="user_phone"
				 value="${dto.user_phone }" />
		</div>
		<div class="form-group">
			<label for="user_addr">주소</label>
			<input class="form-control" type="text" id="user_addr" name="user_addr"
				 value="${dto.user_addr }" />
		</div>
		<div class="form-group">
			<label for="user_p_code">우편번호</label>
			<input class="form-control" type="text" id="user_p_code" name="user_p_code"
				 value="${dto.user_p_code }" />
		</div>
		
		<button class="btn btn-outline-primary" type="submit">수정확인</button>
		<button class="btn btn-outline-warning" type="reset">취소</button>
	</form>

</div>
</body>
</html>







