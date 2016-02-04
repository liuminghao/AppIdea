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
    @IBOutlet weak var randomButton: UIButton!
    
    override func awakeFromNib() {
        print("awake from nib")
        super.awakeFromNib()
        self.backgroundColor = UIColor.greenColor()
    }

    override func setSelected(selected: Bool, animated: Bool){
        print ("set selected")
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
