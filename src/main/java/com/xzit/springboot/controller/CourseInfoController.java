package com.xzit.springboot.controller;

import com.github.pagehelper.PageInfo;
import com.xzit.springboot.dto.CourseDatagrid;
import com.xzit.springboot.dto.CourseInfoDto;
import com.xzit.springboot.dto.CourseQryItem;
import com.xzit.springboot.dto.CourseQryResult;
import com.xzit.springboot.entity.Curworkload;
import com.xzit.springboot.json.AjaxOutput;
import com.xzit.springboot.service.CourseInfoService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping(path="/courseinfo")
public class CourseInfoController {

    @Autowired
    private CourseInfoService courseInfoService;

    @RequestMapping(value = "/jwcindex", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("courseinfo/course_list");
        return mv;
    }

    @RequestMapping(path = "", method = RequestMethod.GET)
    public CourseDatagrid<CourseQryResult> courselist(
            @RequestParam(value = "page", defaultValue = "1", required = false) int page,
            @RequestParam(value = "limit", defaultValue = "10", required = false) int rows,
            CourseQryItem courseQryItem) {

        CourseDatagrid<CourseQryResult> courseDatagrid =
                new CourseDatagrid<CourseQryResult>();
        PageInfo<CourseQryResult> courseinfos =courseInfoService.jwcCourseinfoSelect(courseQryItem,page,rows);   //补充完成
        courseDatagrid.setCode(0);
        courseDatagrid.setCount(courseinfos.getTotal());
        courseDatagrid.setData(courseinfos.getList());
        courseDatagrid.setMsg("课程信息查询结果");
        return courseDatagrid;

        }
    @RequestMapping(path = "toedit/{id}", method = RequestMethod.GET)
    public ModelAndView toAddpage(@PathVariable("id") Integer id){

        ModelAndView mv = new ModelAndView("courseinfo/course_edit");
        System.out.println("id=" + id);
        if(id!=0){
            mv.addObject("courseInfo",courseInfoService.findByCourseId(id));
        }
        return mv;
    }

    @RequestMapping(path = "", method = RequestMethod.PUT)
    public AjaxOutput updateCourse(@RequestBody CourseInfoDto courseInfo) {
        Curworkload curworkload = new Curworkload();
        BeanUtils.copyProperties(courseInfo,curworkload);

        System.out.println(courseInfo.getId());
        int i = courseInfoService.updateCourseinfo(curworkload);
                AjaxOutput ajaxOutput = new AjaxOutput();
        if(i<0)
        {
            ajaxOutput.setMsgkey("updateError");
            ajaxOutput.setMessage("更新失败");
            return ajaxOutput;
        }
        ajaxOutput.setMsgkey("updateSuccess");
        ajaxOutput.setMessage("更新成功");
        return ajaxOutput;

    }



    @RequestMapping(path = "", method = RequestMethod.POST)
    public AjaxOutput addCourse(@RequestBody CourseInfoDto courseInfo,
                                BindingResult bindingResult
    )  throws Exception{
        AjaxOutput ajaxOutput=new AjaxOutput();

        // 获取校验错误信息
        if (bindingResult.hasErrors()) {
            // 输出错误信息
            List<ObjectError> allErrors = bindingResult.getAllErrors();
            ajaxOutput.setMsgkey("validerror");
            ajaxOutput.setData(allErrors);
            ajaxOutput.setMessage("数据校验失败");
            return  ajaxOutput;
        }
        //验证通过后提交到数据库
        Curworkload curworkload=new Curworkload();
        BeanUtils.copyProperties(courseInfo,curworkload);
        courseInfoService.insertCourseinfo(curworkload);
        ajaxOutput.setMsgkey("success");
        ajaxOutput.setMessage("数据保存成功");
        return  ajaxOutput;
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.DELETE)
    public AjaxOutput deleteCourse(@PathVariable Integer id) {
        int i = courseInfoService.deleteByPrimaryKey(id);
        AjaxOutput ajaxState = new AjaxOutput();
        if (i < 0) {
            ajaxState.setMsgkey("deleteError");
            ajaxState.setMessage("删除失败");
            return ajaxState;
        }
        ajaxState.setMsgkey("deleteSuccess");
        ajaxState.setMessage("删除成功");
        return ajaxState;

    }
}


