# Day 24

* Projects 4, Part two
  - Monitoring page loads: UIToolbar and UIProgressView
  - Refactoring for the win


## Monitoring page loads: UIToolbar and UIProgressView

### UIToolBar
* UIBarButtonItem collection 을 갖고 있음
* viewDidLoad에 UIBarButtonItem을 만들고 toolbarItems에 array의 item으로 추가함

```Swift
let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
    
toolbarItems = [progressButton, spacer, refresh]
navigationController?.isToolbarHidden = false
```

### UIProgressView
* "progress bar"라고 불림
* 진행 사항을 보여주는 뷰(blue color on gray background, from left to right)

class에 아래와 같이 추가함

```Swift
var progressView: UIProgressView!
```

viewDidLoad에 아래와 같이 추가함

```Swift
progressView = UIProgressView(progressViewStyle: .default)
progressView.sizeToFit()
let progressButton = UIBarButtonItem(customView: progressView)
```
toolBarItems에 추가

```Swift
toolbarItems = [progressButton, spacer, refresh]
```

### KVO(Key-Value-Observing)

 *  __Please tell me when the property X of object Y gets changed by anyone at any time__

```Swift
webView.addObserver(self, 
					forKeyPath: #keyPath(WKWebView.estimatedProgress), 
 					options: .new, 
					context: nil)
```

* addObserver() 메서드는 4개의 parameter를 갖음
* viewController가 observer임 (`self`)
* `WKWebView`의 `estimatedProgress` property를 obsrve함.
* `forKeyPath`와 `context`좀 더 설명
* `forKeyPath`는 forProperty로 명명되지 않음. 속성이름이 아님, 실제 경로를 지정할 수 있음. 하나의 속성을 다른 속성에 포함하거나 다른 속성을 다른 속성에 포함할 수 있음. 고급 키 경로를 사용하면 배열의 모든 요소를 평균화하는 등의 기능을 추가 할 수도 있음.
* `WKWebView` class에는 `estimatedProgress`속성이 있음
* `context`는 더 쉬움. 고유한 값을 제공하면 값이 변경되었다는 알림을 받을 때 동일한 context 값이 다시 전송됨. 이렇게 하면 컨텍스트를 점검하여 호출 된 옵저버인지 확인할 수 있음.
* __Warning__: 복잡한 앱에서, `addOberver()`를 할경우 `removeObserver`를 해야 함, observing이 끝날 때.

```Swift
override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
	if keyPath == "estimatedProgress" {
		progressView.progress = Float(webView.estimatedProgress)
	}
}
```


## Refactoring for the win

```Swift
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
  var progressView: UIProgressView!
  var websites = ["apple.com", "hackingwithswift.com"]
  
  override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
  }

  // MARK:- View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
    let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
    
    progressView = UIProgressView(progressViewStyle: .default)
    progressView.sizeToFit()
    let progressButton = UIBarButtonItem(customView: progressView)

    toolbarItems = [progressButton, spacer, refresh]
    navigationController?.isToolbarHidden = false
    
    webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
    
    
    guard let url = URL(string: "https://" + websites[0]) else { return }
    webView.load(URLRequest(url: url))
    webView.allowsBackForwardNavigationGestures = true
  }
  
  // MARK:- Methods
  
  @objc func openTapped() {
    let ac = UIAlertController(title: "Open page...", message: nil, preferredStyle: .actionSheet)
    
    for website in websites {
      ac.addAction(UIAlertAction(title: website, style: .default, handler: openPage))
    }
    
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
  
  override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
    if keyPath == "estimatedProgress" {
      progressView.progress = Float(webView.estimatedProgress)
    }
  }
  
  func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
    let url = navigationAction.request.url
    
    if let host = url?.host {
      for website in websites {
        if host.contains(website) {
          decisionHandler(.allow)
          return
        }
      }
    }
    decisionHandler(.cancel)
  }
}
```