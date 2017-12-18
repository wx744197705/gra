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
        model.addAttribute("alluser",hashMap.get("alluser"));
        model.addAttribute("allclass",hashMap.get("allclass"));
        model.addAttribute("allkind",hashMap.get("allkind"));
        return "backuser.jsp";
    }

    @RequestMapping(value = "removeuser")//移除用户
    @ResponseBody
    /**
     * 移除用户
     * */
    public void removeUser(@RequestParam("username") String username){
        adminUserService.removeUser(username);
    }
    /**
     * 管理员更新用户
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
    @RequestMapping(value = "saveuser")
    @ResponseBody
    /**
     * 新增用户
     * */
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
