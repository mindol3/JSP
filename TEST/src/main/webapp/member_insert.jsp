<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./member.js" defer></script>
<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
</head>
<body>
	<h3>회원가입</h3>
	<form action="member_insert_action.jsp" name="member_insert" id="member_insert" method="post">
	<p> 아이디 : <input type="text" name="memberID">
	<p> 비밀번호 : <input type="password" name="passwd">
	<p> 비밀번호확인 : <input type="password" name="passwdCheck">
	<p> 이름 : <input type="text" name="memberName">
	<p> 이메일 : <input type="text" name="email">
	<p> 관심사항 : 영화 <input type="checkbox" name="interest" value="영화" checked>
			독서 <input type="checkbox" name="interest" value="독서">
			수영 <input type="checkbox" name="interest" value="수영">
			등산 <input type="checkbox" name="interest" value="등산">
	<p> 우편번호 : <input type="text" name="zipcode" id="zipcode" size="10" maxlength="7">
	<span onclick="execDaumPostcode();" style="cursor:pointer;">우편번호 검색</span><br />
	<p>	집주소1 : <input type="text" name="address01" id="address01" size="70" maxlength="70">	
	<p>	집주소2 : <input type="text" name="address02" id="address02" size="70" maxlength="70">
	<p> 태어난 해 : <input type="text" name="birthYear">
	<p> 태어난 월 : <input type="text" name="birthMonth">
	<p> 태어난 일 : <input type="text" name="birthDay">
	<p> 메일 수신 여부 : <input type="radio" name="mailYN" value="yes" checked> yes
	<input type="radio" name="mailYN" value="no"> no
	<p> 문자 수신 여부 : <input type="radio" name="smsYN" value="yes" checked> yes
	<input type="radio" name="smsYN" value="no" > no
	<p><input type="button" name="button" id="Button" value="회원가입">
	</form>
	
</body>

</html>