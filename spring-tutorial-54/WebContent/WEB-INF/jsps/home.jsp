<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hi there!
<br>
From Session <%=session.getAttribute("sessionName") %>
<br>
From ModelAndView:<%=request.getAttribute("requestName") %>
<br>

request (using EL): ${requestName}
<br>
<c:out value="${requestName}"></c:out>
</body>
</html>