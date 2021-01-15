//
//  ViewController.swift
//  demoname
//
//  Created by Sidhant Madan on 14/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var finalvaluelbl: UILabel!
    @IBOutlet weak var Taxtxt: UITextField!
    //label
    @IBOutlet weak var Pricetxt: UITextField!
    //pricetextfield
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        finalvaluelbl.text = ""
    }

    @IBAction func Calculatetotalprice(_ sender: Any) {
        let price = Double(Pricetxt.text!)!
        let tax = Double(Taxtxt.text!)!
        let finalTax = price * tax
        let finalAmount = price + finalTax
        finalvaluelbl.text = "Rs \(finalAmount)"
    }
    
}

