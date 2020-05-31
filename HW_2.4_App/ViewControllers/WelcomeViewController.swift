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
   var welcomeMessage: String!
  
  // MARK: - Private Properties
  
  // MARK: - Initializers
  
  // MARK: - Life Cycles Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    
    welcomeLabel.text = welcomeMessage
  }
  
  // MARK: - Navigation
  
  // MARK: - IB Actions
  
  // MARK: - Public methods
  
  // MARK: - Private methods
  
}
