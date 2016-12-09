//
//  IUserBiz.swift
//  MVP
//
//  Created by Kara on 2016/12/8.
//  Copyright © 2016年 StarkFan. All rights reserved.
//

protocol IUserBizProtocol {
    func loginAction(username:String, password:String,success: (_ respond:Any)->() , fail: (_ error:Any)->()) -> ()
}
