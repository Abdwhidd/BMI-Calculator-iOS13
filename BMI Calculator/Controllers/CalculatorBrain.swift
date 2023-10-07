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
    
    // Fungsi untuk mengemabalikan hasil calculate height dengan weight dari calculateBMI
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    
    func getAdvice() -> String {
        let bmiAdvice = bmi?.advice ?? "Tidak ada nilai"
        return bmiAdvice
    }
    
    
    func getColor() -> UIColor {
        let bmiColor = bmi?.color ?? .white
        return bmiColor
    }
    
    // Fungsi untuk calculate height dengan weight
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
}


