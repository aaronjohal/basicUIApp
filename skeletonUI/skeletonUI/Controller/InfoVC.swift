//
//  InfoVC.swift
//  skeletonUI
//
//  Created by Aaron Johal on 19/02/2021.
//

import UIKit

class InfoVC: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var permissionsLabel: UILabel!
    
    var user: User!
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        nameLabel.text = user.name
        genderLabel.text = user.gender
        permissionsLabel.text = "notifications enabled: \(user.permissions)"
        
       
      

        // Do any additional setup after loading the view.
    }
    


}
