//
//  UserBiz.swift
//  MVP
//
//  Created by Kara on 2016/12/8.
//  Copyright © 2016年 StarkFan. All rights reserved.
//

import UIKit

class UserBiz: NSObject,IUserBizProtocol {
    
    func loginAction(username: String, password: String, success: (Any) -> (), fail: (Any) -> ()) {
        if !(username.isEmpty && password.isEmpty) {
            let user = LoginModel()
            user.username = username
            user.password = password
            success(user)
        } else {
            fail("失败")
        }
    }
}
