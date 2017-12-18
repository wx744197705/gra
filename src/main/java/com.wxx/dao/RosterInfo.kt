package com.wxx.dao

import com.wxx.model.Roster
import com.wxx.model.Schedules
import com.wxx.model.WorkCheck
import org.apache.ibatis.annotations.Param

interface RosterInfo {
    fun queryRoster(@Param("stuclass") stuclass: String,
                    @Param("studate") studate: String): List<Roster> //教师点名是查询请假显示请假情况

    fun saveRoster(list: List<WorkCheck>) //保存点名信息
    fun queryClass(scheuser: String): List<Schedules> //加载班级，优先加载排课班级
    fun queryHistory(tchid: String): List<WorkCheck> //查询历史点名记录
    fun removeHistory(@Param("stuid") stuid: String, @Param("calldate") calldate: String) //删除点名记录
}
