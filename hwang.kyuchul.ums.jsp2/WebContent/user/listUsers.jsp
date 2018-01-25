<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hwang.kyuchul.ums.service.UserService" %>
<%@ page import="hwang.kyuchul.ums.service.UserServiceImpl" %>
<%@ page import="hwang.kyuchul.ums.domain.User" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	UserService userService = new UserServiceImpl();
	List<User> users = userService.userLists();
	pageContext.setAttribute("users",users);
%>

<table class="table">
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>등록일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="user" items="${users }">
		<tr>
			<td>
			<input type="radio" name="userNo" value="${user.userNo }"/>
			${user.userNo }
			</td>
			<td>${user.userName }</td>
			<td>${user.regDate }</td>	
		</tr>
		</c:forEach>
	</tbody>
</table>