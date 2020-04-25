package com.lwl.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ResponseIOServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // System.out.println(resp.getCharacterEncoding());//默认ISO-8859-1
        //解决中文乱码第一种方法：
        //设置服务器字符集为UTF-8
      // resp.setCharacterEncoding("UTF-8");
       //通过响应头，设置浏览器也使用UTF-8
       // resp.setHeader("Content-Type","text/html; charset=UTF-8");

        //解决中文乱码第二种方法：
        //它同时设置服务器和客户端都使用UTF-8字符集，还设置了响应头
        //此方法一定要在获取流对象之前调用菜有效
        resp.setContentType("text/html; charset=UTF-8");
        System.out.println(resp.getCharacterEncoding());
        //要求往客户端回传 字符串 数据
        PrintWriter writer = resp.getWriter();
        writer.write("巴塞罗那 ");
    }
}
