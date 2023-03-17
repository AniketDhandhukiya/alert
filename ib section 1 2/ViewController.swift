//
//  ViewController.swift
//  ib section 1 2
//
//  Created by R & W on 05/01/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUsernameLabel()
        setPasswordLabel()
        setLoginButton()
    }
    func setUsernameLabel(){
        usernameLabel.layer.masksToBounds = true
        usernameLabel.textColor = UIColor.blue
    }
    func setPasswordLabel(){
        passwordLabel.layer.masksToBounds = true
        passwordLabel.textColor = UIColor.blue
    }
    func setLoginButton(){
        loginButton.layer.borderColor = UIColor.black.cgColor
        loginButton.layer.masksToBounds = true
        loginButton.layer.cornerRadius = 10
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        if usernameTextField.text == "" && passwordtextField.text == ""{
            showAlert(title: "please enter the username & password")
        }
        else if usernameTextField.text == ""{
            showAlert(title: "please enter your username")
        }
        else if passwordtextField.text == ""{
            showAlert(title: "please enter your password")
        }
        else if usernameTextField.text == "aniket" && passwordtextField.text == "12345"{
            navigate()
        }
        else{
            let alert = UIAlertController(title: "Incorrect username & password", message: "TRY AGAIN", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    func showAlert(title:String){
        let alert = UIAlertController(title: "ERROR", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func navigate(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "loginEnterPage") as! loginEnterPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    func navigata() {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "forgotPasswordPage") as! forgotPasswordPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        navigata()
    }
}

