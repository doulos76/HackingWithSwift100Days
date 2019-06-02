import UIKit

//: ## Functions

func favoriteAlbum(name: String) {
  print("My favorite is \(name)")
}

favoriteAlbum(name: "Fearless")

func printAlbumRelease(name: String, year: Int) {
  print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2019)

func countLettersInString(in string: String) {
  print("The string \(string) has \(string.count) letters.")
}

countLettersInString(in: "Hello")

func albumIsTaylors(name: String) -> Bool {
  if name == "Taylor Swift" { return true }
  if name == "Fearless" { return true }
  return false
}

if albumIsTaylors(name: "Taylor Swift") {
  print("That's one of hers!")
} else {
  print("Who made that?!")
}

if albumIsTaylors(name: "Blue") {
  print("That's one of hers!")
} else {
  print("Who made that?!")
}

//: ## Optionals

func getHaterStatus(weather: String) -> String? {
  if weather == "sunny" {
    return nil
  } else {
    return "Hate"
  }
}

var status = getHaterStatus(weather: "rainy")

if let upwrappedStatus = status {
  // unwrappedStatus contains a non-optional string
} else {
  // in case you want an else block, here you go...
}

func takeHaterAction(status: String) {
  if status == "Hate" {
    print("Hating")
  }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
  takeHaterAction(status: haterStatus)
}

func yearAlbumReleased(name: String) -> Int? {
  if name == "Taylor Swift" { return 2006}
  if name == "Fearless" { return 2008}
  return nil
}

var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int? {
  for i in 0..<array.count {
    if array[i] == string {
      return i
    }
  }
  return nil
}

let jamesPostion = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)

func yearAlbumReleased2(name: String) -> Int? {
  if name == "Taylor Swift" { return 2006}
  if name == "Fearless" { return 2008}
  return nil
}

var year = yearAlbumReleased2(name: "Taylor Swift")

if year == nil {
  print("There was an error")
} else {
  print("It was rele3ased in \(year!)")
}

var name1: String = "Paul"
var name2: String? = "Bob"
var name3: String! = "Sophie"

//: ## Optional chaining

func albumReleased2(year: Int) -> String? {
  switch year {
  case 2006:
    return "Taylor Swift"
  case 2008:
    return "Fearless"
  default:
    return nil
  }
}

//let album = albumReleased2(year: 2006)?.someOptionalValue?.whatever
//print("The album is \(album)")

let str1 = "Hello world"
print(str1.uppercased())

let album = albumReleased2(year: 2006) ?? "unknown"
print("The album is \(album)")

//: ## Enumerations

enum WeatherType {
  case sun
  case cloud
  case rain
  case wind
  case snow
}

//func getHaterStatus2(weather: WeatherType) -> String? {
//  switch weather {
//  case .sun:
//    return nil
//  case .cloud, .wind:
//    return "didlike"
//  case .rain:
//    return "hate"
//  }
//
//  //  if weather == WeatherType.sun {
////    return nil
////  } else {
////    return "Hate"
////  }
//}

//getHaterStatus2(weather: .cloud)

enum WeatherType2 {
  case sun
  case cloud
  case rain
  case wind(speed: Int)
  case snow
}

func getHaterStatus3(weather: WeatherType2) -> String? {
  switch weather {
  case .sun:
    return nil
  case .wind(let speed) where speed < 10:
    return "meh"
  case .cloud, .wind:
    return "dislike"
  case .rain, .snow:
    return "hate"
  }
}

//: ## Structs

struct Person {
  var clothes: String
  var shoes: String
  
  func dscribe() {
    print("I like wearing \(clothes) with \(shoes)")
  }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor.clothes)
print(other.shoes)

print(taylor)
print(taylorCopy)


//: ## Classes

class Person1 {
  var clothes: String
  var shoes: String
  
  init(clothes: String, shoes: String) {
    self.clothes = clothes
    self.shoes = shoes
  }
}

@objcMembers class Singer {
  var name: String
  var age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
  
  func sing() {
    print("La la la la")
  }
}

var taylor1 = Singer(name: "Taylor", age: 25)
taylor1.name
taylor1.age
taylor1.sing()

class CountrySinger: Singer {
  override func sing() {
    print("Trucks, guiters, and liquor")
  }
}

class HeavyMetalSinger: Singer {
  var noiseLevel: Int
  
  init(name: String, age: Int, noiseLevel: Int) {
    self.noiseLevel = noiseLevel
    super.init(name: name, age: age)
  }
  
  override func sing() {
    print("Grrr rargh rargh rarrrgh!")
  }
}

var taylor2 = CountrySinger(name: "Taylor", age: 25)
taylor2.sing()
