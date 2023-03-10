<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3 style="text-align: center">게시글입니다.</h3>
	<hr>
	<center>
		<table width="500" cellpadding="0" cellspacing="0" border="1">
			<form action="modify" method="post">
				<input type="hidden" name="bId" value="${content_view.bId}">
				<tr>
					<td>번호</td>
					<td>${content_view.bId}</td>
				</tr>
				<tr>
					<td>히트</td>
					<td>${content_view.bHit}</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="bName"
						value="${content_view.bName}" readonly></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="bTitle"
						value="${content_view.bTitle}"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea rows="10" name="bContent">${content_view.bContent}</textarea></td>
				</tr>

				<tr>
					<td style="font-family: 돋음; font-size: 12">
						<div align="center">첨부파일</div>
					</td>
					<td style="font-family: 돋음; font-size: 12"><c:set var="bFile"
							value=" ${content_view.file}" /> <c:choose>
							<c:when test="${file != null}">
								<a href="download?filename=${content_view.file}">
									${content_view.file } </a>
							</c:when>
						</c:choose></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="수정">
						&nbsp;&nbsp; <a href="list">목록보기</a> &nbsp;&nbsp; <a
						href="delete?bId=${content_view.bId}&bName=${content_view.bName}">삭제</a>
						&nbsp;&nbsp; <a href="reply_view?bId=${content_view.bId}">답변</a></td>
				</tr>
			</form>
		</table>

		<hr>
		<center>
			<button onclick="location.href='/logout'">로그아웃</button>
		</center>
	</center>
</body>
</html>