package com.wxx.model

/**
 * Created by wxx on 2017/10/3.
 */
class User {
    var username: String? = null
    var password: String? = null
    var name: String? = null
    var status: String? = null
    override fun toString(): String {
        return "User(username=$username, password=$password, name=$name, status=$status)"
    }

}
