//
//  ViewController.swift
//  druth_proj3
//
//  Created by STUDENT-SP22 on 2/22/22.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    @IBOutlet weak var CelciusInput: UITextField!
    @IBOutlet weak var FarenheitInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Default Values
        CelciusInput.text = "0.0"
        FarenheitInput.text = "32.0"
    }
    //Functions
    @IBAction func C2F(_ sender: Any) {
        view.endEditing(true)
        if let tInCx = Float(CelciusInput.text!){
            let tInFx = (tInCx*9.0/5.0)+32.0
            FarenheitInput.text = String(format: "%0.1f", tInFx)
        } else {
            //show popup window
        }
    }
    @IBAction func F2C(_ sender: Any) {
        view.endEditing(true)
        if let tInTx = Float(FarenheitInput.text!){
            let tInPx = (tInTx-32.0)*5.0/9.0
            print(tInPx)
            CelciusInput.text = String(format: "%0.1f", tInPx)
        } else {
            //show popup window
        }
    }
    

}

