<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: lambda
  Date: 2022/3/6
  Time: 下午3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--bootstrap美化页面--%>
<html>
<head>
    <title>书籍展示</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <%--表示清除浮动 row clearfix--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表——显示所有书籍</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <%--跳转到指定的toAddBook页面--%>
                <a  class="btn btn-primary" href="/book/toAddBook" >添加书籍</a>
                <a  class="btn btn-primary" href="/book/allBook" >显示全部书籍</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <%--查询书籍--%>
               <form   action="/book/queryBook" method="post" style="float: right">
                   <span style="color: red" >${error}</span>
                   <input type="text" class="form-control"name="queryBookName" placeholder="请输入要查询的书籍名称">
                   <input type="submit" value="查询" class="btn btn-primary">
               </form>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍描述</th>
                        <th>操作</th>
                    </tr>
                </thead>

                <%--书籍从数据库中查出来，需要从list中遍历出来--%>
                <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>${book.detail}</td>
                                <td>

                                        <%--传递要修改书籍的id--%>
                                    <a href="/book/toUpdateBook?id=${book.bookID}">修改</a>
                                    &nbsp; | &nbsp;
                                    <a href="/book/deleteBook/${book.bookID}"> 删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
