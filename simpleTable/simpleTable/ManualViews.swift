//
//  ManualViews.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 25/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit
import Foundation
class ManualViews: UIViewController {

    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var signUp: UIView!
    
    @IBOutlet weak var detailView: UIView!
    
    var textField=UITextField()
    var passwordField=UITextField()
    var loginButton=UIButton()
    var regtextField=UITextField()
    var regpassField = UITextField()
    var confirmPass = UITextField()
    var phone=UITextField()
    var signupBt=UIButton()
    var resetBt=UIButton()
    var hobby1=UILabel()
   var hobby2=UILabel()
    var hobby3=UILabel()
   var hobby4=UILabel()
    var hobby5=UILabel()
  var contact=UILabel()
 var logout=UIButton()
   var wish=UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        loginView.backgroundColor=UIColor.yellow
        
        textField = UITextField(frame: CGRect(x: 20.0, y: 30.0, width: 200.0, height: 33.0))
        textField.backgroundColor = UIColor.red
        textField.placeholder="user name"
        textField.borderStyle = UITextField.BorderStyle.line
        loginView.addSubview(textField)
        
        passwordField = UITextField(frame: CGRect(x: 20.0, y: 65.0, width: 200.0, height: 33.0))
        passwordField.backgroundColor = UIColor.red
        passwordField.placeholder="password"
        passwordField.borderStyle = UITextField.BorderStyle.line
        loginView.addSubview(passwordField)
        
        loginButton=UIButton(frame: CGRect(x: 20.0, y: 100.0, width: 200.0, height: 33.0))
        loginButton.setTitle("Login", for: UIControl.State.init())
        loginButton.setTitleColor(UIColor.red, for: UIControl.State.init())
        loginButton.addTarget(self, action:#selector(self.loginButtonAct), for: .touchUpInside)
          loginView.addSubview(loginButton)
        
        signUp.backgroundColor=UIColor.blue
        
        regtextField = UITextField(frame: CGRect(x: 20.0, y: 30.0, width: 200.0, height: 33.0))
        regtextField.backgroundColor = UIColor.red
        regtextField.placeholder="user name"
        regtextField.borderStyle = UITextField.BorderStyle.line
        signUp.addSubview(regtextField)
       
       regpassField = UITextField(frame: CGRect(x: 20.0, y: 65.0, width: 200.0, height: 33.0))
       regpassField.backgroundColor = UIColor.red
       regpassField.placeholder="password"
       regpassField.borderStyle = UITextField.BorderStyle.line
       signUp.addSubview(regpassField)

        confirmPass = UITextField(frame: CGRect(x: 20.0, y: 100.0, width: 200.0, height: 33.0))
       confirmPass.backgroundColor = UIColor.red
       confirmPass.placeholder="confirm password"
       confirmPass.borderStyle = UITextField.BorderStyle.line
       signUp.addSubview(confirmPass)
        
       phone = UITextField(frame: CGRect(x: 20.0, y: 133.0, width: 200.0, height: 33.0))
        phone.backgroundColor = UIColor.red
        phone.placeholder="Phone Number "
        phone.borderStyle = UITextField.BorderStyle.line
        signUp.addSubview(phone)

       signupBt=UIButton(frame: CGRect(x: 20.0, y: 162.0, width: 100.0, height: 33.0))
       signupBt.setTitle("signUP", for: UIControl.State.normal)
        signupBt.addTarget(self, action:#selector(self.signupBtAct), for: .touchUpInside)
        //signupBt.backgroundColor = UIColor.yellow
       signUp.addSubview(signupBt)
        
       resetBt=UIButton(frame: CGRect(x: 100.0, y: 162.0, width: 200.0, height: 33.0))
        resetBt.setTitle("Reset", for: UIControl.State.normal)
        resetBt.addTarget(self, action:#selector(self.resetBtAct), for: .touchUpInside)
        signUp.addSubview(resetBt)
        
        hobby1=UILabel(frame: CGRect(x: 20.0, y: 50.0, width: 200.0, height: 33.0))
        hobby1.text = "MOVIES"
        //hobby1.center=CGPoint(x:150, y:250)
        detailView.addSubview(hobby1)
        
       wish=UILabel(frame: CGRect(x: 20.0, y: 20.0, width: 200.0, height: 33.0))
        wish.text = "WELCOME"
        wish.center=CGPoint(x:150, y:10)
      detailView.addSubview(wish)
    
        hobby2=UILabel(frame: CGRect(x: 20.0, y: 70.0, width: 200.0, height: 33.0))
        hobby2.text = "READING"
        detailView.addSubview(hobby2)
        
         hobby3=UILabel(frame: CGRect(x: 20.0, y: 90.0, width: 200.0, height: 33.0))
        hobby3.text = "SWIMMING"
        detailView.addSubview(hobby3)
        
        
         hobby4=UILabel(frame: CGRect(x: 20.0, y: 110.0, width: 200.0, height: 33.0))
        hobby4.text = "BATMINTON"
        detailView.addSubview(hobby4)
        
        hobby5=UILabel(frame: CGRect(x: 20.0, y: 130.0, width: 200.0, height: 33.0))
        hobby5.text = "BOOKS"
        detailView.addSubview(hobby5)
        
       contact=UILabel(frame: CGRect(x: 20.0, y: 150.0, width: 200.0, height: 33.0))
        contact.text="contact"
        detailView.addSubview(contact)
        
       logout=UIButton(frame: CGRect(x: 50.0, y: 200.0, width: 200.0, height: 33.0))
        logout.setTitle("LOGOUT", for: UIControl.State.normal)
       logout.addTarget(self, action:#selector(self.logoutAct), for: .touchUpInside)
        logout.backgroundColor = .red
        detailView.addSubview(logout)
        
        signUp.isHidden=true
       detailView.isHidden=true
        
    }
    @IBAction func loginButtonAct(){
        
     if textField.text != "" && passwordField.text != ""
     {
        detailView.isHidden=false
        append()
        loginView.isHidden=true
        
     }else{
        loginView.isHidden=true
        signUp.isHidden=false
        }
    }
    
    @IBAction func signupBtAct(){
       // loginView.isHidden=true
        detailView.isHidden=false
        signUp.isHidden=true
        append()
        
    }
    
    @IBAction func logoutAct(){
        loginView.isHidden=false
        detailView.isHidden=true
        fresh()
    }
    
    @IBAction func resetBtAct(){
       fresh()
     }
    func append(){
        
        if let text = textField.text, let text2=regtextField.text{
            wish.text = "Welcome \(text)\(text2)"
        }
        
        if let text1=phone.text{
            contact.text="contact:\(text1)"
        }
    }
        func fresh(){
            textField.text=""
            passwordField.text=""
            regtextField.text=""
            regpassField.text=""
            confirmPass.text=""
            phone.text=""
            
        }

    
        
    }
    


