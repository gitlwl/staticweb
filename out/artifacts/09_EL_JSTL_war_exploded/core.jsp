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
    <hr>
    <%--
        <c:choose> <c:when> <c:otherwise> 标签
        作用：多路判断，跟switch...case...default 非常接近
        choose 标签开始选择判断
        when标签表示每一种判断情况
           test属性表示当前判断情况的值
         otherwise标签表示剩下的情况


         注：标签里不能使用html注释，要使用jsp注释
             when标签的父标签一定要是choose标签

    --%>

    <%
        request.setAttribute("height",178);
    %>
    <c:choose>
        <c:when test="${requestScope.height>190}">
            <h2>小巨人</h2>
        </c:when>

        <c:when test="${requestScope.height>180}">
            <h2>很高</h2>
        </c:when>

        <c:when test="${requestScope.height>170}">
            <h2>还可以</h2>
        </c:when>

        <c:otherwise>
            <h2>剩下小于170的情况</h2>
        </c:otherwise>
    </c:choose>

    <hr>

</body>
</html>
