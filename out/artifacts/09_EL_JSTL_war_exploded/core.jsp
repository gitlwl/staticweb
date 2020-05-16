<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/16
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
      <c:set/>  set标签可以往域中保存数据
      域对象：setAttribute(key,value)
      scope属性设置保存到哪个域
      page表示PageContext域 默认值
      request表示Request域
      session表示Session域
      application表示ServletContext域

      var属性设置key是多少
      value属性设置值是多少
    --%>
    保存之前：${requestScope.abc} <br>
    <c:set scope="request" var="abc" value="abcValue"/>
    保存之后：${ requestScope.abc } <br>
    <hr>
    <%--
        <c:if/> if 标签 用来做if判断
        test属性表示判断的条件（使用el表达式输出）
    --%>
    <c:if test="${12==12}">
        <h1>12等于12</h1>
    </c:if>
</body>
</html>
