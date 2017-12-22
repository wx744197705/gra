package com.wxx.controller;

import com.wxx.services.LeaveService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

/**
 * Created by wxx on 2017/10/17.
 */
/**
 * @author wangxinxin
 * */
@Controller
public class LeaveController {
    @Resource
    private LeaveService leaveService;
    /**
     * 学生请假，插入请假条
     * @param simplemsg
     *        请假理由
     * @param reqtypes
     *        请假类型
     * @param student
     *        请假学生
     * @param teacher
     *        请假对象
     * @param begindate
     *        开始时间
     * @param enddate
     *        结束时间
     * @see LeaveService#saveLeave(String, String, String, String, HttpServletRequest, String, String)
     * */
    @RequestMapping( value = "leavereq")
    public String leaveRequest(@RequestParam("simplemsg") String simplemsg, @RequestParam("reqtypes") String reqtypes
                            , @RequestParam("begindate") String begindate, @RequestParam("enddate") String enddate
                            , HttpServletRequest request,Model model, @RequestParam("student") String student
                            , @RequestParam("teacher") String teacher){
        leaveService.saveLeave(simplemsg,reqtypes,begindate,enddate,request,student,teacher);
        model.addAttribute("successtype","1");
        //表明成功执行的类型
        return "success.jsp";
    }
/**
 * 加载历史请假
 * @see LeaveService#leaveHis(HttpServletRequest)
 * */
    @RequestMapping(value = "leavehis")
    public String leaveHis(HttpServletRequest request, Model model){
        HashMap<String,List> hashMap = (HashMap<String, List>) leaveService.leaveHis(request);
        if (hashMap == null){
            model.addAttribute("errortypes","1");
            return "leavereq.jsp";
        }
        model.addAttribute("leave",hashMap.get("leave"));
        model.addAttribute("allteacher",hashMap.get("allteacher"));
        return "leavereq.jsp";
    }
    /**
     * 教师加载请假学生名单
     * @see LeaveService#checkReq(HttpServletRequest, Model)
     * */
    @RequestMapping(value = "checkreq")
    public String checkReq(HttpServletRequest request, Model model){
        leaveService.checkReq(request,model);
        return "checkreq.jsp";
    }
    /**
     * 教师审批通过
     * @param id
     *        假条编号
     * @see LeaveService#stateChange(String)
     * */
    @RequestMapping(value = "statechange")
    @ResponseBody
    public void stateChange(@RequestParam("id") String id){
        leaveService.stateChange(id);
    }
    /**
     * 学生存档前移除假条
     * @param id
     *        假条编号
     * @see LeaveService#removeReq(String)
     * */
    @RequestMapping(value = "removereq")
    @ResponseBody
    public void removeReq(@RequestParam("id") String id){
        leaveService.removeReq(id);
    }

}
