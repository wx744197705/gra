package com.wxx.services;

import com.wxx.dao.AdminScheduleInfo;
import com.wxx.model.Schedules;
import com.wxx.model.User;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author wangxinxin
 * */
public class AdminScheduleService {
    @Resource
    private RosterService rosterService;
    @Resource
    private AdminScheduleInfo adminScheduleInfo;
    /**
     * 加载排课信息
     * */
    public void queryAllSche(Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user == null){
            model.addAttribute("errortype","1");
            return;
        }
        List<Schedules> schedules = adminScheduleInfo.queryAllSche();
        for (Schedules work: schedules){
            work.setSchedate(work.getSchedate().substring(0,work.getSchedate().length()-2));
        }
        session.setAttribute("history",schedules);
        model.addAttribute("allsche",schedules);
    }
    /**
     * 移除排课信息
     * @param id 排课记录ID
     * */
    public void removeSche(String id){
        adminScheduleInfo.removeSche(id);
    }
    /**
     * 重新排课
     * */
    public void replaySche(){
        adminScheduleInfo.replaySche(rosterService.getDateTime());
    }
    /**
     * 保存排课信息
     * @param course 课程ID
     * @param teacher 教师ID
     * @param classes 班级名称
     * @param week 星期
     * @param begindate 课程开始时间
     * @param enddate 课程结束时间
     * @param schedate 排课时间
     * */
    public void saveSche(String course,String teacher,String classes,String week,String begindate,
                         String enddate,String schedate){
        adminScheduleInfo.saveSche(course,teacher,classes,week,begindate,enddate,schedate);
    }
}
