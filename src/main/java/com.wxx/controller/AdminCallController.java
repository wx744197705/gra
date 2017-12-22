package com.wxx.controller;

import com.wxx.services.AdminCallService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

/**
 * Created by wxx on 2017/11/3.
 */
/**
 * @author 汪鑫鑫
 * */
@Controller
public class AdminCallController {
    @Resource
    private AdminCallService adminCallService;
    /**
     * 管理员查询所有点名记录
     * @see AdminCallService#queryAllCall(HttpServletRequest)
     * */
    @RequestMapping(value = "queryallcall")
    public String queryAllCall(Model model,HttpServletRequest request){
        HashMap<String,List> hashMap= (HashMap<String, List>) adminCallService.queryAllCall(request);
        if (hashMap == null){
            model.addAttribute("errortypes","1");
            return "backcall.jsp";
        }
        model.addAttribute("allcall",hashMap.get("allcall"));
        model.addAttribute("allteacher",hashMap.get("allteacher"));
        model.addAttribute("allclass",hashMap.get("allclass"));
        model.addAttribute("allkind",hashMap.get("allkind"));
        model.addAttribute("allcourse",hashMap.get("allcourse"));
        return "backcall.jsp";
    }
    /**
     * 管理员删除点名信息
     * @see AdminCallService#removeCall(String)
     * */
    @RequestMapping(value = "admremovecall")
    public void admRemoveCall(@RequestParam("id") String id){
        adminCallService.removeCall(id);
    }
    /**
     * 管理员筛选点名信息
     * @param teacher
     *        点名教师ID
     * @param classes
     *        班级名称
     * @param kind
     *        学院
     * @param begindate
     *        开始时间
     * @param enddate
     *        结束时间
     * @see AdminCallService#queryAllCall(HttpServletRequest)
     * @see AdminCallService#filters(String, String, String, String, String, Model, HttpServletRequest)
     * */
    @RequestMapping(value = "filters")
    public String filters(@RequestParam(value = "teacher",required = false,defaultValue = "") String teacher,
                          @RequestParam(value = "classes",required = false,defaultValue = "") String classes,
                          @RequestParam(value = "kind",required = false,defaultValue = "") String kind,
                          @RequestParam(value = "begindate",required = false,defaultValue = "") String begindate,
                          @RequestParam(value = "enddate",required = false,defaultValue = "") String enddate, Model model,
                          HttpServletRequest request){
        HashMap<String,List> hashMap= (HashMap<String, List>) adminCallService.queryAllCall(request);
        if (hashMap == null){
            model.addAttribute("errortypes","1");
            return "backcall.jsp";
        }
        model.addAttribute("allteacher",hashMap.get("allteacher"));
        model.addAttribute("allclass",hashMap.get("allclass"));
        model.addAttribute("allkind",hashMap.get("allkind"));
        model.addAttribute("allcourse",hashMap.get("allcourse"));
        //初始化选项
        adminCallService.filters(teacher,classes,kind,begindate,enddate,model,request);
        return "backcall.jsp" ;
    }
}
