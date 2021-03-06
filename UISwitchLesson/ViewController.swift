//
//  ViewController.swift
//  UISwitchLesson
//
//  Created by UrataHiroki on 2021/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var plusMinusSwitch: UISwitch!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        plusMinusSwitch.onTintColor = .systemTeal
        
    }

    
    @IBAction func countUpMinus(_ sender: Any) {
        
        if plusMinusSwitch.isOn == true{
            
            count = count + 1
            
            countLabel.text = String(count)
            
        }else if plusMinusSwitch.isOn == false{
            
            count = count - 1
            
            countLabel.text = String(count)
            
        }
        
        
    }
    
    
    @IBAction func modeChange(_ sender: UISwitch) {
        
        if sender.isOn == true{
            
            plusMinusButton.backgroundColor = .systemGreen
            plusMinusButton.setTitle("+", for: .normal)
            
        }else if sender.isOn == false{
            
            plusMinusButton.backgroundColor = .systemTeal
            plusMinusButton.setTitle("-", for: .normal)
            
        }
        
        
    }
    
    
    
}

