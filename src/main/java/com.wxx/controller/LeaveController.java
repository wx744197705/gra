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
    @RequestMapping( value = "leavereq")
    public String leaveres(@RequestParam("simplemsg") String simplemsg, @RequestParam("reqtypes") String reqtypes
                            , @RequestParam("begindate") String begindate, @RequestParam("enddate") String enddate
                            , HttpServletRequest request,Model model, @RequestParam("student") String student
                            , @RequestParam("teacher") String teacher){
        leaveService.saveLeave(simplemsg,reqtypes,begindate,enddate,request,student,teacher);
        model.addAttribute("successtype","1");
        //表明成功执行的类型
        return "success.jsp";
    }
/**
 * 页面判断，如果没有session则返回，有则初始化页面
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

    @RequestMapping(value = "checkreq")
    public String checkReq(HttpServletRequest request, Model model){
        leaveService.checkReq(request,model);
        return "checkreq.jsp";
    }

    @RequestMapping(value = "statechange")
    @ResponseBody
    public void stateChange(@RequestParam("id") String id){
        leaveService.stateChange(id);
    }

    @RequestMapping(value = "removereq")
    @ResponseBody
    public void removeReq(@RequestParam("id") String id){
        leaveService.removeReq(id);
    }

}
