//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightValue(_ sender: UISlider) {
        let heightValue = sender.value
        let doubleHeight = String(format: "%.2f", heightValue)
        heightLabel.text = "\(doubleHeight)m"
    }
    
    @IBAction func weightValue(_ sender: UISlider) {
        let weightValue = sender.value
        let doubleWeight = String(format: "%.0f", weightValue)
        weightLabel.text = "\(doubleWeight)Kg"
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let height = heightSlider.value
        let weight = Double(weightSlider.value)
        
        let bmı = weight / pow(Double(height), 2)
        print(bmı)
    }
    
    
}


