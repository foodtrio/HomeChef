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
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if userDefault.bool(forKey: "usersignedin") {
            performSegue(withIdentifier: "Segue_To_Signin", sender: self)
        }
    }
    
    func createUser(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error == nil {
                print("User Created")
                self.signInUser(email: email, password: password)
            } else {
                print(error?.localizedDescription)
            }
        }
    }
    
    func signInUser(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error == nil {
                print("User signed in.")
                self.userDefault.set(true, forKey: "usersignedin")
                self.userDefault.synchronize()
                self.performSegue(withIdentifier: "Segue_To_Signin", sender: self)
            } else if (error?._code == AuthErrorCode.userNotFound.rawValue){
                self.createUser(email: email, password: password)
            } else {
                print(error?.localizedDescription)
            }
        }
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        signInUser(email: emailTextField.text!, password: passwordTextField.text!)
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


