//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Cepress, Carl A. on 10/20/15.
//  Copyright © 2015 Cepress, Carl A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var billAmount = NSString(string: billField.text!).doubleValue
        //billAmount = billAmount + 0.1
        //print(billAmount)
        
   var tip = billAmount * 0.2
    var total = tip+billAmount
        
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String (format : "$%.2f", total)
    }
    
    
}

