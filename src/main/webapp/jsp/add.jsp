<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>

	<form action="${pageContext.request.contextPath }/add.action" method="post">
		新闻主题：<input type="text">
		<input type="hidden" name="tid" value="3">
		</select><br>
		新闻标题：<input type="text"  name="title"><br>
		新闻内容：<input type="text" name="content"><br>
		作者：	<input type="text" name="zz"><br>
		发布时间：<input type="date" name="createtime"><br>
		<input type="submit" value="提交">
	
	</form>
	</center>
</body>
</html>