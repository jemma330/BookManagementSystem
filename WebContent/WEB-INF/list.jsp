<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<!-- 引入jquery -->
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>

	<!-- java script -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<div style="height: 100px">
	</div>
	<div style="padding-left: 300px; padding-right: 300px">
		<form action="${pageContext.request.contextPath }/bookInformation/rent" method="post">
			<table class="table table-hover">
				<tr>
					<td><b>书名</b></td>
					<td><b>作者</b></td>
					<td><b>总共数量</b></td>
					<td><b>剩余数量</b></td>
					<td></td>
				</tr>
				<c:forEach items="${bookList }" var="book">
					<tr>
						<td>${book.bookname }</td>
						<td>${book.author }</td>
						<td>${book.totalnumber }</td>
						<td>${book.currentnumber }</td>
						<td><button type="submit" value="${book.bookname }" id="rentButton">借阅</button></td>
					</tr>
				</c:forEach>
			</table>
		</form>
		
	</div>
	
</body>
</html>