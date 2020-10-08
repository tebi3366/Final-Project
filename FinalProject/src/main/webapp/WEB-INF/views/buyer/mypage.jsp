<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>buyer/mypage.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />

</head>
<body>
<div class="container">
	<c:if test="${dto.user_sort eq 0 }">
	<h1>구매자 마이페이지</h1>
	<table>
		<tr>
			<th>아이디</th>
			<td>${dto.user_id }</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${dto.user_name }</td>
		</tr>
		<tr>
			<th>폰번호</th>
			<td>${dto.user_phone}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${dto.user_addr }</td>
		</tr>
		<tr>
			<th>우편번호</th>
			<td>${dto.user_p_code }</td>
		</tr>
	</table>
	<a href="private/updateform.do">개인정보 수정</a>
	<a href="javascript:deleteConfirm()">탈퇴</a>
	</c:if>
</div>
<script>
 	function deleteConfirm(){
		var isDelete=confirm("${user_id} 회원님 탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="${pageContext.request.contextPath }/buyer/private/delete.do?id=${user_id}";
		}
	}
</script>
</body>
</html>




