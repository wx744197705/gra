package com.wxx.services;

import com.wxx.dao.AdminCallInfo;
import com.wxx.dao.LeaveInfo;
import com.wxx.model.Leave;
import com.wxx.model.User;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * @author wangxinxin
 * */
public class LeaveService {
    @Resource
    private AdminCallInfo adminCallInfo;
    @Resource
    private LeaveInfo leaveInfo;
    public void saveLeave(String simplemsg, String reqtypes, String begindate, String enddate
            , HttpServletRequest request, String student, String teacher){
        SimpleDateFormat dfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = dfs.format(new Date());
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Leave leave = new Leave();
        leave.setSimplemsg(simplemsg);
        leave.setReqtypes(reqtypes);
        leave.setBegindate(begindate);
        leave.setEnddate(enddate);
        leave.setStudent(student);
        leave.setTeacher(teacher);
        leave.setLeavedate(date);
        leave.setUsername(user.getUsername());
        leaveInfo.leaveReq(leave);
    }

    public Map<String,List> leaveHis(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null){
            return null;
        }
        List<Leave> list = leaveInfo.leaveHis(user.getUsername());
        List<User> users = adminCallInfo.queryAllTeacher();
        Map <String,List>map = new HashMap<>(2);
        map.put("leave",list);
        map.put("allteacher",users);
        return map;
    }
    public void checkReq(HttpServletRequest request,Model model){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null){
            model.addAttribute("hs","1");
            return;
        }
        String flag = "0";
        if (flag.equals(user.getStatus())){
            model.addAttribute("hs","2");
            return;
        }
        List<Leave> list = leaveInfo.checkReq(user.getName());
        model.addAttribute("leaves",list);
    }
    public void stateChange(String id){
        leaveInfo.updateState(id,getDateTime());
    }
    public void removeReq(String id){
        leaveInfo.removeReq(id);
    }
    private String getDateTime(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateNowStr = sdf.format(d);
        return dateNowStr;
    }
}
