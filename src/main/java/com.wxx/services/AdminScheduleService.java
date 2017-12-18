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
 * Created by wxx on 2017/11/5.
 */
/**
 * @author wangxinxin
 * */
public class AdminScheduleService {
    @Resource
    private RosterService rosterService;
    @Resource
    private AdminScheduleInfo adminScheduleInfo;
    public void queryAllSche(Model model, HttpServletRequest request){//加载排课信息
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
    public void removeSche(String id){
        adminScheduleInfo.removeSche(id);
    }
    public void replaySche(){
        adminScheduleInfo.replaySche(rosterService.getDateTime());
    }
    public void saveSche(String course,String teacher,String classes,String week,String begindate,
                         String enddate,String schedate){
        adminScheduleInfo.saveSche(course,teacher,classes,week,begindate,enddate,schedate);
    }
}
