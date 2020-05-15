<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/15
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
      //值为null值的时候，为空
        request.setAttribute("emptyNull",null);
        //值为空串的时候，为空 不能有空格
        request.setAttribute("emptyStr","");
        //值是Object类型数组，长度为零的时候
        request.setAttribute("emptyArr",new Object[]{});
        //list 集合，元素个数为零
        List<String> list=new ArrayList<>();
        request.setAttribute("emptyList",list);
       // list.add("aaaa");

        //map集合，元素个数为零
        Map<String,Object> map=new HashMap<String,Object>();
        //map.put("key1","value1");
        request.setAttribute("emptyMap",map);

    %>
   ${empty emptyNull}<br>
    ${empty emptyStr}<br>
    ${empty emptyArr}<br>
    ${empty emptyList}<br>
    ${empty emptyMap}<br>
</body>
</html>
