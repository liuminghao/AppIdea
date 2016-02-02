//
//  Utils.swift
//  Bento
//
//  Created by Minghao Liu on 2/1/16.
//  Copyright © 2016 Bento Co. All rights reserved.
//

import Foundation

class Utils {
    private static var idCount = -1
    static func getID() -> Int {
        idCount++
        return idCount
    }
}