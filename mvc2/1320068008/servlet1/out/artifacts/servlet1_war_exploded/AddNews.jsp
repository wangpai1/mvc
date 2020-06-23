<!-- <%--
  Created by IntelliJ IDEA.
  User: 13200
  Date: 2020/6/9
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> -->
<html>
<head>
    <title>新闻编辑</title>
    <link rel="stylesheet" type="text/css" href="ueditor/themes/default/css/ueditor.css" />
    <link rel="stylesheet" type="text/css" href="css/Iframe.css" />
    <link rel="stylesheet" href="utilLib/bootstrap.min.css" type="text/css" media="screen" />
</head>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript">var ue = UE.getEditor('newsContent');</script>
<body>
<div class="table_con">
    <form action="SaveNewsServlet"  method="get" enctype="multipart/form-data">
        <table>
            <tr class="tb_title">
                <td width="94%" align="center">添加新闻</td>
                <td><input text-align="center" type="submit" value="提交"></td>
            </tr>
        </table>
        <table >
            <tr>
                <td width="10%">新闻ID</td>
                <td><input class="w" type="text" name="newsID" value="999"  readonly="true"/></td>
            </tr>
            <tr>
                <td width="10%">文章标题</td>
                <td ><input class="w" type="text" name="newsTitle"/></td>
            </tr>
            <tr>
                <td width="10%">作者</td>
                <td><input class="w" type="text" name="newsAuthor"/></td>
            </tr>
            <tr>
                <td width="10%">时间</td>
                <td><input class="w" type="text" name="newsDate"/></td>
            </tr>
            <tr>
                <td width="10%">类别</td>
                <td><input class="w" type="text" name="newsCategory"/></td>
            </tr>
            <tr>
                <td  width="10%">新闻内容</td>
<%--                <td>--%>
<%--                    <div class="text">--%>
<%--                        <jsp:include page="ueditor.jsp">--%>
<%--                            <jsp:param name="newsContent" value="${news.newsContent}"/>--%>
<%--                        </jsp:include>--%>
<%--                    </div>--%>

<%--                </td>--%>
                <td ><textarea name="newsContent" id="newsContent" style="width: 900px; height: 300px; margin: 0 auto;" ></textarea></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
