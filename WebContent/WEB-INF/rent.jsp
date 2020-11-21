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
	
	<!-- 导航栏 -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">Login/Register<span class="sr-only">(current)</span></a></li>
					<li><a href="${pageContext.request.contextPath }/home">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Personal Center<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li style="margin-right: 20px; color:#777777;margin-top: 15px"><B>Hello,${username }</B></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Personal Center<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 导航栏结束 -->
		
	<form action="${pageContext.request.contextPath }/rentbookInformation.do" class="form-horizontal" style="margin-top: 100px; margin-right:400px; margin-left:300px">
		<div style="margin-bottom: 30px; font-size: 20px" align="center">
			<label>Borrowing information</label>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Book ID</label>
			<div class="col-sm-10">
				<c:forEach items="${booklist }" var="book">
					<input type="text" class="form-control" name="bookid" value="${book.bookid }" readonly="readonly">
				</c:forEach>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Book Name</label>
			<div class="col-sm-10">
				<c:forEach items="${booklist }" var="book">
					<input type="text" class="form-control" name="bookname" value="${book.bookname }" readonly="readonly">
				</c:forEach>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">publisher</label>
			<div class="col-sm-10">
				<c:forEach items="${booklist }" var="book">
					<input type="text" class="form-control" name="publisher" value="${book.publisher }" readonly="readonly">
				</c:forEach>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">User Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="username" value="${username }" readonly="readonly">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Borrowing Time</label>
			<div class="col-sm-10">
				<div class="radio-inline">
					<input type="radio" name="time" value="15" required="required">15 days
					<input type="radio" name="time" value="30" required="required" style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30 days
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label> <input type="checkbox" required="required">Remember me
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
		</div>
	</form>

</body>
</html>