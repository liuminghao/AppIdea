//
//  ItemTableViewCell.swift
//  Bento
//
//  Created by Roseanna on 2/3/16.
//  Copyright © 2016 Bento Co. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemNameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func getPrice() -> Double{
        var textAsString: String = priceTextField.text!
        return (textAsString as NSString).doubleValue
    }
    
    func getName() -> String{
        var itemName: String = itemNameTextField.text!
        return itemName
    }

}
