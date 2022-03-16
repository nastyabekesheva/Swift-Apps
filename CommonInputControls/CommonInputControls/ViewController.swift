//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Nastya Bekesheva on 16.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    @IBOutlet var slider: UISlider!
    @IBOutlet var toggle: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)),
           for: .touchUpInside)
    }

    @IBAction func buttonTapped(_ sender: Any) {
        if toggle.isOn {
            print("The switch is on!")
        }
        else {
            print("The switch is off.")
        }
        
        print("The slider is set to \(slider.value)")

    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("On")
        }
        else{
            print("Off")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func ReturnKeyTriggered(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func tapLocated(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
            print(location)


    }
}


