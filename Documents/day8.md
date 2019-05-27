# Day 8

* Structs, Part one

## Creating your own structs


```Swift
struct Sport {
  var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
print(tennis.name)
```

## Computed properties


```Swift
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
```

## Property observers


```Swift
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
```


## Methods


```Swift
struct City {
  var population: Int
  
  func collectTaxes() -> Int {
    return population * 1000
  }
}

let london = City(population: 9_000_000)
london.collectTaxes()
```


## Mutating methods
 

```Swift
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

```

## Properties and methods of strings

```Swift
func travel1(action: () -> Void) {
  print("I'm getting ready to go.")
  action()
  print("I arrived!")
}

travel1() {
  print("I'm driving in my car")
}

travel {
  print("I'm driving in my car")
}
```

## Properties and methods of arrays

```Swift
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

let cardGames = ["Poker", "Blackjack", "Whist"]
cardGames.firstIndex(of: "Whist") == 2```