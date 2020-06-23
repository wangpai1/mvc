<%--
  Created by IntelliJ IDEA.
  User: 13200
  Date: 2020/6/8
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新闻管理</title>
    <link rel="stylesheet" type="text/css" href="css/Iframe.css" />
    <link rel="stylesheet" href="utilLib/bootstrap.min.css" type="text/css" media="screen" />
</head>

<body>
<span class="cp_title">新闻管理</span>
<div class="add_cp">
    <a href="AddNews.jsp">+添加新闻</a>
</div>
<div class="table_con">
    <div class="table_con">
        <table>
            <tr class="tb_title">
                <td width="5%">ID</td>
                <td width="10%">标题</td>
                <td width="30%" class="cont">内容</td>
                <td width="12%">作者</td>
                <td width="10%">时间</td>
                <td width="7%">类别</td>
                <td width="26%">操作</td>
            </tr>
            <c:forEach var="news" items="${lstNews}" >
                <tr>
                    <td width="5%">${news.getNewsID()}</td>
                    <td width="10%" class="cont">${news.getNewsTitle()}</td>
                    <td width="30%" class="cont">${news.newsContent} </td>
                    <td width="12%" class="cont">${news.newsAuthor}</td>
                    <td width="10%">${news.newsDate}</td>
                    <td width="7%" class="cont">${news.newsCategory}</td>
                    <td width="26%">
                        <a href="EditNewsServlet?newsID=${news.newsID}" class="del_btn Btn" >编辑</a>
                        <a href="ViewNewsServlet?newsID=${news.newsID}" class="del_btn Btn" >查看</a>
                        <a href="DeleteNewsServlet?newsID=${news.newsID}" class="del_btn Btn DBtn">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>

