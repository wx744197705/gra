package com.wxx.model


class  WorkCheck{
    var id:Int? = 0
    var stuid:String? = null
    var callno:String? = null
    var tchid:String? = null
    var calldate:String? = null
    var roster:Roster? = null//需要获取缺课学生班级、姓名等信息
    override fun toString(): String {
        return "WorkCheck(id=$id, stuid=$stuid, callno=$callno, tchid=$tchid, calldate=$calldate, roster=$roster)"
    }

}