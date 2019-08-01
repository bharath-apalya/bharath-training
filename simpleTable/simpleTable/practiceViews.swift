//
//  practiceViews.swift
//  simpleTable
//
//  Created by bharath gaddamadugu on 24/06/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class practiceViews: UIViewController {
    var Cname:String = "fth"
    var Cdomain:String = "rtj"
    @IBOutlet weak var domain: UITextField!
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var fullName: UILabel!
    
    // @IBOutlet weak var detailsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        //let customView = UIView()
        //customView.frame = CGRect.init(x: 0, y: 0, width: 100, height: 200)
        //customView.backgroundColor = UIColor.black     //give color to the view
        //customView.center = self.view.center
        //self.view.addSubview(customView)
    }
    
    
    @IBAction func submit(_ sender: Any) {
        Cname = name.text ?? "novalue"
        Cdomain = domain.text ?? "no value"
        fullName.text="\(Cname) \(Cdomain)"
        
    }
}

