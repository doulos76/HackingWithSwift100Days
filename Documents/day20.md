# Day 20

* __Project 2, Part two__
	* Guess which flag: random numbers
	* From outlets to actions: creating an `IBAction`

## Guess which flag: random numbers

* Array random Number Generator : [`shuffle()`](https://developer.apple.com/documentation/swift/collectionofone/2995156-shuffle)

```Swift
/// Shuffles the collection in place.
///
/// Use the `shuffle()` method to randomly reorder the elements of an array.
///
///     var names = ["Alejandro", "Camila", "Diego", "Luciana", "Luis", "Sofía"]
///     names.shuffle(using: myGenerator)
///     // names == ["Luis", "Camila", "Luciana", "Sofía", "Alejandro", "Diego"]
///
/// This method is equivalent to calling `shuffle(using:)`, passing in the
/// system's default random generator.
///
/// - Complexity: O(*n*), where *n* is the length of the collection.
@inlinable public mutating func shuffle()
```

* Int Random Number Methods : [`random(in:)`](https://developer.apple.com/documentation/swift/int/2995648-random)

```Swift
correctAnswer = Int.random(in: 0...2)
```


## From outlets to actions: creating an IBAction

* [AlertController](https://developer.apple.com/documentation/uikit/uialertcontroller)

* Full Source

```Swift
import UIKit

class ViewController: UIViewController {
  
  // MARK:- Properties

  @IBOutlet var button1: UIButton!
  @IBOutlet var button2: UIButton!
  @IBOutlet var button3: UIButton!
  
  var countries = [String]()
  var score = 0
  var correctAnswer = 0
  
  // MARK:- View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "span", "uk", "us"]
    
    button1.layer.borderWidth = 1
    button2.layer.borderWidth = 1
    button3.layer.borderWidth = 1
    
    button1.layer.borderColor = UIColor.lightGray.cgColor
    button2.layer.borderColor = UIColor.lightGray.cgColor
    button3.layer.borderColor = UIColor.lightGray.cgColor
    
    askQuestion(action: nil)
  }
  
  // MARK:- Methods
  
  func askQuestion(action: UIAlertAction! = nil) {
    countries.shuffle()
    correctAnswer = Int.random(in: 0...2)
    
    button1.setImage(UIImage(named: countries[0]), for: .normal)
    button2.setImage(UIImage(named: countries[1]), for: .normal)
    button3.setImage(UIImage(named: countries[2]), for: .normal)
    
    title = countries[correctAnswer].uppercased()
  }
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    var title: String
    
    if sender.tag == correctAnswer {
      title = "Correct"
      score += 1
    } else {
      title = "Wrong"
      score -= 1
    }
    
    let ac = UIAlertController(title: title, message: "Your socre is \(score)", preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
    present(ac, animated: true)
  }
  
}
```