package com.atguigu.servlet;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class HelloServlet implements Servlet {

    public HelloServlet() {
        System.out.println("1 构造器方法");
    }

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("2 init初始化方法");

        //可以获取Servlet程序的别名servlet-name的值
        System.out.println("HelloServlet程序的别名是："+servletConfig.getServletName());
        //获取初始化参数init-param
        System.out.println("初始化参数username的值是："+servletConfig.getInitParameter("username"));
        System.out.println("初始化参数username的值是："+servletConfig.getInitParameter("url"));
        //获取ServletContext对象
        //org.apache.catalina.core.ApplicationContextFacade@14d22a2
        System.out.println(servletConfig.getServletContext());
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
        //类型转换（因为他有getMethod()方法）
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        //获取请求方式
        String method = httpServletRequest.getMethod();
        //System.out.println(method);
        if ("GET".equals(method)){
            //System.out.println("get请求");
            doGet();
        }else if ("POST".equals(method)){
           // System.out.println("post请求");
            doPost();
        }
    }
    //做get请求的操作
   public void doGet(){
       System.out.println("get请求");
       System.out.println("get请求");
       System.out.println("get请求");
       System.out.println("get请求");
       System.out.println("get请求");
   }
    //做post请求的操作
    public void doPost(){
        System.out.println("post请求");
        System.out.println("post请求");
        System.out.println("post请求");
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
