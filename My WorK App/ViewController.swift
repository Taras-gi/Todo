//
//  ViewController.swift
//  My WorK App
//
//  Created by gwl-18 on 09/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var New:Double = 0.0
    var New1:Double = 0.0
    var perfMath = false
    var Operator = 0
    var previousNumber:Double = 0.0
    var answer:String = ""
    var flag = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        if flag == false {
            textField.text = String(sender.tag-1)
            New = Double(textField.text!)!
            flag = true
        } else {
            textField.text! += String(sender.tag-1)
            New = Double(textField.text!)!
        }
    }
    
    @IBAction func newNumber(_ sender: UIButton) {
        if textField.text != "" && sender.tag != 11 && sender.tag != 16 {
            previousNumber = Double(textField.text!)!
            if sender.tag == 12 {
                textField.text! = "÷"      
            }
            else if sender.tag == 13 {
                textField.text! = "X"
            }
            else if sender.tag == 14 {
                textField.text! = "-"
            }
            else if sender.tag == 15 {
                textField.text! = "+"
            }
            Operator = sender.tag
            flag = false
    }
        else if sender.tag == 16 {
            
            if Operator == 12 {
                textField.text = String(previousNumber / New)
            }
            if Operator == 13 {
                textField.text = String(previousNumber * New)
            }
            if Operator == 14 {
                textField.text = String(previousNumber - New)
            }
            if Operator == 15 {
                textField.text = String(previousNumber + New)
            }
            flag = false
    }
        else if sender.tag == 11 {
            textField.text = ""
            previousNumber = 0.0
            New = 0.0
            Operator = 0
        }
    }
}

