package com.wxx.services;

import com.sun.org.apache.xpath.internal.operations.Mod;
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
    /**
     * 个人中心初始化
     * @param model
     *        <b>Map<String,List></>无法放入User,则在此方法内设置部分model
     * @return 返回所有接收消息、所有发送消息、所有用户
     * */
    public Map<String,List> centerInit(HttpServletRequest request, Model model){
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
        model.addAttribute("singleuser",singleUser);
        map.put("allreceive",list);
        map.put("allsend",send);
        map.put("alluser",users);
        return map;
    }
    /**
     * 用户发送消息
     * @param receiver
     *        消息发送者ID
     * @param contents
     *        消息内容
     * @return 用户未登录返回false，发送成功返回true
     * */
    public boolean sendMassage(HttpServletRequest request,String receiver,String contents){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user == null){
            return false;
        }
        Center center = new Center();
        center.setSender(user.getUsername());
        center.setReceiver(receiver);
        center.setContents(contents);
        center.setSenddate(rosterService.getDateTime());
        centerInfos.saveSendMessage(center);
        return true;
        //centerInit(request,model);
    }
    /**
     * 用户删除信息
     * @param flag
     *        flag = "send" 删除发送消息，否则删除接收消息
     * @param id
     *        记录编号
     * */
    public void removeMessage(String flag,String id){
        centerInfos.removeMessage(flag,id);
    }
    /**
     * 用户更新密码
     * @param pwd
     *        密码
     * @return 更新成功返回true，用户未登录返回false
     * */
    public boolean updateUser(HttpServletRequest request,String pwd){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user == null) {
            return false;
        }
        centerInfos.updateUser(user.getUsername(),pwd);
        session.removeAttribute("user");
        return true;
    }
}
