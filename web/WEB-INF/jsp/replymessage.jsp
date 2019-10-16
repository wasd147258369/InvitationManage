
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>回复信息</title>
    <link rel="stylesheet" href="statics/css/main.css">
    <script type="text/javascript" src="statics/js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            if(${ts!=null}){
                alert('${ts}');
            }
        })
    </script>
</head>
<body>

<table cellspacing="2" cellpadding="2" border="1">
    <tr>
        <td colspan="3"><h2>回复信息列表</h2></td>
    </tr>
    <tr>
        <td colspan="3">
            <span id="a">
                <a href="${pageContext.request.contextPath}/addReply?id=${id}">添加回复</a>
                 &nbsp;&nbsp;&nbsp;
                <a href="${pageContext.request.contextPath}/invitations">返回帖子列表</a>
            </span>
        </td>
    </tr>
    <tr class="tou">
        <td width="300px">回复内容</td>
        <td width="100px">回复昵称</td>
        <td width="100px">发布时间</td>
    </tr>
    <c:forEach var="list" items="${reply}" varStatus="i">
        <tr <c:if test="${i.count%2==0}">style="background-color: aquamarine;" </c:if>>
            <td>${list.content}</td>
            <td>${list.author}</td>
            <td>
                <fm:formatDate value="${list.createdate}" pattern="yyyy-MM-dd"/>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
