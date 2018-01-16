//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jiayi Wang on 1/15/18.
//  Copyright © 2018 Jiayi Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func Calculate(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        let percentage = [0.18, 0.2, 0.25]
        let tipPercentage = percentage[tipControl.selectedSegmentIndex]
        let tip = bill * tipPercentage
        let total = tip + bill
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
    
}

