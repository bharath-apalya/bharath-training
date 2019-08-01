//
//  mutableArraypractice.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 21/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class mutableArraypractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var newCar:NSMutableArray=["Merc","bmw","porsch","fortuner","ford"]
        var carOld:[String]=["jeep","compass","mahindra"]
        newCar.add("Ambassdor")
        carOld.append("xuv")
        newCar.addObjects(from: carOld)
        carOld.insert("audi", at: 0)
        var numbers:NSMutableArray=[1,2,3,4,3,2,5,6,5,5,76]
        numbers.removeObject(identicalTo: 2)
        numbers.remove(3)
        print(numbers)
        numbers.removeAllObjects()
         print(numbers)
        newCar.replaceObject(at: 2, with: "my car")
        //newCar1=NSRange
       //newCar.removeObjects(in: )
        //newCar.removeObjects(in: newCar)
        func main( a:inout Int ){
       
    }
    

  

}
}
