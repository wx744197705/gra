package com.wxx.dao

import com.wxx.model.Course

interface AdminCourseInfo {
    fun courseLoad():List<Course>
    fun removeCourse(courseId:String)
    fun addCourse(courseName:String)
    fun checkCourseName(courseName:String):List<Course>
}