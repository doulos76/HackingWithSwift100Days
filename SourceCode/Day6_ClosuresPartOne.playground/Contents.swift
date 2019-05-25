import UIKit

//: ## Creating basic closures
let driving = {
  print("I'm driving in my car")
}

driving()

//: Accepting parameters in a closure

let driving1 = { (place: String) in
  print("I'm going to \(place) in my car")
}

driving1 ("London")

//: Returning values from a closure

let driving2 = { (place: String) in
  print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
  return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

//: ## Closures as parameters

let driving3 = {
  print("I'm getting ready to go.")
}

func travel(action: () -> Void) {
  print("I'm getting ready to go.")
  action()
  print("I arrived!")
}

travel(action: driving3)

//let resignation = { (name: String) in
//  print("Dear \(name), I'm outta here!")
//}
//func printDocument(contents: () -> Void) {
//  print("Connecting to printer...")
//  print("Sending document...")
//  contents()
//}
//printDocument(contents: resignation)

//: ## Trailing closures syntax

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

//func knitSweater(then: () -> Void) {
//  print("Buy wool")
//  for _ in 1...100 {
//    print("Knit knit knit...")
//  }
//  action()
//}
//
//knitSweater {
//  print("Who wants to buy a sweater?")
//}

func repeatAction(count: Int, action: () -> Void) {
  for _ in 0..<count {
    action()
  }
}
repeatAction(count: 5) {
  print("Hello, world!")
}
