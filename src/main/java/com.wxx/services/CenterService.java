package com.wxx.services;

import com.wxx.dao.CenterInfo;
import com.wxx.model.Center;
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
 * */
public class CenterService {
    @Resource
    private CenterInfo centerInfos;
    @Resource
    private RosterService rosterService;
    public Map<String,List> centerInit(HttpServletRequest request){
        //个人中心初始化
        Map <String,List> map = new HashMap<>(4);
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user == null){
            return null;
        }
        List<Center> list = centerInfos.queryAllReceive(user.getUsername());
        for(Center center:list){
            center.setSenddate(center.getSenddate().substring(0,center.getSenddate().length()-2));
        }
        List<Center> send = centerInfos.queryAllSend(user.getUsername());
        for (Center center:send){
            center.setSenddate(center.getSenddate().substring(0,center.getSenddate().length()-2));
        }
        List<User> users = centerInfos.queryAllUser();
        User singleUser = centerInfos.querySingleUser(user.getUsername());
        map.put("allreceive",list);
        map.put("allsend",send);
        map.put("alluser",users);
        return map;
    }
    public void sendMassage(HttpServletRequest request,Model model,String receiver,String contents){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user == null){
            model.addAttribute("errortype","1");
            return;
        }
        Center center = new Center();
        center.setSender(user.getUsername());
        center.setReceiver(receiver);
        center.setContents(contents);
        center.setSenddate(rosterService.getDateTime());
        centerInfos.saveSendMessage(center);
        model.addAttribute("success","1");
        //centerInit(request,model);
    }
    public void removeMessage(String flag,String id){
        centerInfos.removeMessage(flag,id);
    }
    public void updateUser(HttpServletRequest request,String pwd,Model model){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user == null) {
            return;
        }
        centerInfos.updateUser(user.getUsername(),pwd);
        session.removeAttribute("user");
        model.addAttribute("success","1");
    }
}
