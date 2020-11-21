<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>

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
	
	<div style="margin-left: 400px; margin-right: 400px; margin-top: 100px; border: solid thin;">
		<form onsubmit="return check()" action="${pageContext.request.contextPath }/register.do" method="post">
		<div class="form-group">
			<label>User Name</label> 
			<input type="text" class="form-control" id="username" name="username" placeholder="User Name" required="required">
		</div>
		<div class="form-group">
			<label>Password</label>
			<input type="password" class="form-control" id="password" name="password" placeholder="Password" required="required">
		</div>
		<div class="form-group">
			<label>Password Again</label>
			<input type="password" class="form-control" id="password_again" name="password_again" placeholder="Password Again" required="required">
		</div>
		<div class="form-group">
			<label>gender</label><br/>
			<input type="radio" name="gender" value="Male" required="required">Male
			<input type="radio" name="gender" value="Female" required="required">Female
		</div>
		<div class="form-group">
			<label>Phone Number</label>
			<input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number" required="required">
		</div>
		<div class="form-group">
			<label>Email</label>
			<input type="email" class="form-control" name="email" placeholder="Email" required="required">
		</div>
			<button type="submit" class="btn btn-default" style="margin-left: 350px">Submit</button>
		</form>
	</div>
<script type="text/javascript">
function check(){
	//验证用户名
	var name=document.getElementById("username").value;
	if(name.length<4||name.length>14)
    {
        alert("The length of the user name must be between 6 and 14 words！");
        return false;
    }
	if(name.charAt(0)<'A'||n.charAt(0)>'z')
    {
        alert("The user name must start with a letter!");
        return false;
    }
	//验证密码
	var pass = document.getElementById("password").value;
	var pasa = document.getElementById("password_again").value;
	if(pass.length<6||pass.length>16)
    {
        alert("The length of the password must be between 6 and 16 words！");
        return false;
    }
	if(pass!=pasa){
		alert("The two passwords must be the same!");
		return false;
	}
	//验证手机号
	var p = document.getElementById("phone");
    p=p.value;
    if(p.length!=11)
    {
        alert("Please enter the correct mobile phone number！");
        return false;
    }
}
</script>
</body>
</html>