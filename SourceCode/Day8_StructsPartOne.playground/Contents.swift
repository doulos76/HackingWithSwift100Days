import UIKit

//: ## Creating your own structs

struct Sport {
  var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
print(tennis.name)

//: ## Computed properties

struct Sport1 {
  
  /// Stored property
  var name: String
}

struct Sport2 {
  var name: String
  var isOlympicSport: Bool
  
  
  /// Computed Property
  var oiympicStatus: String {
    if isOlympicSport {
      return "\(name) is an Olympic sport"
    } else {
      return "\(name) is not an Olympic sport"
    }
  }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.oiympicStatus)

struct Candle {
  var burnLength: Int
  var alreadyBurned = 0
  var burnRemaining: Int {
    return burnLength - alreadyBurned
  }
}

//: ## Property observers

struct Progress {
  var task: String
  var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct Progress1 {
  var task: String
  var amount: Int {
    didSet {
      print("\(task) is now \(amount)% complete")
    }
  }
}

var progress1 = Progress1(task: "Loading data", amount: 0)
progress1.amount = 30
progress1.amount = 80
progress1.amount = 100

//: ## Methods

struct City {
  var population: Int
  
  func collectTaxes() -> Int {
    return population * 1000
  }
}

let london = City(population: 9_000_000)
london.collectTaxes()

//: ## Mutating methods

struct Person {
  var name: String
  mutating func makeAnonymous() {
    name = "Anonymous"
  }
}

var person = Person(name: "Ed")
print(person.name)
person.makeAnonymous()
print(person.name)

//: ## Properties and methods of strings

let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

//: ## Properties and methods of arrays

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

let cardGames = ["Poker", "Blackjack", "Whist"]
cardGames.firstIndex(of: "Whist") == 2
