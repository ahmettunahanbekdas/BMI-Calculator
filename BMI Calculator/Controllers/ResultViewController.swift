//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ahmet Tunahan Bekdaş on 3.07.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
        
    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue

    }
    
    @IBAction func recalculatorPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
