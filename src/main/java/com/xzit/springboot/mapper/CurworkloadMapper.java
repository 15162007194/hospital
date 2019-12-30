package com.xzit.springboot.mapper;

import com.xzit.springboot.dto.CourseQryItem;
import com.xzit.springboot.dto.CourseQryResult;
import com.xzit.springboot.entity.Curworkload;
import com.xzit.springboot.entity.CurworkloadExample;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CurworkloadMapper {
    int countByExample(CurworkloadExample example);

    int deleteByExample(CurworkloadExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Curworkload record);

    int insertSelective(Curworkload record);

    List<Curworkload> selectByExample(CurworkloadExample example);

    Curworkload selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Curworkload record, @Param("example") CurworkloadExample example);

    int updateByExample(@Param("record") Curworkload record, @Param("example") CurworkloadExample example);

    int updateByPrimaryKeySelective(Curworkload record);

    int updateByPrimaryKey(Curworkload record);

    /**
     * 教务处课程信息查询
     * @param courseQryItem 查询条件
     * @return
     */
    List<CourseQryResult> jwcCourseinfoSelect(CourseQryItem courseQryItem);

    CourseQryResult findbyid(Integer id);

}