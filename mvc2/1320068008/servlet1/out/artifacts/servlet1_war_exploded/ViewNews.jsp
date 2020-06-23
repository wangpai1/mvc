<%--
  Created by IntelliJ IDEA.
  User: 13200
  Date: 2020/6/9
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新闻详情</title>
<%--    <link rel="stylesheet" type="text/css" href="./ueditor/themes/default/css/ueditor.css" />--%>
    <link rel="stylesheet" type="text/css" href="css/Iframe.css" />
    <link rel="stylesheet" href="utilLib/bootstrap.min.css" type="text/css" media="screen" />
</head>
<%--<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>--%>
<%--<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js"> </script>--%>
<%--<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>--%>
<%--<script type="text/javascript">var ue = UE.getEditor('newsContent');</script>--%>

<body>
<jsp:include page="News.jsp">
    <jsp:param name="news" value="${news}"/>
</jsp:include>
<%--<div class="table_con">--%>


<%--<table>--%>
<%--    <tr class="tb_title">--%>
<%--        <td width="100%" text-align="center">新闻详情</td>--%>
<%--    </tr>--%>
<%--</table>--%>
<%--<table >--%>
<%--    <tr>--%>
<%--        <td width="10%">新闻ID</td>--%>
<%--        <td>${news.newsID}</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td width="10%">文章标题</td>--%>
<%--        <td >${news.newsTitle}</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td width="10%">作者</td>--%>
<%--        <td>${news.newsAuthor}</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td width="10%">时间</td>--%>
<%--        <td>${news.newsDate}</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td width="10%">类别</td>--%>
<%--        <td>${news.newsCategory}</td>--%>
<%--    </tr>--%>
<%--    <tr class="no" border-bottom-color="whitesmoke">--%>
<%--        <td  width="10%">新闻内容</td>--%>
<%--        <td>--%>
<%--            <div class="text">--%>

<%--            </div>--%>

<%--        </td>--%>
<%--&lt;%&ndash;        <td ><textarea class="text" name="newsContent" readonly="true" id="newsContent" style="width: 900px; height: 300px; margin: 0 auto;" >${news.newsContent}</textarea></td>&ndash;%&gt;--%>
<%--    </tr>--%>
<%--</table>--%>
<%--</div>--%>
</body>
</html>
