//
//  LoginViewController.swift
//  Onboarding
//
//  Created by Muhamad Diaz on 22/09/19.
//  Copyright © 2019 Muhamad Diaz. All rights reserved.
//

import UIKit
import SwiftHEXColors

class LoginViewController: UIViewController {

    @IBOutlet weak var SubLoginView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToRegister", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
