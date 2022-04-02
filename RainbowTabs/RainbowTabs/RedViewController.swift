//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Nastya Bekesheva on 31.03.2022.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "!"
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
     
        tabBarItem.badgeValue = nil
    }
     
    


}

