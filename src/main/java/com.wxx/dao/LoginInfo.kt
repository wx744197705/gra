package com.wxx.dao

import com.wxx.model.User
import org.apache.ibatis.annotations.Param


/**
 * Created by wxx on 2017/10/3.
 */
interface LoginInfo {
    fun Check(username: String): User //用户登录验证
}
