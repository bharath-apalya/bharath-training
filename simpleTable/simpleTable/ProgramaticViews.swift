//
//  ProgramaticViews.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 26/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class ProgramaticViews: UIViewController {
    
    
    var viewDemo=UIView()
    var secondviewDemo=UIView()
    var thirdviewDemo=UIView()
    
    var button1=UIButton()
    var button2=UIButton()
    var button3=UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewDemo.frame = CGRect(x: 5, y: 50, width: 400, height: 1000-200)
        viewDemo.backgroundColor=UIColor.blue
        self.view.addSubview(viewDemo)
        
        thirdviewDemo.frame = CGRect(x: 5, y: 50, width: 400, height: 1000-200)
        thirdviewDemo.backgroundColor=UIColor.red
        self.view.addSubview(thirdviewDemo)
        
        secondviewDemo.frame = CGRect(x: 5, y: 50, width: 400, height: 1000-200)
        secondviewDemo.backgroundColor=UIColor.yellow
        self.view.addSubview(secondviewDemo)
        
        button1=UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 35))
        button1.backgroundColor=UIColor.orange
        button1.setTitle("Click to view2", for:UIControl.State.normal)
        button1.addTarget(self, action: #selector(button1Act), for: .touchUpInside)
        viewDemo.addSubview(button1)
        
        button2=UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 35))
        button2.backgroundColor=UIColor.black
        button2.setTitle("Click to view3", for:UIControl.State.normal)
        button2.addTarget(self, action: #selector(button2Act), for: .touchUpInside)
       secondviewDemo.addSubview(button2)
        
        button3=UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 35))
        button3.backgroundColor=UIColor.white
        button3.setTitle("Click to view1", for:UIControl.State.normal)
        button3.addTarget(self, action: #selector(button3Act), for: .touchUpInside)
        thirdviewDemo.addSubview(button3)
        
        viewDemo.isHidden=false
        secondviewDemo.isHidden=true
        thirdviewDemo.isHidden=true
        
        
    }
     @objc func button1Act(){
        viewDemo.isHidden=true
        secondviewDemo.isHidden=false
        thirdviewDemo.isHidden=true
    }
    @objc func button2Act(){
        secondviewDemo.isHidden=true
        viewDemo.isHidden=true
        thirdviewDemo.isHidden=false
    }
    @objc func button3Act(){
    viewDemo.isHidden=false
    thirdviewDemo.isHidden=true
    secondviewDemo.isHidden=true
    }
    
}
