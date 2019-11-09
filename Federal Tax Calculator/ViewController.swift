//
//  ViewController.swift
//  Federal Tax Calculator
//
//  Created by Tyson, Sebastian on 2019-10-29.
//  Copyright © 2019 Tyson, Sebastian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameInput: UITextField!


    @IBOutlet weak var taxesOwingOutput: UILabel!
    @IBOutlet weak var incomeInput: UITextField!
    @IBOutlet weak var calculateAmount: UIButton!
    @IBOutlet weak var effectiveTaxRateOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
    }
    
    @IBAction func calculateTaxes(_ sender: Any) {
        
        // Get the input as a string
        guard let incomeAsString = incomeInput.text else {
            taxesOwingOutput.text = "Please enter an inocme."
            return
        }
        
        // Get the income as a Double
        guard let incomeAsDouble = Double(incomeAsString) else {
            return
        }
        
        switch incomeAsDouble {
        case 0...47630:
            let taxesOwing = incomeAsDouble * 0.15
            taxesOwingOutput.text = "You owe " + String(taxesOwing)
            
//        case 47631...95295:
            
        default:
            taxesOwingOutput.text = "Need to add code here"
        }
        
    }
}
