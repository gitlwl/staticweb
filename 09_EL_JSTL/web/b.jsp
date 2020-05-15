<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/15
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <%
            //往四个域中都保存了相同的key的数据
            //当四个域中都有相同的key的数据的时候，EL表达式会按照四个域的从小到大的顺序去进行搜索，找到就输出
            request.setAttribute("key","request");
            session.setAttribute("key","session");
            application.setAttribute("key","application");
            pageContext.setAttribute("key","pageContext");
        %>
        ${key }

</body>
</html>
