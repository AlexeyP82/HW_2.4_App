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
  
  // MARK: - Private Properties
  
  // MARK: - Initializers
  
  // MARK: - Life Cycles Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let information = Information()
    informationLabel.text = information.text
  }
  
  // MARK: - Navigation
  
  // MARK: - IB Actions
  
  // MARK: - Public methods
  
  // MARK: - Private methods
}
