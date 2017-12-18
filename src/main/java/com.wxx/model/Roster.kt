package com.wxx.model

class Roster{
    var stuid:String? = null
    var stuname:String? = null
    var stuclass:String? = null
    var stukind:String? = null
    var leaves: Leave? = null
    override fun toString(): String {
        return "Roster(stuid=$stuid, stuname=$stuname, stuclass=$stuclass, stukind=$stukind, leaves=$leaves)"
    }

}