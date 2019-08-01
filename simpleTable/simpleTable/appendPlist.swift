//
//  appendPlist.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 20/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class appendPlist: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        //print(documentDirectory)
        let path = documentDirectory.appending("custom.plist")
        let fileManager = FileManager.default
//        print(path)//
//        print(fileManager)//
        if fileManager.fileExists(atPath: path) {
//            print("file exhist")
            let dict = NSMutableDictionary(contentsOfFile: path)!//
            
            dict["Company"] = "Apalya"
            dict["ComingFrom"] = "Jublihills"
            print(dict.removeObject(forKey:"LastName"))//deleting objects from dictionary
            //print("\(removed) is removed")
            dict.setValue("sundar pichai", forKey: "ceo")//adding value to dictionary
            let isWritten = dict.write(toFile: path, atomically: true)
            print(NSMutableDictionary(contentsOfFile: path)!)
        } else {
            print("file not exhist")
            let data : [String: String] = [
                "Company": "My Company",
                "FullName": "My Full Name",
                "FirstName": "My First Name",
                "LastName": "My Last Name",]
            
            let someData = NSDictionary(dictionary: data)
            let isWritten = someData.write(toFile: path, atomically: true)
//           let dictionary1:NSMutableDictionary=["name":"apalya","domain":"oTT","address":"jubilee hills"]
//          dictionary1.removeAllObjects(forKeys:["apalya"])
        }    }
    

   
}
