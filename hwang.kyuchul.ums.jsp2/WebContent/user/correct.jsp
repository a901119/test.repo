<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hwang.kyuchul.ums.service.UserService" %>
<%@ page import="hwang.kyuchul.ums.service.UserServiceImpl" %>
<%@ page import="hwang.kyuchul.ums.domain.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String userNo = request.getParameter("userNo");
	String userName = request.getParameter("userName");
	if((userNo != null && !userNo.equals(""))
			&& userName != null && !userName.equals("")){
		UserService userService = new UserServiceImpl();
		User user = userService.userFind(Integer.parseInt(userNo));
		user.setUserName(userName);
		userService.correct(user);
%>
		<c:redirect url="../main.jsp?msgId=21"/>
<%
	}else{
%>
		<c:redirect url="../main.jsp?msgId=20"/>
<%
	}
%>