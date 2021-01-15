//
//  ViewController.swift
//  demoname
//
//  Created by Sidhant Madan on 14/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var finalValueLabel: UILabel!
    @IBOutlet weak var taxTextField: UITextField!
    //label
    @IBOutlet weak var priceTextField: UITextField!
    //pricetextfield
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        finalValueLabel.text = ""
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        view.endEditing(true)
        let price = Double(priceTextField.text!)!
        let tax = Double(taxTextField.text!)!
        let finalTax = price * tax
        let finalAmount = price + finalTax
        finalValueLabel.text = "Rs \(finalAmount)"
    }
    
}

