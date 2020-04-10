

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var calculatorBrain = CalculatorBrain()
    
    @IBAction func changeSliderHeight(_ sender: UISlider) {
        let height = String(format: "%.2f",  sender.value)
        heightValue.text = "\(height)m"
    }
    
    @IBAction func changeSliderWeight(_ sender: UISlider) {
        weightValue.text = "\(Int(sender.value))Kg"
    }
    @IBAction func calculateClicked(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }

    }
    
}

 
