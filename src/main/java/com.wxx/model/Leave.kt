package com.wxx.model

/**
 * Created by wxx on 2017/10/17.
 */
class Leave {
    var id: Int = 0
    var simplemsg: String? = null
    var reqtypes: String? = null
    var begindate: String? = null
    var enddate: String? = null
    var teacher: String? = null
    var student: String? = null
    var leavedate: String? = null
    var ischeck: String? = null
    var username: String? = null
    var checkdate: String? =null
    override fun toString(): String {
        return "Leave(id=$id, simplemsg=$simplemsg, reqtypes=$reqtypes, begindate=$begindate, enddate=$enddate, teacher=$teacher, student=$student, leavedate=$leavedate, ischeck=$ischeck, username=$username, checkdate=$checkdate)"
    }
    //    override fun toString(): String {
//        return simplemsg + reqtypes
//    }
}
