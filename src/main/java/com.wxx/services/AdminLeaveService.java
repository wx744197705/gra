package com.wxx.services;

import com.wxx.dao.AdminLeaveInfo;
import com.wxx.model.CallCount;
import com.wxx.model.Leave;
import com.wxx.model.User;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author wangxinxin
**/
public class AdminLeaveService {
    @Resource
    private AdminLeaveInfo adminLeaveInfo;
    /**
     * @return 返回学生请假信息和请假统计情况
     * */
    public Map<String,List> leaveRequest(HttpServletRequest request){
        if(!BooleanSessionExist.booleanSession(request)){
            return null;
        }
        List<Leave> leaveList = adminLeaveInfo.queryAllLeave();
        for (Leave leave : leaveList){
            leave.setLeavedate(leave.getLeavedate().substring(0,leave.getLeavedate().length()-2));
        }
        List<CallCount> callCounts = adminLeaveInfo.queryCountCall();
        Map<String,List> map = new HashMap<>(2);
        map.put("allleave",leaveList);
        map.put("counts",callCounts);
        return map;
    }
    /**
     * 管理员移除请假信息
     * @param id
     *        假条编号
     * */
    public void admRemove(String id){
        adminLeaveInfo.removeLeave(id);
    }
}
