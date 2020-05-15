<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/15
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <%--
       request.getScheme()可以获取请求的协议
       request.getServerName()获取请求的服务器ip或域名
       request.getServerPort()获取请求的服务器端口号
       request.getContextPath()获取当前工程路径
       request.getMethod()获取请求的方式：get post
       request.getRemoteHost()获取客户端的ip地址
       session.getId()获取会话的唯一标识
        --%>
        <%
                pageContext.setAttribute("req",request);
        %>
        <%=request.getScheme()%> <br>
        协议： ${req.scheme}<br>
        服务器ip: ${pageContext.request.serverName}<br>
        服务器端口: ${pageContext.request.serverPort}<br>
        获取工程路径：${pageContext.request.contextPath} <br>
        获取请求方法： ${pageContext.request.method}<br>
        获取客户端ip地址：${pageContext.request.remoteHost} <br>
        获取会话的id编号：${pageContext.session.id} <br>
</body>
</html>
