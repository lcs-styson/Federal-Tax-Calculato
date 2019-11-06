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
    @IBOutlet weak var grossIncomeInput: UITextField!
    @IBOutlet weak var yourAmount: UILabel!
    @IBOutlet weak var calculateAmount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
       
        guard let grossIncomeAsString = grossIncomeInput.text else {
 
        switch grossIncome {
        
        case 0...50000:
            yourAmount.text = grossIncome * 0.15
            
        case 50001...100000:
            yourAmount.text = grossIncome * 0.205
            
        default:
            yourAmount.text = grossIncome * 0.26
    }


}

