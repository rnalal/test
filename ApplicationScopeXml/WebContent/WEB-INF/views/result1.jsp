<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>resultt1.jsp</h2>
	<h3>application scope 에서 객체 가져옴</h3>
	<h3>ByType</h3>
	<h3>applicationBean1.data1 : ${requestScope.applicationBean1.data1 }</h3>
	<h3>applicationBean1.data2 : ${requestScope.applicationBean1.data2 }</h3>
	<h3>ByName</h3>
	<h3>applicationBean2.data3 : ${requestScope.applicationBean2.data3 }</h3>
	<h3>applicationBean2.data4 : ${requestScope.applicationBean2.data4 }</h3>
</body>
</html>