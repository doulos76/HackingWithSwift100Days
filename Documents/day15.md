# Day 15

* Properties
* Static properties and methods
* Access control
* Polymorphism and typecasting
* Closures

## Properties

* [Reference Documents link](https://docs.swift.org/swift-book/LanguageGuide/Properties.html)
* Stored prpperty
* property observer
* computed property

```Swift
struct Person {
  var clothes: String {
    willSet {
      updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
    }
    didSet {
      updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
    }
  }
  var shoes: String
  
  func describe() {
    print("I like wearing \(clothes) with \(shoes)")
  }
  
  func updateUI(msg: String) {
    print(msg)
  }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()

var taylor1 = Person(clothes: "T-shirts", shoes: "")
taylor1.clothes = "short skirts"

struct Person1 {
  var age: Int
  
  var ageInDogYears: Int {
    get {
      return age * 7
    }
  }
}

var fan = Person1(age: 25)
print(fan.ageInDogYears)
```

## Static properties and methods

* [Reference Documents link - Type Properties](https://docs.swift.org/swift-book/LanguageGuide/Properties.html)


```Swift
struct TaylorFan {
  static var favoriteSong = "Look What You Made Me Do"
  
  var name: String
  var age: Int
}

let fan1 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)
```

## Access control

* [Reference Documents link](https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html)

```Swift
class TaylorFan1 {
  private var name: String?
}

```

## Polymorphism and typecasting

* [Reference Documents link](https://docs.swift.org/swift-book/LanguageGuide/TypeCasting.html)

```Swift
class Album {
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func getPerformance() -> String {
    return "The album \(name) sold lots"
  }
}

class StudioAlbum: Album {
  var studio: String
  
  init(name: String, studio: String) {
    self.studio = studio
    super.init(name: name)
  }
  
  override func getPerformance() -> String {
    return "The studio album \(name) sold lots."
  }
}

class LiveAlbum: Album {
  var location: String
  
  init(name: String, location: String) {
    self.location = location
    super.init(name: name)
  }
  
  override func getPerformance() -> String {
    return "The live album \(name) sold lots."
  }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studio")
var fearless = StudioAlbum(name: "Fearless", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
  print(album.getPerformance())
}

for album in allAlbums {
  if let studioAlbum = album as? StudioAlbum {
    print(studioAlbum.studio)
  } else if let liveAlbum = album as? LiveAlbum {
    print(liveAlbum.location)
  } else {
    print(album.name)
  }
}

let number = 5
let text = String(number)
print(text)
//let text1 = number as? String
//print(text1)
```

## Closures

* [Reference Documents link](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)

```Swift
let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
  vw.alpha = 0
})

UIView.animate(withDuration: 0.5) {
  vw.alpha = 0
}
```
