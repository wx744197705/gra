package com.wxx.controller;

import com.wxx.services.AdminUserService;
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
public class AdminUserController {
    @Resource
    private AdminUserService adminUserService;
    @RequestMapping(value = "userinfoinit")
    public String userInfoInit(Model model, HttpServletRequest request){
        HashMap<String,List> hashMap = (HashMap<String, List>) adminUserService.userInit(request);
        if (hashMap == null){
            model.addAttribute("errortype","1");
            return "backuser.jsp";
        }
        model.addAttribute("alluser",hashMap.get("alluser"));
        model.addAttribute("allclass",hashMap.get("allclass"));
        model.addAttribute("allkind",hashMap.get("allkind"));
        return "backuser.jsp";
    }
    /**
     * 管理员移除用户
     * @param username
     *        用户名
     * @see AdminUserService#removeUser(String)
     * */
    @RequestMapping(value = "removeuser")
    @ResponseBody
    public void removeUser(@RequestParam("username") String username){
        adminUserService.removeUser(username);
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
     *        身份状态
     * @see AdminUserService#updateUser(String, String, String, String)
     * */
    @RequestMapping(value = "updateuserbyadmin")
    public String updateUser(@RequestParam(value = "username") String username,
                             @RequestParam(value = "password",required = false,defaultValue = "") String password,
                             @RequestParam(value = "name",required = false,defaultValue = "") String name,
                             @RequestParam(value = "status") String status, Model model){
        if (!adminUserService.updateUser(username,password,name,status)){
            model.addAttribute("backuser","0");
        }
        model.addAttribute("backuser","1");
        return "success.jsp";
    }
    /**
     * 管理员新增用户
     * @param username
     *        用户名
     * @param password
     *        密码
     * @param name
     *        姓名
     * @param classes
     *        班级（学生）
     * @param status
     *        身份状态
     * @param kind
     *        学院（学生）
     * @see AdminUserService#saveUser(String, String, String, String, String, String)
     * */
    @RequestMapping(value = "saveuser")
    @ResponseBody
    public void saveUser(@RequestParam("username") String username,
                         @RequestParam(value = "password",required = false,defaultValue = "") String password,
                         @RequestParam("name") String name,
                         @RequestParam("status") String status,
                         @RequestParam(value = "classes",required = false,defaultValue = "") String classes,
                         @RequestParam(value = "kind",required = false,defaultValue = "") String kind){
        if ("".equals(password)){
            //初始化密码
            password = "123456";
        }
        adminUserService.saveUser(username,password,name,status,classes,kind);
    }
}
