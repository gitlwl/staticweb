<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/7
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <%--
    练习：
 <!--
   声明脚本：
   声明脚本的格式是：<%! 声明java代码 %>  极少使用
   作用：可以给jsp翻译出来的Java类定义属性和方法甚至静态代码块，内部类等
   -->
   --%>
 <%--   1 声明类属性--%>
    <%!
        private Integer id;
        private String name;
        private static Map<String ,Object> map;

    %>
<%--2 声明static静态代码块--%>
        <%!
            static{
                map=new HashMap<String,Object>();
                map.put("key1","value1");
                map.put("key2","value2");
                map.put("key3","value3");
            }

        %>
<%-- 3声明类方法--%>
        <%!
          public int abc(){
              return 12;
          }
        %>
   <%-- 4声明内部类--%>
        <%!
          public static class A{
              private Integer id=12;
              private String abc;
          }
        %>

    <%--
     表达式脚本：<%=表达式%>   常用
     作用:在jsp页面上输出数据
     表达式脚本特点
        1-所有的表达式脚本都会被翻译到_jspService()方法中
        2-表达式脚本都会被翻译成为out.print()输出到页面上
        3-由于表达式脚本翻译的内容都在_jspService()方法中，所以_jspService()方法中的对象都可以直接使用
        4-表达式脚本中的表达式不能以分号结束
    --%>
    <%--输出整型--%>
   <%=12 %>
   <%--输出浮点型--%>
   <%=12.22 %>
   <%--输出字符串--%>
   <%="梅西" %>
   <%--输出对象--%>
   <%=map %>


   <%=request.getParameter("username") %>
   <%--
       代码脚本：
       <%
        Java语句
       %>
       作用：可以在jsp页面中，编写我们自己需要的功能，写的是java语句

       代码脚本的特点：
    1代码脚本翻译之后都在_jspService方法中
   2代码脚本由于翻译到_jspService方法中，所以_jspService方法中的现有对象都可以直接使用
   3还可以由多个代码脚本块组合完成一个完整的Java语句
   4代码脚本还可以和表达式脚本一起组合使用，在jsp页面上输出数据
      --%>

<%--代码脚本 if语句--%>
   <%
      int i=12;
      if (i==12){
          
   %>
      <h1>梅西</h1>

   <%
      }else {
   %>
        <h1>C罗</h1>
   <%
      }
   %>
   <br>
   <%--代码脚本 for循环语句--%>
   <table border="1" cellspacing="0">
    <%
       for (int j=0;j<10;j++){

    %>
       <tr>
           <td>第 <%=j+1%> 行</td>
       </tr>

   <%
       }
   %>
   </table>
   <%--翻译后的java文件中_jspService方法内的代码都可以写--%>
    <%
        String username = request.getParameter("username");
        System.out.println("用户名的请求参数值是："+username);

    %>

</body>
</html>
