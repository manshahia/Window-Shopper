//
//  Wage.swift
//  Window-shopper
//
//  Created by Ravi Inder Manshahia on 11/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import Foundation

class Wage {
    
    class func calculate(forWage wage: Double, withPrice price: Double) -> Int
    {
        print(ceil(price / wage))
        return Int(ceil(price / wage))
    }
}
