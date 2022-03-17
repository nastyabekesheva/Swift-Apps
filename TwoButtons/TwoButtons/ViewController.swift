//
//  ViewController.swift
//  TwoButtons
//
//  Created by Nastya Bekesheva on 17.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var InputText: UITextField!
    @IBOutlet var OutputText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SetText(_ sender: Any) {
        OutputText.text = InputText.text
    }
    
    @IBAction func ClearText(_ sender: Any) {
        OutputText.text = ""
        InputText.text = ""
    }
    
}

