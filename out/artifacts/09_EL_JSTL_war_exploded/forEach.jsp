<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="com.atguigu.pojo.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Messi
  Date: 2020/5/16
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
          <%--
            遍历1到10输出
             begin属性设置开始的索引
             end设置结束的索引
             var属性表示循环的变量,也是当前正在遍历到的数据
          --%>
 <table border="1">
    <c:forEach begin="1" end="10" var="i">
        <tr>
            <td>第${i}行</td>
        </tr>
    </c:forEach>
 </table>

          <hr>
    <%--
     遍历Object数组
     for(Object item : arr)
     item表示遍历的数据源，遍历的集合
     var表示当前遍历到的数据
    --%>
    <%
        request.setAttribute("arr",new String[]{"18314545302","18314545301","18314545300"});
    %>
    <c:forEach items="${requestScope.arr}" var="item">
        ${item} <br>
    </c:forEach>
          <hr>
    <%
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("key1","value1");
        map.put("key2","value2");
        map.put("key3","value3");
//        for (Map.Entry<String,Object> entry:map.entrySet()){
//
//        }
        request.setAttribute("map",map);
    %>
    <c:forEach items="${requestScope.map }" var="entry">
         <h1>${ entry.key} = ${entry.value}</h1>
    </c:forEach>

          <hr>
    <%--
        遍历list集合，list中存放Student类，有属性：编号，用户名，密码，年龄，电话信息
    --%>
    <%
        List<Student> studentList =new ArrayList<Student>();
        for (int i=1;i<=10;i++){
            studentList.add(new Student(i,"username"+i,"pass"+i,18+i,"phone"+i));
        }
        request.setAttribute("stus",studentList);
    %>
          <table>
              <tr>
                  <th>编号</th>
                  <th>用户名</th>
                  <th>密码</th>
                  <th>年龄</th>
                  <th>电话</th>
                  <th>操作</th>
              </tr>
             <%--
               items表示遍历的集合
               var表示遍历到的数据
               begin遍历的开始索引值
               end结束的索引值
               step遍历的步长值
               varStatus当前遍历到的数据的状态
             --%>
            <c:forEach begin="2" end="7" step="2" varStatus="status" items="${requestScope.stus}" var="stu">
                <tr>
                    <td>${stu.id}</td>
                    <td>${stu.username}</td>
                    <td>${stu.password}</td>
                    <td>${stu.age}</td>
                    <td>${stu.phone}</td>
                    <td>${status.step}</td>

                </tr>
            </c:forEach>
          </table>
</body>
</html>

