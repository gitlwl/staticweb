<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/7
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <%--
        jsp的九大内置对象

      request   请求对象
      responses 响应对象
      pageContext jsp的上下文对象
      session 会话对象
      application  ServletContext对象
      config    ServletConfig对象
      out      jsp输出流对象
      page   指向当前jsp的对象
      exception  异常对象

      四个域对象
      pageContext(PageContextImpl类)  当前jsp页面范围内有效
      request（HttpServletRequest类） 一次请求内有效
      session（HttpSession类） 一个会话范围内有效（打开浏览器访问浏览器，直到关闭浏览器）
      application（ServletContext类）整个web工程范围内都有效（只要web工程不停止，数据都在）
      域对象是可以像Map一样存取数据的对象，四个域对象功能一样，不同的是它们对数据的存取范围
        --%>
        <h1>scope.jsp页面</h1>
        <%
            //往四个域中都分别保存了数据
            pageContext.setAttribute("key","pageContext");
            request.setAttribute("key","request");
            session.setAttribute("key","session");
            application.setAttribute("key","application");
        %>
        pageContext域是否有值：<%=pageContext.getAttribute("key")%> <br>
        request域是否有值：<%=request.getAttribute("key")%> <br>
        session域是否有值：<%=session.getAttribute("key")%> <br>
        application域是否有值：<%=application.getAttribute("key")%> <br>

        <%
            request.getRequestDispatcher("/scope2.jsp").forward(request,response);
        %>
</body>
</html>
