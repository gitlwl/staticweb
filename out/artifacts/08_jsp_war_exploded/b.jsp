<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/7
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
        errorPage="/error500.jsp"
         language="java" %>
<!--
 errorpage 表示错误后自动跳转去的路径
 这个路径一般都是以斜杠打头，它表示请求地址http://ip:port/工程路径/
映射到代码的web目录
-->
<%--
  jsp的page指令可以修改jsp页面中一些重要的属性，或者行为
  language属性 表示Jsp翻译后是什么语言文件,暂时只支持java
  contentType  表示jsp返回的数据类型是什么，也是源码中response.setContentType()参数值
  pageEncoding 表示当前jsp页面文件本身的字符集
  import 跟java源代码一样，用于导包，导类
  -----------------------两个属性是给out输出流使用------------------------
  autoFlush 设置当前out输出流缓冲区满了之后，是否自动刷新冲级区。默认值是true
  buffer  设置out缓冲区的大小，默认是8kb
  -----------------------两个属性是给out输出流使用---------------------------
  errorPage  设置当jsp页面运行时出错，自动跳转去的错误页面路径。
  isErrorPage设置当前jsp页面是否是错误信息页面，默认是false,如果是true可以获取异常信息
  session 设置访问当前jsp页面，是否会创建HttpSession对象，默认是true
  extends 设置jsp翻译出来的java类默认继承谁
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    b.jsp页面


</body>
</html>
