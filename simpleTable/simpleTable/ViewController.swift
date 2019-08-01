//
//  ViewController.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 18/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let dictionary:[String:Any]?=["name":"apalya","domain":"oTT","address":"jubilee hills"]
        let arra:[String]=["id","name","team","domain"]
        
        let detail=UserDefaults.standard.set(dictionary, forKey: "company")
        let  arradata=UserDefaults.standard.set(arra, forKey: "team")
        
        let output=UserDefaults.standard.dictionary(forKey: "company")
        let arraout=UserDefaults.standard.array(forKey: "team")
        
        print("\(output))\n\(arraout)")
        print("\(output?["name"]!)\t\(arra[0])")
        
       // let str: String? = nil
       // print(str ?? "nul")
        
       
    
}

}
