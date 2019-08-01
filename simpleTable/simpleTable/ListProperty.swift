//
//  ListProperty.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 20/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class ListProperty: UIViewController {
   // var dictionary:NSDictionary
    var teacherDict:NSDictionary = [:]
    var studentDict:NSDictionary = [:]
    var statesArray:NSArray=[]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nsDictionary: NSDictionary!
       
        if let path = Bundle.main.path(forResource: "PList", ofType: "plist") {
            nsDictionary = NSDictionary(contentsOfFile: path)
            //print(nsDictionary)
            //print(nsDictionary["Teacher"])
            
            let dict = nsDictionary?["Teacher"] as! [String: Any]
            print(dict["Tname"])
            
            let arr=nsDictionary?["States"] as! [Any]
            print(arr)
            
        }
        
       
//        // let tlist:NSDictionary=NSDictionary.init(nsDictionary?.object(forKey: "Teacher") )
//
       // let tlist:NSDictionary=NSDictionary()
        
//        teacherDict=tlist.object(forKey:teacherDict["Teacher"] ?? "noValue")! as! NSDictionary
//        
//        let slist:NSDictionary=NSDictionary.init(object:nsDictionary, forKey:"Student" as NSCopying)
//        studentDict=slist.object(forKey:studentDict["Student"])!as! NSDictionary
//    print(teacherDict)
        
    }
    
        //let path = Bundle.main.path(forResource: "PList", ofType: "plist")
           // dictionary = NSDictionary(contentsOfFile: path)
    
    

    
}
