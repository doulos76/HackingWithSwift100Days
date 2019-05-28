import UIKit

//: ## Initializers

struct User {
  var username: String
}

var user = User(username: "twostraws")

struct User1 {
  var username: String
  
  init() {
    username = "Anonymous"
    print("Creating a new user!")
  }
}


var user1 = User1()
user1.username
user1.username = "twostraw"

//: ## Referring to the current instance

struct Person {
  var name: String
  
  init(name: String) {
    print("\(name) was born!")
    self.name = name
  }
}


//: ## Lazy properties

struct FamilyTree {
  init() {
    print("Creating family tree!")
  }
}

struct Person1 {
  var name: String
  lazy var familyTree = FamilyTree()
  
  init(name: String) {
    self.name = name
  }
}

var ed = Person1(name: "Ed")

var familyTree = FamilyTree()
ed.familyTree

//: ## Static properties and methods

struct Student {
  var name: String
  
  init(name: String) {
    self.name = name
  }
}

let ed1 = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Student2 {
  static var classSize = 0
  var name: String
  
  init(name: String) {
    self.name = name
    Student2.classSize += 1
  }
}

let student2 = Student2(name: "student2")
Student2.classSize

//: ## Access control

struct Person3 {
  private var id: String
  
  init(id: String) {
    self.id = id
  }
  
  func identify() -> String {
    return "My social security number is \(id)"
  }
}

let ed3 = Person3(id: "12345")

//: ## Structs summary

//You can create your own types using structures, which can have their own properties and methods.
//You can use stored properties or use computed properties to calculate values on the fly.
//If you want to change a property inside a method, you must mark it as mutating.
//Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
//Use the self constant to refer to the current instance of a struct inside a method.
//The lazy keyword tells Swift to create properties only when they are first used.
//You can share properties and methods across all instances of a struct using the static keyword.
//Access control lets you restrict what code can use properties and methods.
