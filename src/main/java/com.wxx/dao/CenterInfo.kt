package com.wxx.dao

import com.wxx.model.Center
import com.wxx.model.Roster
import com.wxx.model.User
import org.apache.ibatis.annotations.Param

/**
 * Created by wxx on 2017/11/12.
 */
interface CenterInfo {
    //页面加载
    fun queryAllReceive(username: String): List<Center> //查询所有接受消息（页面初始化）

    fun queryAllSend(username: String): List<Center> //查询所有发送消息（页面初始化）
    fun queryAllUser(): List<User>
    fun querySingleUser(username: String): User //查询登录用户的信息（页面初始化）
    fun saveSendMessage(center: Center) //发送消息
    fun removeMessage(@Param("flag") flag: String, @Param("id") id: String) //删除消息
    fun updateUser(@Param("username") username: String, @Param("pwd") pwd: String) //用户更新信息
    fun removeUser(username: String) //管理员删除用户
    fun updateUserByAdmin(user: User) //管理员更新用户信息
    fun saveUser(user: User) //保存用户
    fun saveRoster(roster: Roster) //如果保存的用户为学生，则将此信息继续保存到学生表
}
