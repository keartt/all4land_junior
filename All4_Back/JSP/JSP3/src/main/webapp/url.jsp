<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>&lt;c:url&gt;</h3>
	<!--  원하는 url 로 파라미터 값을 넣어서 이동 가능  -->
	<c:url value="choice.jsp" var="target">
		<c:param name="sel">a</c:param>
	</c:url>

	<hr>
	단순 출력 : ${target }
	<br> 링크 연동 :
	<a href="${target }">choose.jsp-a선택</a>
</body>
</html>