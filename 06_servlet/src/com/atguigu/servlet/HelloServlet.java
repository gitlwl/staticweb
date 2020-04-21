package com.atguigu.servlet;

import javax.servlet.*;
import java.io.IOException;

public class HelloServlet implements Servlet {

    public HelloServlet() {
        System.out.println("1 构造器方法");
    }

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("2 init初始化方法");
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }
    /*
    *  service方法专门用来处理请求和响应的
    * */
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println(" 3 service=====HelloServlet 被访问了");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        System.out.println(" 4 destroy销毁方法");//web工程停止的时候调用
    }
}
