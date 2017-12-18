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
    @RequestMapping("indexinit")
    public String indexInit(Model model){
        HashMap<String,PublicMsg> publicMsgHashMap = (HashMap<String, PublicMsg>) adminIndexService.indexInit();
        model.addAttribute("msg1",publicMsgHashMap.get("msg1"));
        model.addAttribute("msg2",publicMsgHashMap.get("msg2"));
        model.addAttribute("msg3",publicMsgHashMap.get("msg3"));
        model.addAttribute("msg4",publicMsgHashMap.get("msg4"));
        return "index.jsp";
    }
    @RequestMapping("updatepublicmsg")
    @ResponseBody
    public void updatePublicMsg(@RequestParam("types") String types,
                                @RequestParam("msg") String msg,
                                @RequestParam("no") String no){
        adminIndexService.updatePublicMsg(types,msg,no);
    }
}
