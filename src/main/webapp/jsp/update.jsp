<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>

	<form action="${pageContext.request.contextPath }/update.action" method="post">
		新闻主题：
		<input type="text" value="111">
		<input type="hidden" value="2" name="tid">
		<br>
		<input type="hidden" value="${nlist.id }" name="id">
		新闻标题：<input type="text"  name="title" value="${nlist.title}"><br>
		新闻内容：<input type="text" name="content" value="${nlist.content}"><br>
		作者：	<input type="text" name="zz" value="${nlist.zz}"><br>
		发布时间：<input type="date" name="createtime" value="<fmt:formatDate value="${nlist.createtime }" pattern="yyyy-MM-dd"/>"><br>
		<input type="submit" value="修改">
	
	</form>
	</center>
</body>
</html>