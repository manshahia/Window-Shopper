//
//  ViewController.swift
//  Window-shopper
//
//  Created by Ravi Inder Manshahia on 11/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hourlyWageTF: CustomTextField!
    @IBOutlet weak var itemPriceTF: CustomTextField!
    
    
    @IBOutlet weak var calculatedHoursLbl: UILabel!
    @IBOutlet weak var staticHoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let accessorryBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        accessorryBtn.setTitle("Calculate", for: .normal)
        accessorryBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        accessorryBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        accessorryBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        hourlyWageTF.inputAccessoryView = accessorryBtn
        itemPriceTF.inputAccessoryView = accessorryBtn
        
        calculatedHoursLbl.isHidden = true
        staticHoursLbl.isHidden = true
    }

    @objc func calculate()
    {
        if let wageTxt = hourlyWageTF.text, let itemPriceTxt = itemPriceTF.text {
            if let wage = Double(wageTxt), let price = Double(itemPriceTxt)
            {
                view.endEditing(true)
                
                
                calculatedHoursLbl.text = "\(Wage.calculate(forWage: wage, withPrice: price))"
                
                calculatedHoursLbl.isHidden = false
                staticHoursLbl.isHidden = false
            }
            
            
        }
    }
    

    @IBAction func clearCalculatePressed(_ sender: Any)
    {
        hourlyWageTF.text = ""
        itemPriceTF.text = ""
        calculatedHoursLbl.isHidden = true
        staticHoursLbl.isHidden = true
        
    }
    
}

