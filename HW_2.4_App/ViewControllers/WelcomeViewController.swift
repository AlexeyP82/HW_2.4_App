//
//  WelcomeViewController.swift
//  HW_2.4_App
//
//  Created by Алексей Подлевский on 31.05.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
  
  // MARK: - IB Outlets
  @IBOutlet weak var welcomeLabel: UILabel!
  
  // MARK: - Public Properties
  var user: User!
  
  // MARK: - Private Properties
  
  // MARK: - Initializers
  
  // MARK: - Life Cycles Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    
    welcomeLabel.text = "Welcome, \(user.name)!"
  }
  
  // MARK: - Navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.destination is LoginViewController {
      print("1")
    } else {
      let tabBarController = segue.destination as! UITabBarController
      let destinationVC = tabBarController.viewControllers?[1] as!
      InformationViewController
      
      destinationVC.user = user
    }
  }
  
  // MARK: - IB Actions
  
  // MARK: - Public methods
  
  // MARK: - Private methods
  
}
