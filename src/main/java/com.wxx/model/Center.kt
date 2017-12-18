package com.wxx.model

class Center{
    var id:Int? = 0
    var sender:String? = null
    var receiver:String? =null
    var contents:String? = null
    var senddate:String? = null
    var user:User? = null//按username取name
    override fun toString(): String {
        return "Center(id=$id, sender=$sender, receiver=$receiver, contents=$contents, senddate=$senddate, user=$user)"
    }

}