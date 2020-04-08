//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightValue.text = "1.5m"
        weightValue.text = "300Kg"
    }

    
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
        let BMI = weight / pow(height, 2)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", BMI)
        
        self.present(secondVC, animated: true, completion: nil)
    }
    
}

 
