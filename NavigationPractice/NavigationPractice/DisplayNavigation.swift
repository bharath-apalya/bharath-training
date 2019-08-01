//
//  DisplayNavigation.swift
//  NavigationPractice
//
//  Created by bharath gaddamadugu on 01/07/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class DisplayNavigation: UIViewController {
var displayText=""
    @IBOutlet weak var dispalyPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       dispalyPassword.text=displayText
        
    }
    

   

}
