package com.ske;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author ske
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class SkeApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(SkeApplication.class, args);
        System.out.println("启动成功 ");
    }
}
