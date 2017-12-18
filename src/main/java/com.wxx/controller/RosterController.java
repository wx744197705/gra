package com.wxx.controller;

import com.wxx.dao.RosterInfo;
import com.wxx.services.ExportData;
import com.wxx.services.RosterService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * @author wangxinxin
 * */
@Controller
public class RosterController {
    @Resource
    private RosterInfo rosterInfo;
    @Resource
    private ExportData exportData;
    @Resource
    private RosterService rosterService;
    /**
     * 页面加载，自动加载名册和班级
     * */
    @RequestMapping(value = "queryros")
    public String queryRoster(HttpServletRequest request,Model model){
        rosterService.judgeInit(request,model);
        return "call.jsp";
    }
    /**
     * 教师重新选择班级，重新加载名册
     * */
    @RequestMapping(value = "reloads")
    public String reload(@RequestParam(value = "name",required = false, defaultValue = "")String name,HttpServletRequest request,Model model) {
        rosterService.judgeReload(request,model,name);
        return "call.jsp";
    }
    /**
     * 保存点名信息
     * */
    @RequestMapping(value = "ajax")
    @ResponseBody
    public void saveCall(@RequestParam String[] str,
                         @RequestParam(value = "id",required = false,defaultValue = "") String id,
                         HttpServletRequest request){
        rosterService.saveCall(request,id,str);
    }
    /**
     * //删除缺课学生
     * */
    @RequestMapping(value = "removehis")
    @ResponseBody
    public void removeHis(@RequestParam("stuid") String stuid,@RequestParam("calldate") String calldate){
        rosterInfo.removeHistory(stuid,calldate);
    }
    /**
     * 导出点名信息到excel
     * */
    @RequestMapping(value = "export")
    public String exportHis(HttpServletRequest request, HttpServletResponse response)throws Exception{
        exportData.exportHis(request,response);
        return "call.jsp";
    }

}
