<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>帖子列表</title>
    <link rel="stylesheet" href="statics/css/main.css">
</head>
<body>

<h2>帖子</h2>
<table cellspacing="2" cellpadding="2" border="1">
    <tr>
        <td colspan="5">
            <form action="" method="post">
                帖子标题：<input type="text" name="" value=""><input type="submit" value="搜索">
            </form>
        </td>
    </tr>
    <tr class="tou">
        <td>标题</td>
        <td>内容摘要</td>
        <td width="150px">作者</td>
        <td width="150px">发布时间</td>
        <td width="150px">操作</td>
    </tr>
    <c:forEach var="list" items="${invitations}" varStatus="i">
        <tr <c:if test="${i.count%2==0}">style="background-color:aquamarine;"</c:if>>
            <td>${list.title}</td>
            <td>${list.summary}</td>
            <td>${list.author}</td>
            <td>
                <fm:formatDate value="${list.createdate}" pattern="yyyy-MM-dd"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/reply?id=${list.id}">查看回复</a>||
                <a href="${pageContext.request.contextPath}/invitationDelete?id=${list.id}"
                   onclick="return confirm('确定删除该条发帖及相关回复？');">删除</a>
            </td>
        </tr>
    </c:forEach>
    <tr <c:if test="${ts==null}">style="display: none"</c:if>>
        <td colspan="5" style="color: red;">${ts==null?"":ts}</td>
    </tr>
</table>

<p style="width:850px;margin: 0px auto;">
    <span>第${currentPageNo}/${totalPageCount}页</span>
    <span style="float: right;">
        <c:if test="${currentPageNo>1}">
            <a href="invitations?pageIndex=1">首页</a>
            <a href="invitations?pageIndex=${currentPageNo-1}">上一页</a>
        </c:if>
       <c:if test="${currentPageNo<totalPageCount}">
           <a href="invitations?pageIndex=${currentPageNo+1}">下一页</a>
           <a href="invitations?pageIndex=${totalPageCount}">末页</a>
       </c:if>
    </span>
</p>
</body>
</html>
