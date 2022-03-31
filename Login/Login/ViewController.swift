//
//  ViewController.swift
//  Login
//
//  Created by Nastya Bekesheva on 31.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textUsername: UITextField!
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var forgotUsernameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
         
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else {
            segue.destination.navigationItem.title = "Welcome,  \(String(describing: textUsername.text!))!"
        }

    }

    @IBAction func forgotUsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsername",
           sender: sender)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenPassword",
           sender: sender)
    }
}

