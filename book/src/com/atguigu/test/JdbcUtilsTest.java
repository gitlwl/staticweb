package com.atguigu.test;
import com.atguigu.utils.jdbcUtils;
import org.junit.Test;

import java.sql.Connection;

public class JdbcUtilsTest {
    @Test
    public void testJdbcUtils(){
        for (int i=0;i<100;i++){
            Connection connection = jdbcUtils.getConnectin();
            System.out.println(connection);
            jdbcUtils.close(connection);
        }
    }
}
