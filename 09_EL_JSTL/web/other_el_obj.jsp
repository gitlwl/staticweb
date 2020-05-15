<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/15
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
      输出请求参数username的值：${param.username} <br>
      输出请求参数password的值：${param.password} <br>
      输出请求参数username的值：${paramValues.username[0]} <br>
      输出请求参数hobby的值：${paramValues.hobby[0]} <br>
      输出请求参数hobby的值：${paramValues.hobby[1]} <br>

      <hr>
     输出请求头User-Agent的值：${header["User-Agent"]} <br>
     输出请求头Connection的值：${header.Connection} <br>
     输出请求头User-Agent的值：${headerValues["User-Agent"][0]} <br>
      <hr>
    获取cookie的名称：${cookie.JSESSIONID.name} <br>
    获取cookie的值：${cookie.JSESSIONID.value}<br>
      <hr>
      <%--
       initParam获取web.xml 里面的contex-param
      --%>
   输出&lt;Context-param&gt;username的值：${initParam.username} <br>
   输出&lt;Context-param&gt;url的值：${initParam.url} <br>

</body>
</html>
