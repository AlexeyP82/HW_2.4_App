//
//  AdditionalInformationViewController.swift
//  HW_2.4_App
//
//  Created by Алексей Подлевский on 31.05.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class AdditionalInformationViewController: UIViewController {
  
  // MARK: - IB Outlets
  @IBOutlet weak var additionalInformationLabel: UILabel!
  
  // MARK: - Public Properties
  var user: User!
  
  // MARK: - Private Properties
  
  // MARK: - Initializers
  
  // MARK: - Life Cycles Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    
    additionalInformationLabel.text = user.additionalInformation
  }
  
  // MARK: - Navigation
  
  // MARK: - IB Actions
  
  // MARK: - Public methods
  
  // MARK: - Private methods
}
