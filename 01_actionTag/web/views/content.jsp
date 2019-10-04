<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="header.jsp" %>  --%><!--지시자 include  -->
<!--위와 아래는 실행하면 똑같이 나옴 ,but 차이점은 위에 선언한 변수를 아래에서 사용이 불가 -->
<%
	request.setCharacterEncoding("utf-8");
%>
 <!--action include  -->
 <!--아래는 action tag의 장점  -->
<jsp:include page="header.jsp">    
	<jsp:param name="title" value="책정보"/>
</jsp:include>
<section>
	<%-- <%=name %> --%><!-- action include는 여기서 에러가 남. 선언된 변수를 쓸수 없음. 분리돼서 사용되기 때문에! <section>밑에서도 따로 선언을 해줘야 가능?  -->
	<table>
		<tr>
			<td>제목</td>
			<td>저자</td>
			<td>가격</td>
		</tr>
		<tr>
			<td>java</td>
			<td>유병승</td>
			<td>500</td>
		</tr>
		<tr>
			<td>oracle</td>
			<td>신지섭</td>
			<td>1000</td>
		</tr>
	</table>
</section>
</body>
</html>