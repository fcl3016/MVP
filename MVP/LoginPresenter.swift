//
//  LoginPresenter.swift
//  MVP
//
//  Created by Kara on 2016/12/7.
//  Copyright © 2016年 StarkFan. All rights reserved.
//

import UIKit

class LoginPresenter: NSObject {
    
    private var userBizDelegate:IUserBizProtocol?
    
    private var loginViewDelegate:LoginViewProtocol?

    init(delegate:LoginViewProtocol?) {
        super.init()
        self.loginViewDelegate = delegate
        self.userBizDelegate = UserBiz()
    }
    
    func loginAction() ->() {
        
        userBizDelegate?.loginAction(username: (self.loginViewDelegate?.getUsername())!, password: (self.loginViewDelegate?.getUsername())!, success: { (respond:Any) in
            print("登录成功")
            print("\(respond)")
        }, fail: {error in
            print("登录失败")
            print("\(error)")
        })
    }
}
