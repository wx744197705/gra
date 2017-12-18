package com.wxx.services;

import com.wxx.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author wangxinxin
 * */
public class BooleanSessionExist {
    public static boolean booleanSession(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null){
            return false;
        }
        return true;
    }
}
