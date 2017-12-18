package com.wxx.services;

import com.wxx.dao.RosterInfo;
import com.wxx.dao.ScheduleInfo;
import com.wxx.model.Roster;
import com.wxx.model.Schedules;
import com.wxx.model.User;
import com.wxx.model.WorkCheck;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @author wangxinxin
 * */
public class RosterService {
    @Resource
    private RosterInfo rosterInfo;
    @Resource
    private ScheduleInfo scheduleInfo;
    public void judgeInit(HttpServletRequest request, Model model){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null){
            model.addAttribute("errortypes","1");
            //没有用户则设置一个session告知前端页面
            return;
        }
        String flag = "0";
        if (flag.equals(user.getStatus())){
            //不是教师权限无法使用此功能
            return;
        }
        List<Schedules> rosters = rosterInfo.queryClass(user.getUsername());
        //加载班级，必须在自动加载名册之前，否则无法在无法自动加载名单的时候加载班级
        model.addAttribute("classa",rosters);
        List<WorkCheck> workChecks = rosterInfo.queryHistory(user.getUsername());
        //加载点名历史
        session.setAttribute("history",workChecks);
        Schedules schedules = scheduleInfo.querySche(user.getUsername(),getWeekend(),getTime());
        if (schedules == null){
            return;
        }
        List<Roster>list = rosterInfo.queryRoster(schedules.getScheclass(),getDate());
        //自动加载名册
        model.addAttribute("roster",list);
    }
    public void judgeReload(HttpServletRequest request,Model model,String name){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null){
            model.addAttribute("errortypes","1");
            //没有用户则设置一个session告知前端页面
            return;
        }
        String flag = "0";
        if (flag.equals(user.getStatus())){
            model.addAttribute("errortypes","2");
            return;
        }
        model.addAttribute("roster",rosterInfo.queryRoster(name,getDate()));
        //加载名册
        List<Schedules> rosters = rosterInfo.queryClass(user.getUsername());
        List<WorkCheck> workChecks = rosterInfo.queryHistory(user.getUsername());
        //加载点名历史
        session.setAttribute("history",workChecks);
        model.addAttribute("classa",rosters);
        //加载班级

    }
    public void saveCall(HttpServletRequest request, String id,
                         String[] str){
        String datetime = getDateTime();
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        List<WorkCheck> list = new ArrayList<>();
        for (int i = 0; i < str.length; i++){
            WorkCheck workCheck = new WorkCheck();
            workCheck.setCalldate(datetime);
            workCheck.setStuid(str[i]);
            workCheck.setCallno(id);
            workCheck.setTchid(user.getUsername());
            list.add(workCheck);
        }
        rosterInfo.saveRoster(list);
    }
    public final String getTime(){
        Date date = new Date();
        DateFormat format=new SimpleDateFormat("HH:mm:ss");
        String now = format.format(new Date(date.getTime() + 5 * 60 *1000));
        //往后推5分钟
        return now;
    }
    public final String getWeekend(){
        Date dt = new Date();
        Calendar cal = Calendar.getInstance();
        cal.setTime(dt);
        int w = cal.get(Calendar.DAY_OF_WEEK) - 1;
        String week = String.valueOf(w);
        return week;
    }
    public String getDate(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateNowStr = sdf.format(d);
        return dateNowStr;
    }
    public String getDateTime(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateNowStr = sdf.format(d);
        return dateNowStr;
    }
}
