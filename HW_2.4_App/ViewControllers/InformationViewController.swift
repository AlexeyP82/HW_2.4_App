//
//  InformationViewController.swift
//  HW_2.4_App
//
//  Created by Алексей Подлевский on 31.05.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {
  
  // MARK: - IB Outlets
  @IBOutlet weak var informationLabel: UILabel!
  
  // MARK: - Public Properties
  var user: User!
  
  // MARK: - Private Properties
  
  // MARK: - Initializers
  
  // MARK: - Life Cycles Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    
    user = (self.tabBarController?.viewControllers?.first
      as! WelcomeViewController).user
    
    informationLabel.text = user.information
  }
  
  // MARK: - Navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "additionalInformationSegue" {
      let destinationVC = segue.destination as! AdditionalInformationViewController
      
      destinationVC.user = user
    }
  }
  
  // MARK: - IB Actions
  @IBAction func nextButtonPressed() {
    performSegue(withIdentifier: "additionalInformationSegue", sender: self)
  }
  
  // MARK: - Public methods
  
  // MARK: - Private methods
}
