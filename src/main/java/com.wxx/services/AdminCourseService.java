package com.wxx.services;

import com.wxx.dao.AdminCourseInfo;
import com.wxx.model.Course;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author wangxinxin
 * */
public class AdminCourseService {
    @Resource
    private AdminCourseInfo adminCourseInfo;
    public List<Course> courseLoad(HttpServletRequest request){
        if (!BooleanSessionExist.booleanSession(request)){
            return null;
        }
        return adminCourseInfo.courseLoad();
    }
    public void removeCourse(String id){
        adminCourseInfo.removeCourse(id);
    }
    public List<Course> checkCourseName(String name){
        return adminCourseInfo.checkCourseName(name);
    }
    public void addCourse(String name){
        adminCourseInfo.addCourse(name);
    }
}
