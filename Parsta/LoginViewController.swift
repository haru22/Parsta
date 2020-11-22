//
//  LoginViewController.swift
//  Parsta
//
//  Created by Haruna Yamakawa on 11/21/20.
//  Copyright © 2020 Haruna. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onLogin(_ sender: Any) {
        let username = usernameTextField.text!
        let password = passwordTextField.text!
        PFUser.logInWithUsername(inBackground: username, password: password) {
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
            // Do stuff after successful login.
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
          } else {
            // The login failed. Check error to see why.
            print("Login failed: \(error?.localizedDescription)")
          }
        }

    }
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameTextField.text
        user.password = passwordTextField.text
        
        // other fields can be set just like with PFObject
        //user["phone"] = "415-392-0202"

        user.signUpInBackground {
          (succeeded: Bool, error: Error?) -> Void in
          if let error = error {
            // Show the error
            print("Sign up failed: \(error.localizedDescription)")
          } else {
            // Hooray! Let them use the app now.
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
          }
        }
        
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
