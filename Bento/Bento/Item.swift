//
//  Item.swift
//  Bento
//
//  Created by Minghao Liu on 2/1/16.
//  Copyright © 2016 Bento Co. All rights reserved.
//

import Foundation

class Item {
    var name: String
    var price: Double
    var peopleArray: [Int]
    
    init(name: String, price: Double){
        self.name = name
        self.price = price
        self.peopleArray = []
    }
}