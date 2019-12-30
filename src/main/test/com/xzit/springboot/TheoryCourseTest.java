package com.xzit.springboot;

import com.xzit.springboot.entity.Curworkload;
import com.xzit.springboot.service.CourseInfoService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class TheoryCourseTest {
    @Test
    public void testSM() throws Exception{
        ApplicationContext app = new ClassPathXmlApplicationContext(
                new String[]{"config/spring-mybatis/spring-mybatis.xml","config/spring-mybatis/spring.xml"});
        CourseInfoService tcs = app.getBean(CourseInfoService.class);
        List<Curworkload> theorycourses = tcs.findAll();
        System.out.println(theorycourses.size());
    }
}
