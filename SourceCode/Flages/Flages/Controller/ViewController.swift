//
//  ViewController.swift
//  Flages
//
//  Created by dave76 on 11/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

import UIKit

// MARK:- Protocol

protocol DetailViewControllerDelegate {
  func displayImageView()
}

// MARK:- ViewController

class ViewController: UITableViewController {
  
  // MARK:- Property
  
//  var delegate: DetailViewControllerDelegate?
  var flages = [String]()

  // MARK:- View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadData()
    setupNavigationBar()
  }
  
  fileprivate func setupNavigationBar() {
    title = "Flages"
    navigationController?.navigationBar.prefersLargeTitles = true
  }

  fileprivate func loadData() {
    let fileManager = FileManager.default
    let path = Bundle.main.resourcePath!
    let items = try! fileManager.contentsOfDirectory(atPath: path)
    flages = items.filter { item in item.hasSuffix(".png")}
  }
  
}

// MARK:- TableViewDataSource Methods

extension ViewController {
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return flages.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "cellId") as? FlagCell {
      let flag = flages[indexPath.row]
      cell.titleLabel.text = flag
      cell.flageImageView.image = UIImage(named: flag)
      return cell
    }
    return UITableViewCell()
  }
}

// MARK:- TableViewDelegate Methods

extension ViewController {
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    if let viewController = storyboard?.instantiateViewController(withIdentifier: "DetailSegue") as? DetailViewController {
      viewController.selectedImage = flages[indexPath.row]
      navigationController?.pushViewController(viewController, animated: true)
    }
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  }
}
