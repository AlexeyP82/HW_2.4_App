//
//  LoginViewController.swift
//  HW_2.4_App
//
//  Created by Алексей Подлевский on 30.05.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  
  // MARK: - IB Outlets
  @IBOutlet weak var userNameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  // MARK: - Public Properties
  
  // MARK: - Private Properties
  
  // MARK: - Initializers
  
  // MARK: - Life Cycles Methods
  override func touchesBegan(_ touches: Set<UITouch>,
                             with event: UIEvent?) {
    view.endEditing(true)
    super.touchesBegan(touches, with: event)
  }
  
  // MARK: - Navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let tabBarController = segue.destination as! UITabBarController
    let destinationVC = tabBarController.viewControllers?.first as!
    WelcomeViewController
    
    let name = userNameTextField.text ?? ""
    destinationVC.welcomeMessage = "Welcome, \(name)!"
  }
  
  // MARK: - IB Actions
  @IBAction func passwordTextFieldChanged() {
    passwordTextField.text = ""
  }
  
  @IBAction func loginButtonPressed() {
    logIn()
  }
  
  @IBAction func forgotUserNameButtonPressed() {
    let user = User()
    showAlert(title: "Forgot name?",
              message: "User name is: \(user.name)")
  }
  
  @IBAction func forgotPasswordButtonPressed() {
    let user = User()
    showAlert(title: "Forgot password?",
              message: "User password is: \(user.password)")
  }
  
  @IBAction func unwindSegue(segue: UIStoryboardSegue) {
    userNameTextField.text = ""
    passwordTextField.text = ""
  }
  
  // MARK: - Public methods
  
  // MARK: - Private methods
  private func showAlert(title: String, message: String) {
    let alertController = UIAlertController(title: title,
                                            message: message,
                                            preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .cancel)
    alertController.addAction(okAction)
    present(alertController, animated: true)
  }
  
  private func logIn() {
    let user = User()
    if userNameTextField.text == user.name &&
      passwordTextField.text == user.password {
      performSegue(withIdentifier: "logInSegue", sender: self)
    } else {
      passwordTextField.text = ""
      showAlert(title: "Error!",
                message: "Wrong user name or password!")
    }
  }
}

extension LoginViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if textField == userNameTextField {
      textField.resignFirstResponder()
      passwordTextField.becomeFirstResponder()
    }
    if textField == passwordTextField {
      logIn()
    }
    
    return true
  }
}
