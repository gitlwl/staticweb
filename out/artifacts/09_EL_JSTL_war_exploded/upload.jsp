<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/16
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--
 enctype="multipart/form-data" 表示提交的数据，以多段（每一个表单项一个数据段）的形式进行拼接，然后
 以二进制流的形式发给服务器
--%>
    <form action="http://localhost:8080/09_EL_JSTL/uploadServlet" method="post" enctype="multipart/form-data">
        用户名：<input type="text" name="username"> <br>
        头像：<input type="file" name="photo"> <br>
        <input type="submit" value="上传">

    </form>
</body>
</html>
