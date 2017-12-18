package com.wxx.dao

import com.wxx.model.Schedules
import org.apache.ibatis.annotations.Param

import java.util.HashMap
import java.util.Hashtable

/**
 * Created by wxx on 2017/11/5.
 */
interface AdminScheduleInfo {
    fun queryAllSche(): List<Schedules> //查询所有排课情况
    fun removeSche(id: String) //移除排课表
    fun replaySche(date: String) //重新排课
    fun saveSche(@Param("course") course: String, @Param("teacher") teacher: String,
                 @Param("classes") classes: String, @Param("week") week: String,
                 @Param("begindate") begindate: String, @Param("enddate") enddate: String,
                 @Param("schedate") schedate: String) //新增排课
}
