package com.wxx.controller;

/**
 * Created by wxx on 2017/10/4.
 */
import com.wxx.dao.LoginInfo;
import com.wxx.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * @author wangxinxin
 * */
@Controller
public class LoginController {
    @Resource
    private LoginInfo loginInfo;
    /**
     * 验证登录
     * @param username
     *        用户名
     * @param password
     *        密码
     * @see LoginInfo#Check(String)
     * @return 正确返回成功页面，否则返回错误页面
     * */
    @RequestMapping(value = "/login")
    public String loc(Model model, @RequestParam("username") String username,
                      @RequestParam("password") String password,
                       HttpServletRequest request){
        User user = loginInfo.Check(username);
        if (user != null && user.getPassword().equals(password)){
            HttpSession session=request.getSession();
            session.setAttribute("user", user);
        }
        else{
            return "error.jsp";
        }
        String flag = "2";
        if (flag.equals(user.getStatus())){
            model.addAttribute("index","2");
            return "success.jsp";
        }
        model.addAttribute("index","1");
        return "success.jsp";
    }
    /**
     * 用户注销
     * */
    @RequestMapping(value = "destroy")
    public String destroyUser(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "/";
    }




}
