
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi (height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue <= 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more cakes!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice:  "Keep it up!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat just salads!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBmiValue () -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice () -> String {
        return bmi?.advice ?? "Eat more pies!"
    }
    func getColor () -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
}
 
