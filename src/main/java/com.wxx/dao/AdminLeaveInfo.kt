package com.wxx.dao

import com.wxx.model.CallCount
import com.wxx.model.Leave
import com.wxx.model.WorkCheck

interface AdminLeaveInfo {
    fun queryAllLeave(): List<Leave> //查询所有请假信息
    fun removeLeave(id: String) //移除请假信息（一般老师批准后就已经存档，需要管理员才能删除）
    fun queryCountCall(): List<CallCount> //统计每月请假情况
}
