package com.company.sample;

import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;

public class DB_Test {
@Test
public void test() throws Exception {
    Class.forName("com.mysql.cj.jdbc.Driver");
    // Class.forName("org.mariadb.jdbc.Driver"); 

    Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shotdb?useSSL=false&serverTimezone=UTC", "root",     "1234");
    // Connection con =  DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/test","root","passwd"); MySQL
    System.out.println(con);
    }
}
