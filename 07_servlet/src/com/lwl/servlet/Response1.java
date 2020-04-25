package com.lwl.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Response1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("曾到此一游 response1");
        /*
        * 请求重定向的特点：
        * 浏览器地址栏会发生变化
        * 两次请求
        * 不共享Request域中数据
        *不能访问WEB-INF下的资源
        * 可以访问工程外的资源
        * */
        req.setAttribute("key1","value1");
      //请求重定向的第一种方案：
        //设置响应状态码302，表示重定向，（已搬迁）
        // resp.setStatus(302);
         //设置响应头，说明新的地址在哪里
         //resp.setHeader("Location","http://localhost:8080/07_servlet/response2");
       //  resp.setHeader("Location","http://localhost:8080/07_servlet/WEB-INF/form.html");
        // resp.setHeader("Location","http://www.baidu.com");

        //请求重定向的第二种方案：推荐使用
        resp.sendRedirect("http://www.baidu.com");

    }
}
