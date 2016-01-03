//
//  SettingsViewController.swift
//  Tipper
//
//  Created by Fernando on 12/6/15.
//  Copyright © 2015 Fernando. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var index = 0
    let settings = NSUserDefaults.standardUserDefaults()

    
    @IBAction func tipAmount(sender: AnyObject) {
        
        index = tipControler2.selectedSegmentIndex

    }

    @IBOutlet weak var tipControler2: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                       
        
        //var tipPercentage2 = tipPercentages[tipControler.selectedSegmentIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Settings view will appear")

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("Settings view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("Settings view will disappear")
        defaults.setInteger(tipControler2.selectedSegmentIndex, forKey: "tipPercentage")
        defaults.synchronize()
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("Settings view did disappear")
        let tipPercent = defaults.integerForKey("tipPercentage")
        tipPercentage = tipPercentages[defaults.integerForKey("tipPercentage")]
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
