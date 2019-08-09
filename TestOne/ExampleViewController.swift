//
//  ExampleViewController.swift
//  TestOne
//
//  Created by bharath gaddamadugu on 25/07/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {// usibg this program data exists permanently

    override func viewDidLoad() {
        super.viewDidLoad()
        var  documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let path = documentDirectory.appending("trylist.plist")
        
//        let path = Bundle.main.path(forResource: "testingplist", ofType: "plist")
        
        let fileManager = FileManager.default
    
        if fileManager.fileExists(atPath: path){
            var data = NSDictionary(contentsOfFile: path)
//            data = [
//                "Company": "My Company",
//                "FullName": "My Full Name",
//                "FirstName": "My First Name",
//                "LastName": "My Last Name",
//                ]
            
//            let someData = NSDictionary(dictionary: data)
//            let isWritten = data!.write(toFile: path, atomically:true)
//            
            print(data!)
            
        }else{
            print("file exists")
        }
        
    }
        
    
            
            
            }
    

  

