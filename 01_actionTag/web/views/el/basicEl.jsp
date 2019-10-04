<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>기본 EL표현식 활용하기!</h1>
	<!-- 1.${ value }: value는 공유객체(session,application,request:데이터를 보관하는 객체)인 key값을 써야 함 /parameter도 이런식으로 
		$  {param.value()} == $  {param.["key"]}
		2.{}안에 연산자 사용 가능 (el안에 if의 조건식을 쓸때 이용함)
		3.연산자 우선순위:3항연산자도 있음
		4.공유객체에 대해서 자동으로 순회해서  제일 작은것부터 확장돼서 key값 일치하는 것을 갖고옴,
		그런데 동일한 객체일때는 바로 session scope 이런식으로 갖고옴=>el 내장객체
		=>객체의 생존주기 크기 (범위) 순: application(context)>session>request>page
-->
	<%
		String name="유병승";
		int su=19;
		int su2=40;
		//request.setAttribute("name", name);//이렇게 공유객체에 넣어줘야만 밑에 p태그처럼 불러올수 있음
		session.setAttribute("name", name);
		//request,session 모두 찾을수 있음
		request.setAttribute("su",su);
		request.setAttribute("su2", su2);
	%>
	<!-- 기본적인el표현식-->
	<%-- <%=name %> --%><!-- 그냥 변수를 갖고온것. 여기서 4번째 갖고올려면 request.getattribute로 -->
	<p>${name}</p>
	<!-- name은 공유객체에 넣은 게 없어 그래서 오류나!!! setAttribute해서 넣은 것만 가능하다!-->
	<p>공유객체는 page->request->session->application 이 객체들에 setAttribute한 값만 찾음!key값으로 찾는다.</p>
	
	<br>
	<h3>EL표현식 연산</h3>
	<p>EL표현식 {} 안에 연산처리가 가능하다!</p>
	<p>공유객체(page,request,session,application)에 들어가 있는 값 또는 리터럴값(문자자체에 들어가있는 값을 말함) 모두 사용이 가능</p>
	<p>더하기 연산: ${10+20}</p>
	<!-- 리터럴값 -->
	<p>변수 이용 더하기: ${su+30}</p>
	<p>변수만 이용더하기:${su+su2 }</p>
	<p>빼기 :${su-su2}</p>
	<p>나누기:${su/su2}</p>
	<!--중간에  문자를 쓸 때 띄어쓰기 -->
	<p>나누기:${su div su2 }</p>
	<p>곱하기:${su * su2}</p>	
	<p>나머지:${su%su2 }</p>
	<p>나머지:${su mod su2 }</p>
	
</body>
</html>