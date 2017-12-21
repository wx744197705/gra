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
    @Resource
    private RosterService rosterService;
    /**
     * 插入请假条
     *
     * @param simplemsg
     *        请假原因
     * @param reqtypes
     *        请假类型
     * @param begindate
     *        开始时间
     * @param enddate
     *        结束时间
     * @param student
     *        请假人ID
     * @param teacher
     *        请假对象ID
     * @see RosterService#getDateTime()
     * */
    public void saveLeave(String simplemsg, String reqtypes, String begindate, String enddate
            , HttpServletRequest request, String student, String teacher){
        String date = rosterService.getDateTime();
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
    /**
     * 查询请假历史记录
     * @return 请假历史和所有教师列表
     * */
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
    /**
     * 教师加载请假学生记录
     * */
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
    /**
     * 教师审批假条
     * @param id
     *        假条编号
     * @see RosterService#getDateTime()
     * */
    public void stateChange(String id){
        leaveInfo.updateState(id,rosterService.getDateTime());
    }
    public void removeReq(String id){
        leaveInfo.removeReq(id);
    }
}
