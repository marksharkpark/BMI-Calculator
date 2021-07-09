//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mark Park on 7/6/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct calculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        var answer : String
        
        if bmiValue < 18.5{
            answer = "You are underweight, eat more dessert!"
            bmi = BMI(value: bmiValue, advice: answer, color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        }
        else if (18.5 < bmiValue) || (bmiValue < 24.9){
            answer = "You are normal, keep up the good work."
            bmi = BMI(value: bmiValue, advice: answer, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else{
            answer = "You are overweight, cut calories!"
            bmi = BMI(value: bmiValue, advice: answer, color: #colorLiteral(red: Float(0.6643349528), green: 0, blue: Float(0.08385483176), alpha: 1))
        }
        
    }
    
    func getBMI() -> String {
        let bmiChange = String(format: "%.1f", bmi?.value ?? 0.0) // if BMI is nil, then use 0.0. Chain the BMI Struct variable to access the value
        return bmiChange
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
}
