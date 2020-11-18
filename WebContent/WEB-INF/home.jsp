<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="background-color: #8c222c; width: 100%; height:30px; margin-top:-10px">
		<label style="color: #ffffff; margin-left: 100px; line-height: 30px">网罗天下图书&nbsp;&nbsp;&nbsp;传承中华文明</label>
		<a href="login.jsp" style="line-height: 30px; margin-left: 400px; text-decoration: none"><label style="color: #ffffff">登录/注册</label></a>
		<a href="login.jsp" style="line-height: 30px; margin-left: 50px; text-decoration: none"><label style="color: #ffffff">个人中心</label></a>
		<a href="login.jsp" style="line-height: 30px; margin-left: 50px; text-decoration: none"><label style="color: #ffffff">借书</label></a>
		<input type="text" value="${username }" name="username"/>
	</div>
	<div style="background-color: #f2f1ea; width: 100%; height: 100px">
		<div align="center" style="padding-top: 30px">
			<form action="${pageContext.request.contextPath }/bookInformation/search" method="post">
				<input type="text" style="height: 30px; width:400px" name="bookname"/>
				<button type="submit" style="border-radius: 7px; height: 35px; width: 100px; background-color: #8c222c; color: #ffffff">搜索</button>
			</form>
		</div>
		
	</div>

</body>
</html>