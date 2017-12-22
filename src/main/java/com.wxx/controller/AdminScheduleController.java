package com.wxx.controller;

import com.wxx.services.AdminCallService;
import com.wxx.services.AdminScheduleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * @author wangxinxin
 * */
@Controller
public class AdminScheduleController {
    @Resource
    private AdminScheduleService adminScheduleService;
    @Resource
    private AdminCallService adminCallService;
    /**
     * 管理员排课信息载入
     * @see AdminCallService#queryAllCall(HttpServletRequest)
     * @see AdminScheduleService#queryAllSche(Model, HttpServletRequest)
     * */
    @RequestMapping(value = "scheload")
    public String scheLoad(Model model, HttpServletRequest request){
        adminScheduleService.queryAllSche(model,request);
        HashMap<String,List> hashMap= (HashMap<String, List>) adminCallService.queryAllCall(request);
        if (hashMap == null){
            model.addAttribute("errortypes","1");
            return "backcall.jsp";
        }
        model.addAttribute("allcall",hashMap.get("allcall"));
        model.addAttribute("allteacher",hashMap.get("allteacher"));
        model.addAttribute("allclass",hashMap.get("allclass"));
        model.addAttribute("allkind",hashMap.get("allkind"));
        model.addAttribute("allcourse",hashMap.get("allcourse"));
        return "backsche.jsp";
    }
    /**
     * 管理员移除排课信息
     * @param id
     *        排课编号
     * @see AdminScheduleService#removeSche(String)
     * */
    @RequestMapping(value = "admremovesche")
    public void removeSche(@RequestParam("id") String id){
        adminScheduleService.removeSche(id);
    }
    /**
     * 管理员重新排课
     * @see AdminScheduleService#replaySche()
     * */
    @RequestMapping(value = "replaysche")
    @ResponseBody
    public void replaySche(){
        adminScheduleService.replaySche();
    }
    /**
     * 保存排课信息
     * @param teacher
     *        任课教师ID
     * @param classes
     *        任课班级名称
     * @param course
     *        任课课程ID
     * @param begindate
     *        开始时间
     * @param enddate
     *        结束时间
     * @param week
     *        任课星期
     * @param schedate
     *        排课时间
     * @see AdminScheduleService#saveSche(String, String, String, String, String, String, String)
     * */
    @RequestMapping(value = "savesche")
    @ResponseBody
    public void saveSche(@RequestParam("teacher") String teacher, @RequestParam("classes") String classes,
                         @RequestParam("week") String week, @RequestParam("course") String course,
                         @RequestParam(value = "begindate",required = false,defaultValue = "") String begindate,
                         @RequestParam(value = "enddate",required = false,defaultValue = "") String enddate,
                         @RequestParam(value = "schedate",required = false,defaultValue = "") String schedate){
        adminScheduleService.saveSche(course,teacher,classes,week,begindate,enddate,schedate);
    }
}
