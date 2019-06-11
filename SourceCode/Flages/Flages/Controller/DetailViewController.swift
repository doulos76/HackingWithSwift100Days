//
//  DetailViewController.swift
//  Flages
//
//  Created by dave76 on 11/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

import UIKit

// MARK:- DetailViewController

class DetailViewController: UIViewController {
  
  @IBOutlet var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
//    imageView.image =
  }
}

extension DetailViewController: DetailViewControllerDelegate {
  func displayImageView() {
    
  }
}
