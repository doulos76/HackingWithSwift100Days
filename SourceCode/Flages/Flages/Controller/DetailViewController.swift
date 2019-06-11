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

  // MARK:- Properties
  
  var selectedImage: String?
  @IBOutlet var imageView: UIImageView!
  
  // MARK:- View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupNavigationBar()
    
    if let imageToLoad = selectedImage {
      imageView.image = UIImage(named: imageToLoad)
    }
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }
  
  // MARK:- Methods

  fileprivate func setupNavigationBar() {
    title = selectedImage
    navigationItem.largeTitleDisplayMode = .never
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
  }
  
  @objc func shareTapped() {
    guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
      print("No image found")
      return
    }
    
    let viewController = UIActivityViewController(activityItems: [image], applicationActivities: [])
    viewController.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
    present(viewController, animated: true)
  }
}
