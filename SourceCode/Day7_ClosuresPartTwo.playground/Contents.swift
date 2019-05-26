import UIKit

//: ## Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
  print("I'm getting ready to go.")
  action("London")
  print("I arrived!")
}

travel { (place: String) in
  print("I'm going to \(place) in my car")
}

func processPrimes(using closure: (Int) -> Void) {
  let primes = [2, 3, 5, 7, 11, 13, 17, 19]
  for prime in primes {
    closure(prime)
  }
}

processPrimes { (prime: Int) in
  print("\(prime) is a prime number.")
  let square = prime * prime
  print("\(prime) squared is \(square)")
}

//: ## Using closures as parameters when they return values

func travel1(action: (String) -> String) {
  print("I'm getting ready to go.")
  let description = action("London")
  print(description)
  print("I arrived")
}

travel1 { (place: String) -> String in
  return "I'm going to \(place) in my car"
}

//: ## Shorthand parameter names

func travel2(action: (String) -> String) {
  print("I'm getting ready to go.")
  let description = action("London")
  print(description)
  print("I arrived!")
}

travel2 { (place: String) -> String in
  return "I'm going to \(place) in my car"
}

travel2 { place -> String in
  return "I'm going to \(place) in my car"
}

travel2 { place in
  return "I'm going to \(place) in my car"
}

travel2 { place in
  "I'm going to \(place) in my car"
}

travel2 {
  "I'm going to \($0) in my car"
}

//: ## Closures with multiple parameters

func travel3(action: (String, Int) -> String) {
  print("I'm getting ready to go.")
  let description = action("London", 60)
  print(description)
  print("I arrived!")
}

travel3 {
  "I'm going to \($0) at \($1) miles per hour"
}

func authenticate(algorithm: (String, String) -> Bool) {
  print("Authenticating user")
  let username = "twostraws"
  let password = "fr0sties"
  let result = algorithm(username, password)
  if result {
    print("You're in!")
  } else {
    print("Try again.")
  }
}

//: ## Returning closures from functions

func travel4() -> (String) -> Void {
  return {
    print("I'm going to \($0)")
  }
}

let result = travel4()
result("London")

let result2 = travel4()("London")

//: ## Capturing values

func travel5() -> (String) -> Void {
  return {
    print("I'm going to \($0)")
  }
}

let result3 = travel5()
result3("London")

func travel6() -> (String) -> Void {
  var counter = 1
  
  return {
    print("\(counter). I'm going to \($0)")
    counter += 1
  }
}

let result4 = travel6()
result4("London")
result4("London")
result4("London")

func createAgeValidator(strict: Bool) -> (Int) -> Bool {
  return {
    if strict {
      if $0 >= 21 {
        return true
      }
    } else {
      if $0 >= 18 {
        return true
      }
    }
    return false
  }
}
let validator = createAgeValidator(strict: true)
validator(21)

func storeTwoValues(value1: String, value2: String) -> (String) -> String {
  var previous = value1
  var current = value2
  return { new in
    let removed = previous
    previous = current
    current = new
    return "Removed \(removed)"
  }
}
let store = storeTwoValues(value1: "Hello", value2: "World")
let removed = store("Value Three")
print(removed)

func visitPlaces() -> (String) -> Void {
  var places = [String: Int]()
  return {
    places[$0, default: 0] += 1
    let timesVisited = places[$0, default: 0]
    print("Number of times I've visited \($0): \(timesVisited).")
  }
}
let visit = visitPlaces()
visit("London")
visit("New York")
visit("London")

//: ## Closures summary
//You can assign closures to variables, then call them later on.
//Closures can accept parameters and return values, like regular functions.
//You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//If the last parameter to your function is a closure, you can use trailing closure syntax.
//Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
//If you use external values inside your closures, they will be captured so the closure can refer to them later.
