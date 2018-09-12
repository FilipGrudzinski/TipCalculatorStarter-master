//
//  ViewController.swift
//  TipCalculatorStarter
//
//  Created by Chase Wang on 9/19/17. Modified by FG
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Lifecycle
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var themeSwitch: UISwitch!
    
    @IBOutlet weak var inputCardView: UIView!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var outputCardView: UIView!
    @IBOutlet weak var tipAmountTitleLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountTitleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func toggleSwitch(_ sender: UISwitch) {
        
        if sender.isOn {
            
            print("Toggle is on")
            
        }else {
            
            print("Toggle is off")
            
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        print("Reset")
        
    }
    
    @IBAction func tipPercentChanged(_ sender: UISegmentedControl) {
        
        
        
    }
    
    
    
}

