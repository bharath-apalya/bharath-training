//
//  plistArrays.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 20/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class plistArrays: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
let document=NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask ,true)[0] as String
        
        let path = document.appending("vendor.plist")
        let fileManager = FileManager.default
        print(path)
        if fileManager.fileExists(atPath: path){
            let arr = NSMutableArray(contentsOfFile: path)!//
            arr.add("olx")
            arr.add("quicker")
            arr.replaceObject(at: 0, with: "Apalya")
            arr.removeObject(at: 1)
            let isWritten = arr.write(toFile: path, atomically: true)
            print(arr)
            //print(NSMutableArray(contentsOfFile: path)!)
        }else{
            print("no file")
            let data :NSMutableArray = ["cts","nanakramguda","microsoft","gachibowli"]
            let createData = NSMutableArray(array:data)
            let isWritten = createData.write(toFile: path, atomically: true)
            
        }
       
       
    }
}

