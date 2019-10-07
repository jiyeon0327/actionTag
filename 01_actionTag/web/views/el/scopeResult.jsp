<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${sessionScope.name }</p>session
	<p>${name }</p>request
	<p>${age }</p>request
	<p>${userId }</p>session
	<p>${admin }</p>context/application
	  
	<h3>객체접근하기!</h3>
	<p>${person.name }</p>
	<p>${person.age }</p>
	<p>${person.gender}</p>
	<p>${person.name eq "남푸름" }</p>

	<h3>리스트 받기</h3>
	<p>${list.get(0).name }</p>
	<!--출력 비교문 사용까지가 EL  -->
	
	<!-- 저장된 쿠키 기록을 갖고오는  방법 -->
	<p>${cookie }</p>
	<p>${cookie['JSESSIONID']}</p>
	<p>${cookie['JSESSIONID'].value}</p>
	
	<!-- 헤더 값 중에서 이전페이지를 뜻하는 referer를 통해 이전페이지값을 편하게 가져올수 있다 -->
	<p>${header }</p>
	<p>${header['referer']}</p>
	
	
	
	
</body>
</html>