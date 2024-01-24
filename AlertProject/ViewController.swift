//
//  ViewController.swift
//  AlertProject
//
//  Created by Fırat AKBULUT on 25.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonSignUp(_ sender: Any) {
        
        if userNameText.text == ""{
            makeAlert(tittleInput: "Error!", messageInput: "username not found")  
        }
        
        else if passwordText.text == "" {
            makeAlert(tittleInput: "Error!", messageInput: "password not found")
        }
        
        else if passwordText.text != password2Text.text{
            makeAlert(tittleInput: "Error!", messageInput: "password not match")
        }
        
        else {
            makeAlert(tittleInput: "Success", messageInput: "User OK")
            }
    }
    
    func makeAlert(tittleInput:String, messageInput:String){
        let alert = UIAlertController(title: tittleInput, message: messageInput, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Code to be executed when the user taps "OK"
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

