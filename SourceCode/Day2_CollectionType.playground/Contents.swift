import UIKit

//: Arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "RIngo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]


//: Sets

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

//: Tuples

var name = (first: "Taylor", last: "Swift")
name.0
name.first

//: Arrays vs Tuples

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//: Dictionary

let heights = ["Taylor Swift": 1.78, "Ed Sheeran": 1.73]
heights["Taylor Swift"]


//: Dictionary default values

let favoriteIceCream = [
  "Paul": "Chocolate",
  "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]
favoriteIceCream
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "12"]

let abbreviations = ["m": "meters", "km": "kilometers"]
let meters = abbreviations["m", default: "m"]

//: Creating empty collections

var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

//: Enumeration

let result3 = "failure"
let result4 = "failed"
let result5 = "fail"

enum Result {
  case success
  case failure
}

let result6 = Result.failure

//: Enum associated values

enum Activity {
  case board
  case running(destination: String)
  case talking(topic: String)
  case singing(volume: Int)
}

let taling = Activity.talking(topic: "football")

//: Enum raw values

enum Planet: Int {
  case mercury = 1
  case venus
  case earth
  case mars
}

let earth = Planet(rawValue: 2)

//: Complex types: Summary


//You’ve made it to the end of the second part of this series, so let’s summarize:
//
//Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
//Arrays store items in the order you add them, and you access them using numerical positions.
//Sets store items without any order, so you can’t access them using numerical positions.
//Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
//Dictionaries store items according to a key, and you can read items using those keys.
//Enums are a way of grouping related values so you can use them without spelling mistakes.
//You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
