package com.atguigu.utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.alibaba.druid.util.JdbcUtils;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class jdbcUtils {
    private static DruidDataSource dataSource;
    static{
        try {
            Properties properties=new Properties();
            //读取jdbc.properties属性配置文件
            InputStream inputStream = JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
           //从流中加载数据
            properties.load(inputStream);
            //创建数据库连接池
            dataSource= (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
            //System.out.println(dataSource.getConnection());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /*
    * 获取数据库连接池中的连接
    * 如果返回null,说明获取连接失败；有值就是获取连接成功
    * */
    public static Connection getConnectin(){
        Connection conn=null;
        try {
            conn=dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    /*关闭连接，放回数据库连接池*/
    public static void close(Connection conn){
       if (conn !=null){
           try {
               conn.close();
           } catch (SQLException e) {
               e.printStackTrace();
           }
       }
    }
}
