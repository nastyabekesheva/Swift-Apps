//
//  ViewController.swift
//  Calculator
//
//  Created by Nastya Bekesheva on 17.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var operand = ""
    var num1 = 0.0
    var num2 = 0.0
    var answer = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressOne(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "1"
        }
        else{
            label.text! += "1"
        }
    }
    
    @IBAction func pressTwo(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "2"
        }
        else{
            label.text! += "2"
        }
    }
    
    @IBAction func pressThree(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "3"
        }
        else{
            label.text! += "3"
        }
    }
    
    @IBAction func pressFour(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "4"
        }
        else{
            label.text! += "4"
        }
    }
    
    @IBAction func pressFive(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "5"
        }
        else{
            label.text! += "5"
        }
    }
    
    @IBAction func pressSix(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "6"
        }
        else{
            label.text! += "6"
        }
    }
 
    @IBAction func pressSeven(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "7"
        }
        else{
            label.text! += "7"
        }
    }
    
    @IBAction func pressEight(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "8"
        }
        else{
            label.text! += "8"
        }
    }
    
    @IBAction func pressNine(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "9"
        }
        else{
            label.text! += "9"
        }
    }
    
    @IBAction func pressZero(_ sender: Any) {
        if label.text == "0" || label.text == String(answer){
            label.text = "0"
        }
        else{
            label.text! += "0"
        }
    }
    
    @IBAction func plus(_ sender: Any) {
        num1 = Double(label.text!) ?? 0
        operand = "+"
        label.text = "0"
    }
    
    @IBAction func minus(_ sender: Any) {
        num1 = Double(label.text!) ?? 0
        operand = "-"
        label.text = "0"
    }
    
    @IBAction func multiply(_ sender: Any) {
        num1 = Double(label.text!) ?? 0
        operand = "*"
        label.text = "0"
    }
    
    @IBAction func divide(_ sender: Any) {
        num1 = Double(label.text!) ?? 0
        operand = "/"
        label.text = "0"
    }
    
    @IBAction func clear(_ sender: Any) {
        label.text = "0"
    }
    
    @IBAction func pressDot(_ sender: Any) {
        if label.text == String(answer){
            label.text! += "0."
        }
        else{
            label.text! += "."
        }
    }
    
    @IBAction func calculate(_ sender: Any) {
        if operand == "+"{
            num2 = Double(label.text!) ?? 0
            answer = num1 + num2
            label.text = String(answer)
        }
        else if operand == "-"{
            num2 = Double(label.text!) ?? 0
            answer = num1 - num2
            label.text = String(answer)
        }
        else if operand == "*"{
            num2 = Double(label.text!) ?? 0
            answer = num1 * num2
            label.text = String(answer)
        }
        else if operand == "/"{
            num2 = Double(label.text!) ?? 0
            if num2 == 0.0 {
                label.text = "Error"
            }
            else{
                answer = num1 / num2
                label.text = String(answer)

            }
        }
    }
    
}

