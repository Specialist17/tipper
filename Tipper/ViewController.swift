//
//  ViewController.swift
//  Tipper
//
//  Created by Fernando on 12/3/15.
//  Copyright © 2015 Fernando. All rights reserved.
//

import UIKit

var tipPercentages: [Double]!
var tipPercentage: Double!
let defaults = NSUserDefaults.standardUserDefaults()


class ViewController: UIViewController {
    

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControler: UISegmentedControl!
    
    var index: Int = 0

    
    @IBAction func tipCalc(sender: AnyObject) {
        
        tipPercentages = [0.15, 0.18, 0.20, 0.25]
        
        tipPercentage = tipPercentages[tipControler.selectedSegmentIndex]
        
        if bill.text == "" {
            tipLabel.text = "$0.00"
            totalLabel.text = "$0.00"
            view.endEditing(true)
        }else{
            
            let billAmount = Double(bill.text!)
            let tip = billAmount! * tipPercentage
            tipLabel.text = "$\(tip)"

            
            let totalBill = billAmount! + tip
            totalLabel.text = "$\(totalBill)"
            
            tipLabel.text = String(format: "$%0.2f", tip)
            totalLabel.text = String(format: "$%0.2f", totalBill)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //closes the keyboard when touching on main view
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //function to close the keyboard when pressing on "return"
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let tipPercent = defaults.integerForKey("tipPercentage")
        tipControler.selectedSegmentIndex = tipPercent
        let tipPercentages2 = [0.15, 0.18, 0.20, 0.25]
        let tipPercentage2 = tipPercentages2[tipControler.selectedSegmentIndex]
        
        if bill.text == "" {
            tipLabel.text = "$0.00"
            totalLabel.text = "$0.00"
            view.endEditing(true)
        }else{
            
            let billAmount = Double(bill.text!)
            let tip = billAmount! * tipPercentage2
            tipLabel.text = "$\(tip)"
            
            
            let totalBill = billAmount! + tip
            totalLabel.text = "$\(totalBill)"
            
            tipLabel.text = String(format: "$%0.2f", tip)
            totalLabel.text = String(format: "$%0.2f", totalBill)
        }

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
        
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }



}



