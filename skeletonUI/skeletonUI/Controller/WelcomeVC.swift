//
//  ViewController.swift
//  skeletonUI
//
//  Created by Aaron Johal on 18/02/2021.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
        
       performSegue(withIdentifier: "userVCSegue", sender: self)
        print("button tapped")
    }
    
}

