//
//  DetailedCell.swift
//  TestOne
//
//  Created by bharath gaddamadugu on 23/07/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class DetailedCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var id: UILabel!
    
    @IBOutlet weak var designation: UILabel!
    
    @IBOutlet weak var dob: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
