import UIKit

//: ## Creating your own classes

protocol Identifiable {
  var id: String { get set }
}

struct User: Identifiable {
  var id: String
  
}

func displayID(thing: Identifiable) {
  print("My ID is \(thing.id)")
}

//: ## Protocol inheritance

protocol Payable {
  func calculateWages() -> Int
}

protocol NeedsTraining {
  func study()
}

protocol HasVacation {
  func takeVacation(days: Int)
}

protocol Employ: Payable, NeedsTraining, HasVacation { }

struct Engineer: Employ {
  func calculateWages() -> Int {
    //
    return 0
  }
  
  func study() {
    //
  }
  
  func takeVacation(days: Int) {
    //
  }
}

//: ## Extensions

extension Int {
  func squared() -> Int {
    return self * self
  }
}

let number = 8
number.squared()

extension Int {
  var isEven: Bool {
    return self % 2 == 0
  }
}

3.isEven
4.isEven

extension String {
  var isLong: Bool {
    return count > 25
  }
}

"ABCD".isLong
"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMN".isLong

//: ## Protocol extensions

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
  func summarize() {
    print("There are \(count) of us:")
    
    for name in self {
      print(name)
    }
  }
}

pythons.summarize()
beatles.summarize()

//: ## Protocol-oriented programming

protocol Identifiable1 {
  var id: String { get set }
  func identify()
}

extension Identifiable1 {
  func identify() {
    print("My ID is \(id).")
  }
}

struct User1: Identifiable1 {
  var id: String
}

let twostraws = User1(id: "twostraws")
twostraws.identify()

//: ## Protocols and extensions summary

//Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
//You can build protocols on top of other protocols, similar to classes.
//Extensions let you add methods and computed properties to specific types such as Int.
//Protocol extensions let you add methods and computed properties to protocols.
//Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
