//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jakub Burkot on 1/5/15.
//  Copyright (c) 2015 Jakub Burkot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabelTwo: UILabel!
    @IBOutlet weak var totalLabelThree: UILabel!
    @IBOutlet weak var totalLabelFour: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    viewBackground.alpha = 0
    totalLabel.alpha = 0
    tipLabel.alpha = 0
    tipControl.alpha = 0
    totalLabelTwo.alpha = 0
    totalLabelThree.alpha = 0
    totalLabelFour.alpha = 0
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.15, 0.2, 0.25, 0.30]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        var billAmountTwo = total / 2
        var billAmountThree = total / 3
        var billAmountFour = total / 4
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalLabelTwo.text = String(format: "$%.2f", billAmountTwo)
        totalLabelThree.text = String(format: "$%.2f", billAmountThree)
        totalLabelFour.text = String(format: "$%.2f", billAmountFour)
        
        UIView.animateWithDuration(0.7, animations: {
            self.viewBackground.alpha = 0.2
            self.tipControl.alpha = 1
            self.tipLabel.alpha = 1
            self.totalLabel.alpha = 1
            self.totalLabelTwo.alpha = 1
            self.totalLabelThree.alpha = 1
            self.totalLabelFour.alpha = 1
            
            
            })
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
}
