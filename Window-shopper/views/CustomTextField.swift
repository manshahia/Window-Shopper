//
//  CustomTextField.swift
//  Window-shopper
//
//  Created by Ravi Inder Manshahia on 11/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {

    override func prepareForInterfaceBuilder()
    {
        customizeTF()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTF()
    }
    
    func customizeTF()
    {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4186108733)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder
        {
            print("Placeholder text is  \(p)")
            let place = NSAttributedString(string: p, attributes: [ .foregroundColor  : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }

}
