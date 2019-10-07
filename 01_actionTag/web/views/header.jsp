<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String name="유병승";
	request.setCharacterEncoding("utf-8");
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	ul{list-style-type:none;}
	li{display:inline;}

</style>
<body>
		<header>
		<h3>헤더</h3>
		<ul>
			<li>main</li>
			<li>notice</li>
			<li>board</li>
		</ul>
		<h3>${param.title}</h3><!--name값이 title이니까   -->
	</header>

	
</body>




</html>