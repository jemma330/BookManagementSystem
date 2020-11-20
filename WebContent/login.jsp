<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<div style="border: solid thin; margin-left: 50px" align="center">
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active">
			<a href="#home" aria-controls="home" role="tab" data-toggle="tab">用户</a></li>
			<li role="presentation">
			<a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">管理员</a></li>
		</ul>

		<div class="tab-content">
			<!-- 用户登录标签页 -->
			<div role="tabpanel" class="tab-pane active" id="home">
				<form class="form-inline" action="${pageContext.request.contextPath }/userLogin" method="post">
					<div class="form-group" style="margin-top: 20px">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						<input type="text" class="form-control" name="username">
					</div>
					<br/>
					<div class="form-group" style="margin-top: 20px">
						<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
						<input type="password" class="form-control" name="password">
					</div>
					<br/>
					<button type="submit">登录</button>
				</form><br/>
				<a href="register.jsp">注册</a>
			</div>
			<!-- 管理员登录标签页 -->
			<div role="tabpanel" class="tab-pane" id="profile" style="margin-left: 50px">
				<form class="form-inline" action="${pageContext.request.contextPath }/adminLogin" method="post">
					<div class="form-group" style="margin-top: 20px; margin-left: 30px">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						<input type="text" class="form-control" name="adminname">
					</div>
					<br/>
					<div class="form-group" style="margin-top: 20px">
						<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
						<input type="password" class="form-control" name="password">
					</div>
					<br/>
					<button type="submit">登录</button>
				</form>
			</div>
		</div>

	</div>
</body>
</html>