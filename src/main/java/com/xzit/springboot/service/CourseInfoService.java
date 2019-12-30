package com.xzit.springboot.service;

import com.github.pagehelper.PageInfo;
import com.xzit.springboot.dto.CourseQryItem;
import com.xzit.springboot.dto.CourseQryResult;
import com.xzit.springboot.entity.Curworkload;

import java.util.List;

public interface CourseInfoService {
     List<Curworkload> findAll();
     /**
      * 教务处课程信息查询
      * @param courseQryItem 查询条件
      * @param pageNo 查询起始页
      * @param pageSize 每页显示的数量
      * @return
      */
     PageInfo<CourseQryResult> jwcCourseinfoSelect(CourseQryItem courseQryItem,
                                                   Integer pageNo, Integer pageSize);
     //新增课程信息
     int insertCourseinfo(Curworkload curworkload);
     //查询某门课程信息
     CourseQryResult findByCourseId(Integer courseId);
     //编辑课程信息
     int updateCourseinfo(Curworkload curworkload);
    //删除某门课程信息
    Integer  deleteByPrimaryKey(Integer courseId);
}
