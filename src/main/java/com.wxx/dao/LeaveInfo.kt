package com.wxx.dao

import com.wxx.model.Leave
import org.apache.ibatis.annotations.Param

/**
 * Created by wxx on 2017/10/17.
 */
interface LeaveInfo {
    fun leaveReq(leave: Leave) //新增请假条
    fun leaveHis(username: String): List<Leave> //查询历史请假记录
    fun checkReq(name: String): List<Leave> //教师加载学生请假记录
    fun updateState(@Param("id") id: String, @Param("checkdate") checkdate: String) //教师批准学生请假
    fun removeReq(id: String) //学生取消请假
}
