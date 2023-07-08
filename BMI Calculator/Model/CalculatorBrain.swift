//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ahmet Tunahan Bekdaş on 6.07.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain{
    
    var bmi: Float?

    func getBmiValue() -> String{
        
            let bmiDecimal = String(format: "%.1f", bmi ?? "0.0")
            return bmiDecimal

    }
    
    
    mutating func calculateBMI (weight: Float, height: Float){
        bmi = weight / (height * height)
    }
}
