//
//  ViewController.swift
//  demoBMI
//
//  Created by 林辰澤 on 2022/7/31.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .black
        stateLabel.text = "沒事多喝水"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        var bmi = 0.0
        if let weightText = weightTextField.text,
           let heightText = heightTextField.text,
           let weight = Double(weightText),
           let height = Double(heightText){
            
            let heightMeter = height / 100
            bmi = weight / (heightMeter * heightMeter)
            print(bmi)
            bmiLabel.text = String(format: "%.2f", bmi)
        }
        view.endEditing(true) //收鍵盤
        
        if bmi < 18.5{
            stateLabel.text = "太瘦太瘦，多吃一點"
        }
        if bmi >= 18.5 && bmi < 24{
            stateLabel.text = "標準體重，繼續維持"
        }
        if bmi >= 24 && bmi < 27{
            stateLabel.text = "過重了喔，運動一下"
        }
        if bmi >= 27 && bmi < 30{
            stateLabel.text = "輕度肥胖，快去運動"
        }
        if bmi >= 30 && bmi < 35{
            stateLabel.text = "中度肥胖，少吃多動"
        }
        if bmi >= 35{
            stateLabel.text = "重度肥胖，注意健康"
        }
    }

}

