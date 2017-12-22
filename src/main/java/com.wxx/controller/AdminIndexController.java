package com.wxx.controller;

import com.wxx.model.PublicMsg;
import com.wxx.services.AdminIndexService;
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
 * @author wangxinxin
 * */
@Controller
public class AdminIndexController {
    @Resource
    private AdminIndexService adminIndexService;
    /**
     * 管理员主页初始化
     * @see AdminIndexService#backIndexInit(HttpServletRequest)
     * */
    @RequestMapping("backindexinit")
    public String backIndexInit(Model model, HttpServletRequest request){
        List<PublicMsg> publicMsgs = adminIndexService.backIndexInit(request);
        if (publicMsgs == null){
            model.addAttribute("errortype","1");
            return "backindex.jsp";
        }
        model.addAttribute("allpublicmsg",publicMsgs);
        return "backindex.jsp";
    }
    /**
     * 主页初始化
     * @see AdminIndexService#indexInit()
     * */
    @RequestMapping("indexinit")
    public String indexInit(Model model){
        HashMap<String,PublicMsg> publicMsgHashMap = (HashMap<String, PublicMsg>) adminIndexService.indexInit();
        model.addAttribute("msg1",publicMsgHashMap.get("msg1"));
        model.addAttribute("msg2",publicMsgHashMap.get("msg2"));
        model.addAttribute("msg3",publicMsgHashMap.get("msg3"));
        model.addAttribute("msg4",publicMsgHashMap.get("msg4"));
        return "index.jsp";
    }
    /**
     * 管理员更新公告
     * @param types
     *        公告类型
     * @param msg
     *        公告内容
     * @param no
     *        公告栏位
     * @see AdminIndexService#updatePublicMsg(String, String, String)
     * */
    @RequestMapping("updatepublicmsg")
    @ResponseBody
    public void updatePublicMsg(@RequestParam("types") String types,
                                @RequestParam("msg") String msg,
                                @RequestParam("no") String no){
        adminIndexService.updatePublicMsg(types,msg,no);
    }
}
