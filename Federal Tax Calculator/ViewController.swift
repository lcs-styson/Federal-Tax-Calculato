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
        
        guard let nameAsString = nameInput.text else {
            taxesOwingOutput.text = "Please enter a name."
            return
        }
        
        // Get the income as a Double
        guard let incomeAsDouble = Double(incomeAsString) else {
            return
        }
        
        switch incomeAsDouble {
        case 0...47630:
            let taxesOwing = incomeAsDouble * 0.15
            taxesOwingOutput.text = nameAsString + ", you owe $" + String(taxesOwing)
            let effectiveTaxRate = taxesOwing / incomeAsDouble * 100
            let effectiveTaxRateAsString = String(format: "%.1f", effectiveTaxRate)
            effectiveTaxRateOutput.text = "Effective tax rate is " + effectiveTaxRateAsString + "%"
            let taxesOwingAsString = String(format: "$.01f", taxesOwing)
            
        case 47631...95259:
            let taxesOwing = (incomeAsDouble - 47629) * 0.205 + 47630 * 0.15
            taxesOwingOutput.text = nameAsString + ", you owe $" + String(taxesOwing)
            let effectiveTaxRate = taxesOwing / incomeAsDouble * 100
            let effectiveTaxRateAsString = String(format: "%.1f", effectiveTaxRate)
            effectiveTaxRateOutput.text = "Effective tax rate is " + effectiveTaxRateAsString + "%"
            let taxesOwingAsString = String(format: "$.01f", taxesOwing)
            
        case 95260...147667:
            let taxesOwing = (incomeAsDouble - 95259) * 0.26 + 47629 * 0.205 + 47630 * 0.15
            taxesOwingOutput.text = nameAsString + ", you owe $" + String(taxesOwing)
            let effectiveTaxRate = taxesOwing / incomeAsDouble * 100
            let effectiveTaxRateAsString = String(format: "%.1f", effectiveTaxRate)
            effectiveTaxRateOutput.text = "Effective tax rate is " + effectiveTaxRateAsString + "%"
            let taxesOwingAsString = String(format: "$.01f", taxesOwing)
            
        case 147668...210371:
            let taxesOwing = (incomeAsDouble - 147667) * 0.29 + 52408 * 0.26 + 47629 * 0.205 + 47630 * 0.15
            taxesOwingOutput.text = nameAsString + ", you owe $" + String(taxesOwing)
            let effectiveTaxRate = taxesOwing / incomeAsDouble * 100
            let effectiveTaxRateAsString = String(format: "%.1f", effectiveTaxRate)
            effectiveTaxRateOutput.text = "Effective tax rate is " + effectiveTaxRateAsString + "%"
            let taxesOwingAsString = String(format: "$.01f", taxesOwing)
            
        default:
            let taxesOwing = (incomeAsDouble - 210371) * 0.33 + 62704 * 0.29 + 52408 * 0.26 + 47629 * 0.205 + 47630 * 0.15
            taxesOwingOutput.text = nameAsString + " you owe $" + String(taxesOwing)
            let effectiveTaxRate = taxesOwing / incomeAsDouble * 100
            let effectiveTaxRateAsString = String(format: "%.1f", effectiveTaxRate)
            effectiveTaxRateOutput.text = "Effective tax rate is " + effectiveTaxRateAsString + "%"
            let taxesOwingAsString = String(format: "$.01f", taxesOwing)
            
        }
        
    }
}
