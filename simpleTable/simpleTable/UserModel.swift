//
//  UserModel.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 19/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit
import Foundation

class UserModel: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let temp1 = Data1(college: "sdfgh", id: 4, teacher: "hj", domain: ".in")
        let temp2 = Data1(college: "gf", id: 4, teacher: "hj", domain: ".in")
        
        var array = Array<Any>()
        
        array.append(temp1)
        array.append(temp2)
        
//        UserDefaults.standard.setValue(array, forKey: "ew")
//        UserDefaults.standard.setValue(array, forKey:"ew")
        
        do {
            let encodedData = try NSKeyedArchiver.archivedData(withRootObject: array, requiringSecureCoding: false)
            UserDefaults.standard.set(encodedData, forKey: "ew")
        }
        catch {
           print("error occured ")
        }
        
        let decodedArray = NSKeyedUnarchiver.unarchiveObject(with: UserDefaults.standard.object(forKey: "ew") as! Data) as! [Data1]
        
        print(decodedArray[0].college)
    }

}

class Data1:NSObject, NSCoding {
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.college, forKey: "college")
        aCoder.encode(self.id, forKey: "id")
        aCoder.encode(self.teacher, forKey: "teacher")
        aCoder.encode(self.domain, forKey: "domain")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.college = aDecoder.decodeObject(forKey: "college") as? String
        self.id = aDecoder.decodeObject(forKey: "id") as? Int
        self.teacher = aDecoder.decodeObject(forKey: "teacher") as? String
        self.domain = aDecoder.decodeObject(forKey: "domain") as? String
    }
    
    var college:String?
    var id:Int?
    var teacher:String?
    var domain:String?
    
    init(college:String, id:Int, teacher:String, domain:String) {
        self.college=college
        self.id=id
        self.teacher=teacher
        self.domain=domain
    }
    
}
