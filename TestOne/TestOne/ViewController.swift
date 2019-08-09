//
//  ViewController.swift
//  TestOne
//
//  Created by bharath gaddamadugu on 27/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var loginView=UIView()
    var menuView=UIView()
    
    var name=UITextField()
    var phone=UITextField()
    var age=UITextField()
    var signin=UIButton()
    var secondviewName=UILabel()
    var secondviewPhone=UILabel()
    var secondDob=UILabel()
    var resetButton=UIButton()
    var switchDemo=UISwitch()
   
    var logout=UIButton()
    var birthdayPick=UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView=UIView(frame: CGRect(x:5, y:20 , width: 400, height: 850))
        //loginView.backgroundColor=UIColor.gray
        self.view.addSubview(loginView)
        
        name=UITextField(frame: CGRect(x:5, y:70  , width: 200, height: 35))
        name.placeholder="Name"
        loginView.addSubview(name)
        
        phone=UITextField(frame: CGRect(x: 5, y: 140, width: 200, height: 35))
        phone.placeholder="Phone"
        loginView.addSubview(phone)
        
        age=UITextField(frame: CGRect(x: 5, y: 210, width: 200, height: 35))
        age.placeholder="pick DOB"
        loginView.addSubview(age)
        
        birthdayPick.datePickerMode = .date
        age.inputView = birthdayPick
        birthdayPick.backgroundColor=UIColor.blue
        birthdayPick.addTarget(self, action: #selector(showDatePicker(sender: )), for: .valueChanged)
        let gesture=UITapGestureRecognizer(target: self, action: #selector(tapped(sender:)))
        view.addGestureRecognizer(gesture)
        
        signin=UIButton(frame: CGRect(x: 3, y: 280, width: 200, height: 35))
        signin.setTitle("SignIn", for: UIControl.State.normal)
        signin.addTarget(self, action: #selector(self.signinAct), for: .touchUpInside)
        signin.backgroundColor=UIColor.blue
        loginView.addSubview(signin)
        
        menuView=UIView(frame: CGRect(x:5, y:20 , width: 400, height: 850))
        menuView.backgroundColor=UIColor.blue
        self.view.addSubview(menuView)
        
        secondviewName=UILabel(frame: CGRect(x: 5, y: 70, width: 200, height: 35))
        secondviewName.textAlignment = .center
        secondviewName.backgroundColor=UIColor.yellow
        menuView.addSubview(secondviewName)
        secondviewName.text=name.text
        
        secondviewPhone=UILabel(frame: CGRect(x: 5, y: 140, width: 200, height: 35))
        secondviewPhone.textAlignment = .center
        secondviewPhone.backgroundColor=UIColor.red
        menuView.addSubview(secondviewPhone)
        
        secondDob=UILabel(frame:CGRect(x: 5, y: 210, width: 200, height: 35))
        secondDob.textAlignment = .center
        secondDob.backgroundColor=UIColor.green
        menuView.addSubview(secondDob)
        
        resetButton=UIButton(frame :CGRect(x: 3, y: 280, width: 200, height: 35))
        resetButton.setTitle("Reset", for:UIControl.State.normal )
        resetButton.backgroundColor=UIColor.black
        resetButton.addTarget(self, action: #selector(self.resetButtonAct),for: .touchUpInside)
        menuView.addSubview(resetButton)
        
       switchDemo = UISwitch(frame:CGRect(x: 350, y: 350, width: 100, height: 35))
        switchDemo.isOn = true
        switchDemo.setOn(false, animated: false)
        switchDemo.addTarget(self, action: #selector(switchDemo1), for: .touchUpInside)
        menuView.addSubview(switchDemo)
        
        logout=UIButton(frame:CGRect(x: 3, y: 400, width: 200, height: 35))
        logout.setTitle("LogOut", for: UIControl.State.normal)//disabled
        logout.backgroundColor=UIColor.black
        logout.addTarget(self, action: #selector(self.logoutAct), for: .touchUpInside)
        menuView.addSubview(logout)
        
        logout.isHidden=true
        menuView.isHidden=true
        
    }
    @objc func showDatePicker(sender:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy "// HH:mm:ss add for date and time
        age.text = dateFormatter.string(from: sender .date)
    }

    @objc func tapped(sender:UITapGestureRecognizer){
        age.endEditing(true)
      
        
    }
    @objc func signinAct()
    {
        secondviewName.text=name.text
        secondviewPhone.text=phone.text
        secondDob.text=age.text
        
        loginView.isHidden=true
        menuView.isHidden=false
    }
    
    @objc func resetButtonAct(){
        reset()
    }
    @objc func logoutAct(){
        
        menuView.isHidden=true
        switchDemo.isOn=false
        logout.isHidden=true
        loginView.isHidden=false
        reset()
        
        
    }
    @objc func switchDemo1(){
        if switchDemo.isOn==true{
            logout.isHidden=false
        }else{
            logout.isHidden=true
        }
    }
    

    func reset(){
       name.text=""
       phone.text=""
    age.text=""
        
        secondviewName.text=""
        secondviewPhone.text=""
        secondDob.text=""
    
    }
    
}

