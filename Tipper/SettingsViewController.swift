//
//  SettingsViewController.swift
//  Tipper
//
//  Created by Fernando on 12/6/15.
//  Copyright © 2015 Fernando. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    

    @IBOutlet weak var tipControler: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(tipPercentage, forKey: "tipPercentage")
               
        
        //var tipPercentage2 = tipPercentages[tipControler.selectedSegmentIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
