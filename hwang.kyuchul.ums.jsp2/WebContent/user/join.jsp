<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hwang.kyuchul.ums.service.UserService" %>
<%@ page import="hwang.kyuchul.ums.service.UserServiceImpl" %>
<%@ page import="hwang.kyuchul.ums.domain.User" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String userName = request.getParameter("userName");
	if(userName != null && !userName.equals("")){
		UserService userService = new UserServiceImpl();
		userService.join(userName);
%>
		<c:redirect url="../main.jsp?msgId=11"/>
<%
	}else{
%>
		<c:redirect url="../main.jsp?msgId=10"/>
<%
	}
%>

