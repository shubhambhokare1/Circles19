//
//  SignUpViewController.swift
//  Circles
//
//  Created by Shubham Bhokare on 6/21/20.
//  Copyright © 2020 Shubham Bhokare. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        styles.styleBut(signUpButton)
        styles.styleTF(firstNameTextField)
        styles.styleTF(lastNameTextField)
        styles.styleTF(emailTextField)
        styles.styleTF(passwordTextField)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func validateFields() -> String? {
        
        // Check if all field are filled
        // Check if password is valid
        
        return nil
    }
    
    
    @IBAction func signUpButtonIsPressed(_ sender: Any) {
        
        // Validate
        let error = validateFields()
        if error != nil {
            errorLabel.text = error!
        }
        
        // Create User
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!)
        { (result, err) in
            if err != nil{
                
            }
            else{
                let db = Firestore.firestore()
                db.collection("users").addDocument(data:
                    [
                        "firstName": self.firstNameTextField.text!,
                        "lastName":self.lastNameTextField.text!,
                        "uid": result!.user.uid
                    ]
                )
                
            }
        }
        
        // Transistion
        let homevc = storyboard?.instantiateViewController(identifier: "HomeVC") as? HomeViewController
        view.window?.rootViewController = homevc
        view.window?.makeKeyAndVisible()
    }
    
}
