<%--
  Created by IntelliJ IDEA.
  User: lambda
  Date: 2022/3/6
  Time: 下午7:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <%--表示清除浮动 row clearfix--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表——添加书籍</small>
                </h1>
            </div>
        </div>
        <form action="/book/addBook"  method="post">
            <%--其中需要注意的是name属性值必须要与实体类属性名保持一致，否则会出现空指针
            使用required表示表单必须写完之后才能提交--%>
            <div class="form-group">
                <label for="bookName">书籍名称</label>
                <input type="text"  name="bookName" class="form-control" id="bookName" required >
            </div>
            <div class="form-group">
                <label for="bookCounts">书籍数量</label>
                <input type="text" name="bookCounts" class="form-control" id="bookCounts" required >
            </div>
            <div class="form-group">
                <label for="detail">书籍描述</label>
                <input type="text" name="detail" class="form-control" id="detail" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-group" value="添加">
            </div>

        </form>

</div>
</body>
</html>
