package com.wxx.services;

import com.wxx.dao.AdminCallInfo;
import com.wxx.dao.CenterInfo;
import com.wxx.model.Roster;
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
public class AdminUserService {
    @Resource
    private CenterInfo centerInfo;
    @Resource
    private AdminCallInfo adminCallInfo;
    /**
     * 页面初始化
     * @return map 返回所有用户、班级、学院的集合
     * */
    public Map<String,List> userInit(HttpServletRequest request){
        if (!BooleanSessionExist.booleanSession(request)){
            return null;
        }
        List<User> users = centerInfo.queryAllUser();
        List<Roster> allclass = adminCallInfo.queryAllClass();
        List<Roster> allkind = adminCallInfo.queryAllKind();
        Map<String,List> map = new HashMap<>(3);
        map.put("alluser",users);
        map.put("allclass",allclass);
        map.put("allkind",allkind);
        return map;
    }
    /**
     * 管理员移除用户
     * @param username
     *        用户名
     * */
    public void removeUser(String username){
        centerInfo.removeUser(username);
    }
    /**
     * 管理员更新用户
     * @param username
     *        用户名
     * @param password
     *        密码
     * @param name
     *        姓名
     * @param status
     *        用户状态
     * @return 更新成功则返回true
     * */
    public boolean updateUser(String username,String password,String name,String status){
//        if("".equals(password) || "".equals(name)){
//            return false;
//        }
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setName(name);
        user.setStatus(status);
        centerInfo.updateUserByAdmin(user);
        return true;
    }
    /**
     * 管理员新增用户
     * @param username
     *        用户名
     * @param password
     *        密码
     * @param name
     *        姓名
     * @param status
     *        用户状态
     * @param classes
     *        用户所在班级（学生）
     * @param kind
     *        用户所在学院（教师）
     * */
    public void saveUser(String username,String password,String name,String status,
                         String classes,String kind){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setName(name);
        user.setStatus(status);
        centerInfo.saveUser(user);
        String flag = "0";
        if (!status.equals(flag)){
            //当用户为学生时，继续保存到学生表中
            Roster roster = new Roster();
            roster.setStuid(username);
            roster.setStuname(name);
            roster.setStuclass(classes);
            roster.setStukind(kind);
            centerInfo.saveRoster(roster);
        }
    }
}
