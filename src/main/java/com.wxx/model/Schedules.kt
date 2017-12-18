package com.wxx.model

class Schedules{
    var scheid: Int? = 0
    var scheclass: String? = null
    var scheweek: String? = null
    var schebegin: String? = null
    var scheend: String? = null
    var scheuser: String? = null
    var schedate: String? = null
    var courseid: Int? = 0
    var roster:Roster? = null//智能帮任课老师导入班级，先从schedules表，后从roster中
    var course:Course? = null//关联course表取出课程名称
    var user:User? = null//关联user表取出教师名字
    override fun toString(): String {
        return "Schedules(scheid=$scheid, scheclass=$scheclass, scheweek=$scheweek, schebegin=$schebegin, scheend=$scheend, scheuser=$scheuser, schedate=$schedate, courseid=$courseid, roster=$roster, course=$course, user=$user)"
    }
}