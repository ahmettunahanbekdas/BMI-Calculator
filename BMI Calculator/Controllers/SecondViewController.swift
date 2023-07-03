//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Ahmet Tunahan Bekdaş on 3.07.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
     var bmiValue = "0.0"
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        let label = UILabel()
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
