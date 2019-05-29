# Day 10

* Class

## Creating your own classes


```Swift
class Dog {
  var name: String
  var breed: String
  
  init(name: String, breed: String) {
    self.name = name
    self.breed = breed
  }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")
```

## Class inheritance

* `super.init()`

```Swift
class Poodle: Dog {
	init(name: String) {
    	super.init(name: name, breed: "Poodle")
	}
}
```

## Overriding methods

* `override`
* super class에서 상속할 경우, `override`를 이용해서 부모 클래스의 메서드를 재정의할 수 있다.

```Swift
class Dog1 {
  func makeNoise() {
    print("Woof!")
  }
}

class Poodle1: Dog1 {
  override func makeNoise() {
    print("Yip!")
  }
}

let poppy1 = Poodle1()
poppy1.makeNoise()
```


## Final classes

* `final` keyword를 사용해서 상속을 하지 않게 막음.

```Swift
final class Dog2 {
  var name: String
  var breed: String
  
  init(name: String, breed: String) {
    self.name = name
    self.breed = breed
  }
}

//class Dog3: Dog2 {
//
//}

```


## Copying objects 
 

```Swift
class Singer {
  var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)
```

## Deinitializers

```Swift
class Person {
  var name = "Jone Doe"
  init() {
    print("\(name) is alive!")
  }
  
  func printGreeting() {
    print("Hello, I'm \(name)")
  }
  
  deinit {
    print("\(name) is no more!")
  }
}

for _ in 1...3 {
  let person = Person()
  person.printGreeting()
}
```
## Mutability

```Swift
class Singer1 {
  var name = "Taylor Swift"
//  let name = "Taylor Swift"
}

let taylor1 = Singer1()
taylor1.name = "Ed Sheeran"
print(taylor1.name)
```

## Classes summary 
 
* Classes and structs are similar, in that they can both let you create your own types with properties and methods.
* One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
* You can mark a class with the final keyword, which stops other classes from inheriting from it.
* Method overriding lets a child class replace a method in its parent class with a new implementation.
* When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
* Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
* Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
