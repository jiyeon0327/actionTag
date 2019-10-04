<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int su1=Integer.parseInt(request.getParameter("su1"));
	int su2=Integer.parseInt(request.getParameter("su2"));
	int result=0;
	for(int i=su1;i<su2;i++){
		result+=i;
	}
	request.setAttribute("result", result);
%>
<!--페이지 전환용  -->
<!-- 쿼리스트링 방식 -->
<%-- <jsp:forward page="result.jsp"> --%>

<!-- 1.${ value }: value는 공유객체(session,application,request:데이터를 보관하는 객체)인 key값을 써야 함 /parameter도 이런식으로 
		$    {param.value()} == $   {param.["key"]}
2.{}안에 연산자 사용 가능 (el안에 if의 조건식을 쓸때 이용함)
3.연산자 우선순위:3항연산자도 있음
4.공유객체에 대해서 자동으로 순회해서  제일 작은것부터 확장돼서 key값 일치하는 것을 갖고옴,
	그런데 동일한 객체일때는 바로 session scope에서 갖고옴=>el 내장객체
=>객체의 생존주기 크기 (범위) 순: application(context)>session>request>page

-->
<jsp:forward page="result.jsp">
	<jsp:param name="age" value="19"/>
</jsp:forward>