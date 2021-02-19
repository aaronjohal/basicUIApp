//
//  UserDetailsVC.swift
//  skeletonUI
//
//  Created by Aaron Johal on 18/02/2021.
//

import UIKit

class UserDetailsVC: UIViewController{
    
    

    @IBOutlet weak var nameTxtField: UITextField!

    @IBOutlet weak var mGenderBtn: customButton!
    @IBOutlet weak var fGenderBtn: customButton!
    
    @IBOutlet weak var notificationToggle: UISwitch!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = User() //init user
        nameTxtField.delegate = self //
    
    

    }
    
 
    @IBAction func maleGenderPressed(_ sender: Any) {
        user.gender = setUpGender(buttonSelected: mGenderBtn, buttonNotSelected: fGenderBtn, user: user)
      
       
    }
    @IBAction func femaleGenderPressed(_ sender: Any) {
        user.gender = setUpGender(buttonSelected: fGenderBtn, buttonNotSelected: mGenderBtn, user: user)
    }
    
    //sets the gender based on the selected button
    func setUpGender(buttonSelected : customButton, buttonNotSelected: customButton, user: User) -> String{
        
        buttonSelected.isSelected = true
        buttonNotSelected.isSelected = false
        
        buttonSelected.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .selected)
        
        var gender = ""
        if buttonSelected == mGenderBtn {
            gender = "Male"
        } else {
            gender = "Female"
        }
            
        return gender
        
    }
    

    @IBAction func toggleTapped(_ sender: Any) {
        if notificationToggle.isOn {
            user.permissions = true
        } else {
            user.permissions = false
            
        }
    }
    
    
    
    @IBAction func confirmPressed(_ sender: Any) {
        user.name = nameTxtField.text
        
        //go to next segue
        performSegue(withIdentifier: "infoVCSegue", sender: self)
    }
    
    
    
    //send User object to next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? InfoVC {
            nextVC.user = user //give next VC the user object.
        }
    }
    
    
    
    

}
extension UserDetailsVC : UITextFieldDelegate {
    
    //dismisses the keyboard when return is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        textField.resignFirstResponder() //textfield that is focused will be resigned.
        return true
    }
    
}
