package com.xzit.springboot.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xzit.springboot.dto.CourseQryItem;
import com.xzit.springboot.dto.CourseQryResult;
import com.xzit.springboot.entity.Curworkload;
import com.xzit.springboot.entity.CurworkloadExample;
import com.xzit.springboot.mapper.CurworkloadMapper;
import com.xzit.springboot.service.CourseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CourseInfoServiceImpl implements CourseInfoService {
    @Autowired
    private CurworkloadMapper curworkloadMapper;

    @Override
    public List<Curworkload> findAll() {
        CurworkloadExample example = new CurworkloadExample();
        CurworkloadExample.Criteria criteria = example.createCriteria();
        criteria.andYxidEqualTo(9);
        List<Curworkload> theoryCourses = curworkloadMapper.selectByExample(example);
        return theoryCourses;
    }

    /**
     * 教务处课程信息查询
     * @param courseQryItem 查询条件
     * @param pageNo 查询起始页
     * @param pageSize 每页显示的数量
     * @return
     */
    @Override
    public PageInfo<CourseQryResult> jwcCourseinfoSelect(CourseQryItem courseQryItem,
                                                  Integer pageNo, Integer pageSize){
        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        PageHelper.startPage(pageNo, pageSize);
        List<CourseQryResult> courseQryResults = curworkloadMapper.jwcCourseinfoSelect(courseQryItem);
        //用PageInfo对结果进行包装
        PageInfo<CourseQryResult> page = new PageInfo<CourseQryResult>(courseQryResults);
        return page;
    }
    @Override
    public int insertCourseinfo(Curworkload curworkload){
        return curworkloadMapper.insert(curworkload);
    }


    @Override
    public CourseQryResult findByCourseId(Integer courseId) {
        return curworkloadMapper.findbyid(courseId);
    }

    @Override
    public int updateCourseinfo(Curworkload curworkload) {
        return curworkloadMapper.updateByPrimaryKey(curworkload);
    }

    @Override
    public Integer deleteByPrimaryKey(Integer courseId) {
        return curworkloadMapper.deleteByPrimaryKey(courseId);
    }
}
