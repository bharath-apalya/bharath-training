//
//  multipleViews.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 24/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class multipleViews: UIViewController {
    
   
    @IBOutlet weak var ViewTwo: UIView!
    
    @IBOutlet weak var viewOne: UIView!
    
    @IBOutlet weak var messOne: UITextField!
    
    @IBOutlet weak var destinMessg: UITextField!
    
    @IBOutlet weak var lableTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btOne(_ sender: Any) {
        let destiny=destinMessg.text
        let userMssg=messOne.text
        lableTwo.text = "\(userMssg!) to \(destiny!)"
    }

    @IBAction func reset(_ sender: Any) {
        messOne.text=""
        destinMessg.text=""
        lableTwo.text=""
    }
}
