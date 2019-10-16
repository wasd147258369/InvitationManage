
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>添加回复</title>
    <link rel="stylesheet" href="statics/css/main.css">
    <script type="text/javascript" src="statics/js/jquery-1.12.4.js"></script>
    <script type="text/javascript">

        function tj() {
            var textarea=$("#textarea").val();
            var author=$("#author").val();

            if (textarea=="" || textarea==null){
                alert("回复内容不能为空！");
                return false;
            }else if(author==""||author==null){
                $("#author").val("匿名用户");
                return true;
            }
            return true;
        }

    </script>
</head>
<body>

<form action="${pageContext.request.contextPath}/saveReply" method="post" onsubmit="return tj();">
<table cellspacing="2" cellpadding="2" border="1">
    <tr>
        <td colspan="2" class="center tou">
            <h2>添加回复</h2>
        </td>
    </tr>
    <tr>
        <td width="100px">回复内容：</td>
        <td width="300px">
            <textarea rows="6" cols="45" name="content" id="textarea"></textarea>
        </td>
    </tr>
    <tr>
        <td width="100px">回复昵称：</td>
        <td width="300px"><input type="text" name="author" id="author" style="width: 300px;"></td>
    </tr>
    <tr>
        <td colspan="2" class="center">
            <input type="hidden" name="invId" value="${id}">
            <input type="submit" value="提交">
            &nbsp;&nbsp;&nbsp;
            <input type="button" onclick="javascript:history.go(-1);" value="返回">
        </td>
    </tr>
</table>
</form>

</body>
</html>
