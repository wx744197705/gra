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
     * @see CenterService#centerInit(HttpServletRequest, Model)
     * */
    @RequestMapping("centerinit")
    public String centerInit(HttpServletRequest request, Model model){
        HashMap<String,List> hashMap = (HashMap<String, List>) centerService.centerInit(request,model);
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
     * @param receiver
     *        消息发送者
     * @param contents
     *        消息内容
     * @see CenterService#sendMassage(HttpServletRequest, String, String)
     * */
    @RequestMapping("sendmessage")
    public String sendMessage(@RequestParam("receiver") String receiver,
                              @RequestParam("contents") String contents,HttpServletRequest request,Model model){
        if(centerService.sendMassage(request,receiver,contents)){
            model.addAttribute("success","1");
        }
        else {
            model.addAttribute("errortype","1");
        }
        return "success.jsp";
    }
    /**
     * 用户删除消息
     * @param flag
     *        判断是发送的消息，还是接受的消息
     * @param id
     *        记录ID
     * @see CenterService#removeMessage(String, String)
     * */
    @RequestMapping("removemessage")
    @ResponseBody
    public void removeMessage(@RequestParam("flag") String flag,
                              @RequestParam("id") String id){
        centerService.removeMessage(flag,id);
    }
    /**
     * 用户修改密码
     * @param pwd
     *        用户修改的新密码
     * @see CenterService#updateUser(HttpServletRequest, String)
     * */
    @RequestMapping(value = "updateuser")
    public String updateUser(@RequestParam("pwd") String pwd, HttpServletRequest request,
                             Model model){
        if (centerService.updateUser(request,pwd)){
            model.addAttribute("success","1");
        }
        else {
            model.addAttribute("errortype","1");
        }
        return "index.jsp";
    }
}
