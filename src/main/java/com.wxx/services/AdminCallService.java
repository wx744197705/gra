package com.wxx.services;

import com.wxx.dao.AdminCallInfo;
import com.wxx.model.*;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * Created by wxx on 2017/11/4.
 */
/**
 * @author wangxinxin
 * */
public class AdminCallService {
    @Resource
    private AdminCallInfo adminCallInfo;
    /**
     * @param request
     *        用户判断是否存在用户名session
     * @return map值依次为 点名信息、教师、班级、学院、课程
     * */
    public Map<String,List> queryAllCall(HttpServletRequest request){
        if (!BooleanSessionExist.booleanSession(request)){
            return null;
        }
        List<WorkCheck> workChecks = adminCallInfo.queryAllCall();
        for (WorkCheck work: workChecks){
            work.setCalldate(work.getCalldate().substring(0,work.getCalldate().length()-2));
        }
        List<User> users = adminCallInfo.queryAllTeacher();
        List<Roster> allClass = adminCallInfo.queryAllClass();
        List<Roster> allKind = adminCallInfo.queryAllKind();
        List<Course> allCourse = adminCallInfo.queryAllCourse();
        Map <String,List>map = new HashMap<>(5);
        map.put("allcall",workChecks);
        map.put("allteacher",users);
        map.put("allclass",allClass);
        map.put("allkind",allKind);
        map.put("allcourse",allCourse);
        return map;
    }
    /**
     * @param teacher
     *        教师id
     * @param classes
     *        班级名称
     * @param kind
     *        学院名称
     * @param begindate
     *        开始时间
     * @param enddate
     *        结束时间
     * */
    public void filters(String teacher, String classes, String kind, String begindate, String enddate,
                         Model model, HttpServletRequest request){
        if (!BooleanSessionExist.booleanSession(request)){
            model.addAttribute("errortypes","1");
            return;
        }
        List<WorkCheck>list = adminCallInfo.queryPartCall(teacher,classes,kind,begindate,enddate);
        model.addAttribute("teacher",teacher);
        model.addAttribute("classes",classes);
        model.addAttribute("kind",kind);
        model.addAttribute("begindate",begindate);
        model.addAttribute("enddate",enddate);
        model.addAttribute("allcall",list);
    }
    /**
     * @param id
     *        点名编号
     * */
    public void removeCall(String id){
        adminCallInfo.removeCall(id);
    }
}
