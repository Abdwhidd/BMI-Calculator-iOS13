//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Wahid on 06/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getColor() -> UIColor {
        let bmiColor = bmi?.color ?? .label
        return bmiColor
    }
    
    func getAdvice() -> String {
        let bmiAdvice = bmi?.advice ?? "Tidak ada nilai"
        return bmiAdvice
    }
    
    // Fungsi untuk mengemabalikan hasil calculate height dengan weight dari calculateBMI
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    // Fungsi untuk calculate height dengan weight
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat anu", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat eta", color: .green)
        } else {
            print("Overweight")
        }
    }
}


