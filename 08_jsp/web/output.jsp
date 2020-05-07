<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/7
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
       <%
//           out.write("out输出1<br>");
//           out.flush();
//           out.write("out输出2<br>");
//           //由于jsp翻译之后，底层源代码都是使用out来进行输出，所以一般情况下
//           //我们在jsp页面中统一使用out来进行输出，避免打乱页面输出内容的顺序
//            response.getWriter().write("response输出1<br>");
//            response.getWriter().write("response输出2<br>");

          out.write(12); //输出字符串没有问题

           out.print(12);//输出任意数据都没有问题，都转换成为字符串后调用的write输出
           //在jsp页面中，可以统一使用out.print()来进行输出

       %>
</body>
</html>
