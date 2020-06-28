<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fn1(obj) {
			document.getElementById("p1").value=obj
		var lastPage = '${nlist.lastPage}'
		if(obj>=1 && obj<=lastPage){
			document.getElementById("f1").action=
				"${pageContext.request.contextPath }/show.action"
				document.getElementById("f1").submit()
		}
	}
	
</script>
</head>
<body>
<center>

	<a href="${pageContext.request.contextPath }/toadd.action">添加</a>
	<form action="" method="post" id="f1">
	<input type="hidden" name="pageNum" value="${nlist.pageNum }" id="p1">
	<table border="1px" cellspacing="0px">
	    <tr>
	    	<td>新闻编号</td>
	    	<td>新闻主题</td>
	    	<td>新闻标题</td>
	    	<td>新闻内容</td>
	    	<td>发布时间</td>
	    	<td>作者</td>
	    	<td>操作</td>
	    </tr>
	    <c:forEach items="${nlist.list }" var="n">
	    <tr>
	    	<td>${n.id }</td>
	    	<td>${n.topics.topic }</td>
	    	<td>${n.title }</td>
	    	<td>${n.content }</td>
	    	<td>
	    		<fmt:formatDate value="${n.createtime }" pattern="yyyy-MM-dd"/>
	    	</td>
	    	<td>${n.zz }</td>
	    	<td>
	    		<a href="${pageContext.request.contextPath }/toupdate.action?id=${n.id }">修改</a>
	    		<a href="${pageContext.request.contextPath }/delete.action?id=${n.id }">删除</a>
	    	</td>
	    </tr>
	    </c:forEach>
	</table>
	页码：${nlist.pageNum }/${nlist.lastPage } 总条数:${nlist.total }
	<input type="button" onclick="fn1(${nlist.firstPage})"value="首页">
	<input type="button" onclick="fn1(${nlist.prePage})"value="上一页">
	<input type="button" onclick="fn1(${nlist.nextPage})"value="下一页">
	<input type="button" onclick="fn1(${nlist.lastPage})"value="尾页">
	</form>
	</center>
</body>
</html>