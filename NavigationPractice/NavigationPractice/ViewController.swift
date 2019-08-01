//
//  ViewController.swift
//  NavigationPractice
//
//  Created by bharath gaddamadugu on 28/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var textField=""
    
    @IBOutlet weak var secured: UITextField!
    
    @IBOutlet weak var submit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secured.isSecureTextEntry=true
        
        
    }

    
    
    @IBAction func submit(_ sender: Any) {
      
       self.textField = secured.text!
        performSegue(withIdentifier: "name", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DisplayNavigation
        
        vc.displayText = self.textField
        
    }
    
}

