//
//  CustomTextField.swift
//  Window-shopper
//
//  Created by Ravi Inder Manshahia on 11/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4186108733)
        layer.cornerRadius = 5.0
        
        if let p = placeholder
        {
            let place = NSAttributedString(string: p, attributes: [ .foregroundColor  : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
