//
//  CustomCellTableViewCell.swift
//  TestOne
//
//  Created by bharath gaddamadugu on 16/07/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

 protocol CustomCellDelegate: NSObjectProtocol {
    
    func didSlectedTextFieldInCustomCellIndexpath(customeCell : CustomCell,indexPath : IndexPath)
}

class CustomCell: UITableViewCell,UITextFieldDelegate{
  
    var indexPath : IndexPath?
    @IBOutlet weak var detailField: UITextField!
    var delegate :CustomCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        detailField.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if let indexPath = self.getIndexPath() {
            self.delegate?.didSlectedTextFieldInCustomCellIndexpath(customeCell: self, indexPath: indexPath)
        }
    
    }
    
//    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
//        print("calledm hsehrw here")
//
//    }
    
    func getIndexPath() -> IndexPath? {
        guard let superView = self.superview as? UITableView else {
            print("superview is not a UITableView - getIndexPath")
            return nil
        }
        indexPath = superView.indexPath(for: self)
        return indexPath
    }
    

}

