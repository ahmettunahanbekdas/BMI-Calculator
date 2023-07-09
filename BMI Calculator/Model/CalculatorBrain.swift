//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ahmet Tunahan Bekdaş on 6.07.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?

    func getBmiValue() -> String{
        let bmiDecimal = String(format: "%.1f", bmi?.value ?? "0.0")
            return bmiDecimal
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.black
    }
// 1. CalculateBMI methodu yazılır ve CalculateVC sayfasında çağrılarak BMI değeri hesaplanır
    mutating func calculateBMI (weight: Float, height: Float){
        let BMIValue = weight / (height * height)
        if BMIValue < 18.5 {
            bmi = BMI(value: BMIValue, advice: "Eat more pies", color: UIColor.blue)
        }else if  BMIValue < 24.9 {
            bmi = BMI(value: BMIValue, advice: "Fit as a fiddle", color: UIColor.green)
        }else{
            bmi = BMI(value: BMIValue, advice: "Eat less pies", color: UIColor.red)
         }
    }
}
