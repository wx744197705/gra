package com.wxx.controller;


import com.wxx.services.AdminLeaveService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

/**
 * @author wangxinxin
 * */
@Controller
public class AdminLeaveController {
    @Resource
    private AdminLeaveService adminLeaveService;
    /**
     * 初始化页面
     * */
    @RequestMapping(value = "queryleave")
    public String leaveReq(Model model, HttpServletRequest request){
        HashMap<String,List> listHashMap = (HashMap<String, List>) adminLeaveService.leaveReq(request);
        if (listHashMap == null){
            model.addAttribute("errortypes","1");
            return "backleave.jsp";
        }
        model.addAttribute("leaveall",listHashMap.get("allleave"));
        model.addAttribute("counts",listHashMap.get("counts"));
        return "backleave.jsp";
    }
    /**
     * 管理员删除假条
     * */
    @RequestMapping(value = "admremovereq")
    public void admRemove(@RequestParam("id") String id){
        adminLeaveService.admRemove(id);
    }
}
