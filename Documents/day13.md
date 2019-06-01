# Day 13

* Variables and constant
* Types of Data
* Operators
* String interpolation
* Arrays
* Dictionaries
* Conditional statements
* Loops
* Switch case


## Variables and constants

* `var` 변수 선언
  - `var` keyword를 이용해서 변수 선언
  - `var` 이후에 선언된 변수는 먼저 초기화하고, 그 이후에 update할 수 있다.
  - 같은 이름으로 변수 선언을 중복선언 할 수는 없다.
* `let` 상수 선언
  - `let` keyword로 선언함.
  - 한번 선언한 후에 변경할 수 없다.

```Swift
var name1 = "Tim McGraw"
var name2 = "Romeo"

let name3: String
name3 = "Hello"
```

## Types of Data

* 변수나 상수를 선언할 때 `: `뒤에 자료형을 표시해서 명시적으로 자료형을 지적할 수 있음
* 자료형을 지정하지 않을 경우 `=` 뒤에 자료형에 의해서 변수의 자료형이 추정됨.

```Swift
var name: String
name = "Tim McGraw"

var age: Int
age = 25

//name = 25
//age = "Time MaGraw"

var latitude: Double
latitude = 36.155557

var longitude1: Double
longitude1 = -123486.783333

var longitude2: Float
longitude2 = -123486.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool = false


var name4 = "Time McGraw"
let age2 = 25
let longitude3 = -86.783333
let nothingInBrain = true
```

## Operator

```Swift
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var a1 = 1.1
var b1 = 2.2
var c1 = a1 + b1

var name5 = "Tim McGraw"
var name6 = "Romio"
var both = name5 + " and " + name6


var a2 = 1.1
var b2 = 2.2
var c2 = a2 + b2

c2 > 3
c2 >= 3
c2 > 4
c2 < 4

var name7 = "Tim McGraw"
name7 == "Tim McGraw"
name7 == "TIM McGraw"
name7 != "TIM McGraw"

var stayOutTooLate2 = true
stayOutTooLate2
!stayOutTooLate2
```

## String interpolation

* `\(variableName)`
* `\(`과 `)`사이에 변수 또는 상수명을 넣음.

```Swift
var name8 = "Tim McGraw"
"Your name is \(name8)"
"Your name is " + name8
var age3 = 25
var latitude3 = 3616667
"Your name is \(name8), your age is\(age3), and your latitude is \(latitude3)."

"Your age is \(age3) years old, In another \(age3) years you will be \(age3 * 2)."
```


## Array
 
```Swift
var name8 = "Tim McGraw"
"Your name is \(name8)"
"Your name is " + name8
var age3 = 25
var latitude3 = 3616667
"Your name is \(name8), your age is\(age3), and your latitude is \(latitude3)."

"Your age is \(age3) years old, In another \(age3) years you will be \(age3 * 2)."

//: ## Arrays

var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

songs[0]
songs[1]
songs[2]

type(of: songs)

var songs2: [String] = [String]()

//songs2[0] = "Shake it Off"

var songs3 = ["Shake it Off", "You Belong with Me", "Back to December"]
var songs4 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both2 = songs3 + songs4
both2 += ["Everything has changed"]
```

## Dictionary

* key, value로 구성

```Swift
var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]
person[1]
person[2]

var personDictionary = [
                        "first": "Taylor",
                        "middle": "Alison",
                        "last": "Swift",
                        "month": "December",
                        "website": "taylorswift.com"
                        ]

personDictionary["middle"]
personDictionary["month"]
```

## Conditional statements 
 
```Swift
var action: String
var person2 = "hater"

if person2 == "heater" {
  action = "hate"
} else if person2 == "player" {
  action = "play"
} else {
  action = "cruise"
}
var action2: String
var stayOutTooLate3 = true
var nothingInBrain3 = true

if stayOutTooLate3 && nothingInBrain3 {
  action2 = "cruise"
}

var stayOutToLate2 = true
var nothingInBrain2 = true
var action3: String

if !stayOutTooLate2 && !nothingInBrain2 {
  action3 = "cruise"
}

```

## Loops

```Swift
print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")

for i in 1...10 {
  print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"
for _ in 1...5 {
  str += " fake"
}
print(str)

1 ..< 5

var songsList = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
for song in songsList {
  print("My favorite song is \(song)")
}

var peopleList = ["players", "haters", "heart-breakers", "fakers"]
var actionList = ["play", "hate", "break", "fake"]

for i in 0..<peopleList.count {
  print("\(peopleList[i]) gonna \(actionList[i]).")
}

for i in 0..<peopleList.count {
  var str = "\(peopleList[i]) gonna"
  
  for _ in 1...5 {
    str += " \(actionList[i])"
  }
  print(str)
}

var counter = 0
while true {
  print("Counter is now \(counter)")
  counter += 1
  if counter == 556 {
    break
  }
}

var songs7 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
for song in songs7 {
  if song == "You Belong with Me" {
    continue
  }
  
  print("My favorite song is \(song)")
}
```


## Switch case 
 
```Swift
let liveAlbums = 2
switch liveAlbums {
case 0:
  print("You're just starting out")
case 1:
  print("You just released iTunes Live From SoHo")
case 2:
  print("You just released Speak Now World Tour")
default:
  print("Have you done something new?")
}

let studioAlbums = 5
switch studioAlbums {
case 0...1:
  print("You're just starting out")
case 2...3:
  print("You're a rising star")
case 4...5:
  print("You're world famous!")
default:
  print("Have you done something new?")
}
```
