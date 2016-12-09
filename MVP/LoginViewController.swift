//
//  LoginViewController.swift
//  MVP
//
//  Created by Kara on 2016/12/7.
//  Copyright © 2016年 StarkFan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewProtocol {
    
    
    private var presenter:LoginPresenter?
   
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LoginPresenter(delegate: self)
        // Do any additional setup after loading the view.
    }

    @IBAction func loginBtnAction(_ sender: Any) {
        presenter?.loginAction()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - LoginViewProtocol
    
    func getUsername() -> String {
        return self.usernameTextField.text!;
    }
    
    func getPassword() -> String {
        return self.passwordTextField.text!;
    }
    
    
    
    /*
    //MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
