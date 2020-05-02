package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet  extends HttpServlet {
    private UserService userService=new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1获取请求参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //2调用userService.login()登录处理业务
        User loginUser = userService.login(new User(null, username, password, null));
        //如果等于null,登录失败
        if (loginUser==null){
            //失败,跳回登录页面
            req.getRequestDispatcher("/pages/user/login.html").forward(req,resp);
        }else{
            //登录成功    成功,跳转到成功页面login_success.html
            req.getRequestDispatcher("/pages/user/login_success.html").forward(req,resp);
        }

    }
}
