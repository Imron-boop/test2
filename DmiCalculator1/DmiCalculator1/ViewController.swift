//
//  ViewController.swift
//  DmiCalculator1
//
//  Created by muchamad amri on 29/11/19.
//  Copyright © 2019 muchamad amri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var bmiLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resultBtnPressed(_ sender: Any) {
        let height = Double(heightText.text!)!
        let weight = Double(weightText.text!)!
        let result = weight / (height * height)
        
        bmiLbl.text = "\((result*100).rounded() / 100)"
        
        if result <= 18.5 {
            descLbl.text = "You are Underweight"
        }else if result < 25.0 {
            descLbl.text = "Your Weight is Normal"
        }else if result < 30.0 {
            descLbl.text = "You are Overweight"
        }else if result >= 30.0 {
            descLbl.text = "You are Obese"
        }
    }
    
}

