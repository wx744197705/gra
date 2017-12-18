package com.wxx.dao

import com.wxx.model.PublicMsg

/**
 * Created by wxx on 2017/11/17.
 */
interface AdminIndexInfo {
    fun queryPublicMsg(index: String): PublicMsg //查询主页公告信息
    fun queryAllPublicMsg(): List<PublicMsg> //查询所有主页公告信息（管理员界面初始化）
    fun updatePublicMsg(publicMsg: PublicMsg) //插入新的公告信息
}
