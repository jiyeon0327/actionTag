<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>bean을 활용하여 데이터를 저장하기</h2>
	<!-- 1.jsp:useBean태그를 이용해서 객체를 페이지에 생성함 -->
	<%-- <jsp:useBean id="person" class="action.model.vo.Person" scope="request"/> --%>
	<jsp:useBean id="p" class="action.model.vo.Person" scope="request"/><!--useBean의 id값과 서블릿의 set attribute key값이 같아야 나옴   -->
	이름:<jsp:getProperty property="name" name="p"/><!-- 아래 3개는 출력용 -->
	나이:<jsp:getProperty property="age" name="p"/>
	성별:<jsp:getProperty property="gender" name="p"/>
	<br>	
	<h3> 생성된 useBean객체 값 넣기 (직접 value값에 셋팅하는 법)</h3>
	<jsp:setProperty property="name" name="p" value="신지섭"/>
	<jsp:setProperty property="age" name="p" value="27"/>
	<jsp:setProperty property="gender" name="p" value="남"/>
	이름:<jsp:getProperty property="name" name="p"/>   
	나이:<jsp:getProperty property="age" name="p"/>
	성별:<jsp:getProperty property="gender" name="p"/>
	<br>
	<h3>파라미터를 useBean에 저장하기</h3>
	<!--param: request 속성에 있는 값이랑 일치한 값을 불러와 수정값으로 사용 -->
	<jsp:useBean id="p2" class="action.model.vo.Person" scope="request"/>
	<jsp:setProperty property="name" name="p2" param="name"/>
	<jsp:setProperty property="age" name="p2" param="age"/>
	<jsp:setProperty property="gender" name="p2" param="gender"/>
	이름:<jsp:getProperty property="name" name="p2"/>
	나이:<jsp:getProperty property="age" name="p2"/>
	성별:<jsp:getProperty property="gender" name="p2"/>
	
	<!-- tag:속성으로 모든게 이루어짐  -->
	
	<h2>include 실습</h2>
<%-- 	<jsp:include>는 아래서 이용해서 쓰지 못함!! --%>
	<!-- include,param은 모두 key value값으로 넘길수 있음 -->
</body>
</html>