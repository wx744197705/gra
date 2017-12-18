package com.wxx.model

class PublicMsg{
    var id:Int? = 0
    var types:String? = null
    var msg:String? = null
    var no:String? = null
    var modifydate:String? = null
    override fun toString(): String {
        return "PublicMsg(id=$id, types=$types, msg=$msg, no=$no, modifydate=$modifydate)"
    }

}