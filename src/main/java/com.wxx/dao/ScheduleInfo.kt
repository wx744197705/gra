package com.wxx.dao

import com.wxx.model.Schedules
import org.apache.ibatis.annotations.Param

/**
 * Created by wxx on 2017/10/25.
 */
interface ScheduleInfo {
    fun querySche(@Param("user") user: String, @Param("weekend") weekend: String,
                  @Param("nowtime") nowtime: String): Schedules //判断此时间段是否有排课
}
