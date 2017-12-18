package com.wxx.dao

import com.wxx.model.*
import org.apache.ibatis.annotations.Param
/**
 * Created by wxx on 2017/11/3.
 */
interface AdminCallInfo {
    fun queryAllCall(): List<WorkCheck> //查询所有点名记录
    fun removeCall(id: String) //管理员移除点名记录
    fun queryAllTeacher(): List<User> //查询所有教师信息
    fun queryAllClass(): List<Roster> //查询所有班级
    fun queryAllKind(): List<Roster> //查询所有学员
    fun queryPartCall(@Param("teacher") teacher: String, @Param("classes") classes: String,
                      @Param("kind") kind: String, @Param("begindate") begindate: String,
                      @Param("enddate") enddate: String): List<WorkCheck> //筛选点名信息
    fun queryAllCourse(): List<Course>
}
