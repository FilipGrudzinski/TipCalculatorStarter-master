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
    
    
}

