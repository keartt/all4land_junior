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
    <h3>&lt;c:import&gt;</h3>
    다음은 import를 이용해 포함한 것입니다
    <hr>
	<!--  set.jsp 의 내용을 import 를 통해 페이지에 넣음 -->
    <c:import url="set.jsp" var="myurl" />
    <c:out value="${myurl }" escapeXml="false" />
</body>
</html>