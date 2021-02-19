//
//  UserDetailsVC.swift
//  skeletonUI
//
//  Created by Aaron Johal on 18/02/2021.
//

import UIKit

class UserDetailsVC: UIViewController{
    
    

    @IBOutlet weak var nameTxtField: UITextField!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = User() //init user
        nameTxtField.delegate = self //

    }
    
    
    @IBAction func confirmPressed(_ sender: Any) {
        print(nameTxtField.text!)
    }
    

}

extension UserDetailsVC : UITextFieldDelegate {
    
    //dismisses the keyboard when return is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("we are here")
        textField.resignFirstResponder() //textfield that is focused will be resigned.
        return true
    }
    
}
