# Day 24

* Projects 4, Part One
  - Setting up
  - Creating a simple browser with WKWebView
  - Choosing a website: UIAlertController action sheets

* We learn to study that is UIBarButtonItem, UIAlertController, UIToolbar, WKWebView, UIProgressView, delegatioin, KVO etc.

## Setting Up

Main.storyboard > Select ViewController > Editor > Embed in > Navigation Controller

## Creating a simple browser with WKWebView

### Import WebKit Framwork

```Swift
import WebKit
```

### create the web view, we need to store it as a property.

```Swift
var webView: WKWebView!
```

### override this method

```Swift
override func loadView() {
  webView = WKWebView()
  webView.navigationDelegate = self
  view = webView
}
```
* Delegation
  * Programming pattern - a way of writing code -
  * Easy to understand, easy to use, and extreamely flexible.
  * A _delegation_ is one thing acting in place of another, effectively answering questions and responding to events on its behalf.

### Adapt protocol

```Swift
class ViewController: UIViewController, WKNavigationDelegate {
```

"create a new subclass of `UIViewController` called `ViewController`, and tell the compiler that we promise we’re safe to use as a `WKNavigationDelegate`."

### add new lines in ViewDidLoad

```Swift
override func viewDidLoad() {
  super.viewDidLoad()
  guard let url = URL(string: "https://www.hackingwithswift.com") else { return }
  webView.load(URLRequest(url: url))
  webView.allowsBackForwardNavigationGestures = true
}
```

## Choosing a website: UIAlertController action sheets

### create BarButtonItem in NavigationBar

```Swift
navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
```

### implement BarButtonItem Methods

* create AlertController, add actions in that

```Swift
@objc func openTapped() {
  let ac = UIAlertController(title: "Open page...", message: nil, preferredStyle: .actionSheet)
  ac.addAction(UIAlertAction(title: "apple.com", style: .default, handler: openPage))
  ac.addAction(UIAlertAction(title: "hackingwithswift.com", style: .default, handler: openPage))
  ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
  ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
  present(ac, animated: true)
}
```

* implement alert action method

```Swift  
func openPage(action: UIAlertAction) {
  guard let actionTitle = action.title else { return }
  guard let url = URL(string: "https://" + actionTitle) else { return }
  webView.load(URLRequest(url: url))
}
```

* implement webKit delegate method

```Swift  
func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
  title = webView.title
}
```