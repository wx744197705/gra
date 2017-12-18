package com.wxx.controller;

import com.wxx.services.CenterService;
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
public class CenterController {
    @Resource
    private CenterService centerService;
    /**
     * 个人中心初始化
     * */
    @RequestMapping("centerinit")
    public String centerInit(HttpServletRequest request, Model model){
        HashMap<String,List> hashMap = (HashMap<String, List>) centerService.centerInit(request);
        if (hashMap == null){
            model.addAttribute("errortype","1");
            return "center.jsp";
        }
        model.addAttribute("alluser",hashMap.get("alluser"));
        model.addAttribute("allreceive",hashMap.get("allreceive"));
        model.addAttribute("allsend",hashMap.get("allsend"));
        return "center.jsp";
    }
    /**
     * 用户发送信息
     * */
    @RequestMapping("sendmessage")
    public String sendMessage(@RequestParam("receiver") String receiver,
                              @RequestParam("contents") String contents,HttpServletRequest request,Model model){
        centerService.sendMassage(request,model,receiver,contents);
        return "success.jsp";
    }
    /**
     * 用户删除消息，flag判断是发送的消息，还是接受的消息
     * */
    @RequestMapping("removemessage")
    @ResponseBody
    public void removeMessage(@RequestParam("flag") String flag,
                              @RequestParam("id") String id){
        centerService.removeMessage(flag,id);
    }
    /**
     * 用户修改密码
     * */
    @RequestMapping(value = "updateuser")
    public String updateUser(@RequestParam("pwd") String pwd, HttpServletRequest request,
                             Model model){
        centerService.updateUser(request,pwd,model);
        return "index.jsp";
    }
}
