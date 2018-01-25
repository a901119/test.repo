<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>UMS</title>
<style>
#section1{
 		margin: 0 auto;
 		text-align: center;
 }
#section2{
	padding-top:30px;
}
.btn-group{
	margin-bottom:50px;
	float:left;
}
table, th{
	text-align:center;					
}
</style>
</head>
<body>
<div>
	<div id="section1">
		<h3>U M S</h3>
	</div>
	
	<div id="section2">
		<form>
			<div>
				<%@ include file="user/msg.jsp" %>
				<input type="text" class="form-control" name="userName"
					placeholder="${msg }"/>
			</div>
			
			<div class="btn-group">
				<div class="btn">
					<button type="submit" formaction="main.jsp">
						<span>목록</span>
					</button>
				</div>
				
				<div class="btn">
					<button type="submit" formaction="user/join.jsp">
						<span>등록</span>
					</button>
				</div>
				
				<div class="btn">
					<button type="submit" formaction="user/correct.jsp">
						<span>수정</span>
					</button>
				</div>
				
				<div class="btn">
					<button type="submit" formaction="user/secede.jsp">
						<span>탈퇴</span>
					</button>
				</div>
			</div>	
			<br>
				
			<div>
				<jsp:include page="user/listUsers.jsp"/>
			</div>
			
		</form>
	</div>
</div>
</body>
</html>
