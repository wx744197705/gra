package com.wxx.dao

import com.wxx.model.Course

interface AdminCourseInfo {
    fun courseLoad():List<Course>
    fun removeCourse(courseId:String)
}