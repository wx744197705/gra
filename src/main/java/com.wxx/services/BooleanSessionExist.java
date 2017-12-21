package com.wxx.services;

import com.wxx.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author wangxinxin
 * */
public class BooleanSessionExist {
    /**
     * 通用方法,判断当前是否有用户登录
     * @return 如果没有用户登录，返回false
     * */
    public static boolean booleanSession(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        return user != null;
    }
}
