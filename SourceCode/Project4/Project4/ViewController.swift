//
//  ViewController.swift
//  Project4
//
//  Created by dave76 on 12/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
  
  // MARK:- Properties
  
  var webView: WKWebView!
  
  override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
  }

  // MARK:- View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
    
    guard let url = URL(string: "https://www.hackingwithswift.com") else { return }
    webView.load(URLRequest(url: url))
    webView.allowsBackForwardNavigationGestures = true
  }
  
  // MARK:- Methods
  
  @objc func openTapped() {
    let ac = UIAlertController(title: "Open page...", message: nil, preferredStyle: .actionSheet)
    ac.addAction(UIAlertAction(title: "apple.com", style: .default, handler: openPage))
    ac.addAction(UIAlertAction(title: "hackingwithswift.com", style: .default, handler: openPage))
    ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
    present(ac, animated: true)
  }
  
  func openPage(action: UIAlertAction) {
    guard let actionTitle = action.title else { return }
    guard let url = URL(string: "https://" + actionTitle) else { return }
    webView.load(URLRequest(url: url))
  }
  
  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    title = webView.title
  }
}
