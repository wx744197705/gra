package com.wxx.services;

import com.wxx.dao.AdminIndexInfo;
import com.wxx.model.PublicMsg;
import com.wxx.model.User;
import org.springframework.ui.Model;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wxx on 2017/11/17.
 */
/**
 * @author Wangxinxin
 * @date 2017/11/17
 * */
public class AdminIndexService {
    @Resource
    private AdminIndexInfo adminIndexInfos;
    @Resource
    private RosterService rosterService;
    public Map<String,PublicMsg> indexInit(){
        //初始化主页
        Map<String,PublicMsg> map = new HashMap<>(5);
        PublicMsg publicMsgs1 = adminIndexInfos.queryPublicMsg("1");
        publicMsgs1.setModifydate(publicMsgs1.getModifydate().substring(0,10));
        map.put("msg1",publicMsgs1);
        PublicMsg publicMsgs2 = adminIndexInfos.queryPublicMsg("2");
        publicMsgs2.setModifydate(publicMsgs2.getModifydate().substring(0,10));
        map.put("msg2",publicMsgs2);
        PublicMsg publicMsgs3 = adminIndexInfos.queryPublicMsg("3");
        publicMsgs3.setModifydate(publicMsgs3.getModifydate().substring(0,10));
        map.put("msg3",publicMsgs3);
        PublicMsg publicMsgs4 = adminIndexInfos.queryPublicMsg("4");
        publicMsgs4.setModifydate(publicMsgs4.getModifydate().substring(0,10));
        map.put("msg4",publicMsgs4);
        return map;
    }
    public void updatePublicMsg(String types,String msg,String no){//管理员插入主页最新消息
        PublicMsg publicMsg = new PublicMsg();
        publicMsg.setModifydate(rosterService.getDateTime());
        publicMsg.setMsg(msg);
        publicMsg.setTypes(types);
        publicMsg.setNo(no);
        adminIndexInfos.updatePublicMsg(publicMsg);
    }
    public List<PublicMsg> backIndexInit( HttpServletRequest request){
        if (!BooleanSessionExist.booleanSession(request)){
            return null;
        }
        List<PublicMsg> publicMsgList = adminIndexInfos.queryAllPublicMsg();
        for (PublicMsg publicMsg:publicMsgList){
            publicMsg.setModifydate(publicMsg.getModifydate().substring(0,publicMsg.getModifydate().length()-2));
        }
        return publicMsgList;
    }
}
