<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/8
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            width: 650px;
        }
    </style>
</head>
<body>
        <%--练习一：在jsp页面中输出九九乘法表--%>
        <h1 align="center">九九乘法表</h1>
        <table align="center">
    <%for (int i=1;i<=9;i++){ %>
          <tr>
              <%for (int j=1;j<=i;j++){%>
              <td>
                  <%=j+"x"+i+"="+(i*j)%>
              </td>
          <%}%>
          </tr>
        <%}%>
        </table>
</body>
</html>
