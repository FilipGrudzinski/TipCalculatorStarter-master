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
    @IBOutlet weak var billAmountTextField: BillAmountTextField!
    @IBOutlet weak var tipPercentSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var outputCardView: UIView!
    @IBOutlet weak var tipAmountTitleLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountTitleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    func calculate () {
        
        if self.billAmountTextField.isFirstResponder {
            self.billAmountTextField.resignFirstResponder()
        }
        
        guard let billAmountText = self.billAmountTextField.text,
            let billAmount = Double(billAmountText) else {
                clear()
                return
                
        }

        let roundedBillAmount = (100 * billAmount).rounded() / 100
        let tipPercent: Double
        
        switch tipPercentSegmentedControl.selectedSegmentIndex {
        case 0:
            tipPercent = 0.15
        case 1:
            tipPercent = 0.18
        case 2:
            tipPercent = 0.20
        default:
            preconditionFailure("Unexpected index.")
        }
        
        let tipAmount = roundedBillAmount * tipPercent
        let roundedTipAmount = (100 * tipAmount).rounded() / 100
        let totalAmount = roundedBillAmount + roundedTipAmount
        
        /*print("Bill Amount: \(roundedBillAmount)")
        print("tip Amount: \(roundedTipAmount)")
        print("Total: \(totalAmount)")*/
        
        self.billAmountTextField.text = String(format: "%.2f", roundedBillAmount)
        self.tipAmountLabel.text = String(format: "%.2f", tipAmount)
        self.totalAmountLabel.text = String(format: "%.2f", totalAmount)
        
    }
    
    func clear() {
        
        self.billAmountTextField.text = nil
        self.tipAmountLabel.text = "0.00"
        self.totalAmountLabel.text = "0.00"
        self.tipPercentSegmentedControl.selectedSegmentIndex = 0
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        billAmountTextField.calculateButtonAction = {
            
            self.calculate()
            
            
        }
        
    }
    

    @IBAction func toggleSwitch(_ sender: UISwitch) {
        
        if sender.isOn {
            
            print("Toggle is on")
            
        }else {
            
            print("Toggle is off")
            
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
            clear()
        
        
    }
    
    @IBAction func tipPercentChanged(_ sender: UISegmentedControl) {
        
        calculate()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
            self.view.endEditing(true)
         
        
    }
    
    
}

