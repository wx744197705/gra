package com.wxx.controller;

import com.wxx.model.Course;
import com.wxx.services.AdminCourseService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author wangxinxin
 * */
@Controller
public class AdminCourseController {
    @Resource
    private AdminCourseService adminCourseService;
    @RequestMapping(value = "courseload")
    public String courseLoad(HttpServletRequest request, Model model){
        List<Course> list = adminCourseService.courseLoad(request);
        if (list == null){
            model.addAttribute("errortype","1");
            return "backcourse.jsp";
        }
        model.addAttribute("allcourse",list);
        return "backcourse.jsp";
    }
    @RequestMapping(value = "remove")
    @ResponseBody
    public void removeCourse(@RequestParam("courseid") String id){
        adminCourseService.removeCourse(id);
    }
    @RequestMapping(value = "add")
    @ResponseBody
    public String addCourse(HttpServletRequest request,
                            @RequestParam(value = "name") String name){
        if (adminCourseService.checkCourseName(name).size() != 0){
            return "error";
        }
        adminCourseService.addCourse(name);
        return "success";
    }
}
