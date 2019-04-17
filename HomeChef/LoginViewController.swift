//
//  LoginViewController.swift
//  HomeChef
//
//  Created by Mantaqaa Khan on 4/12/19.
//  Copyright © 2019 Joyce Huang. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class LoginViewController: UIViewController, GIDSignInUIDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if userDefault.bool(forKey: "usersignedin") {
            performSegue(withIdentifier: "Segue_To_Signin", sender: self)
        }
    }
    
    @IBAction func onSignIn(_ sender: Any) {
    }
    
    func assignBackground() {
        let background = UIImage(named: "Background")
    }
    
}

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


