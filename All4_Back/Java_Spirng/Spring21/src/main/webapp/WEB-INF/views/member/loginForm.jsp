<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<h1 align="center">로그인</h1>
	<FORM name="form" action="login" method="post">
		<table width="300px" height="100px" border="1" align="center"
			cellpadding="5" cellspacing="0">
			<tr align="center">
				<td align="center" bgcolor="blue"
					style="font-weight: bold; font-size: 18px; color:white;">아이디</td>
				<td><input type="text" name="user_id"></td>
			</tr>
			<tr align="center">
				<td align="center" bgcolor="blue"
					style="font-weight: bold; font-size: 18px; color:white;">비밀번호</td>
				<td><input type="password" name="user_pw"></td>
			</tr>
		</table>
		<div align="center" style="margin-top: 13px;">
			<button type="submit">로그인</button>
			<button type="button" onclick="location.href='/join'">회원가입</button>
		</div>

	</FORM>

</body>
</html>