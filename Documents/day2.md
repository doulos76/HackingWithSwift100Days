# Day 2

* arrays, dictionaries, sets and enums

## Arrays

* 순서에 따른 자료형
* `[]`으로 표현

```Swift
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "RIngo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

//Result
//--->
//"Paul McCartney"
```

## Sets

* 순서에 무관함
* 각 element는 유일한 값이고, 중복될 경우에 하나만 표시됨

```Swift
let colors = Set(["red", "green", "blue"])

//Result
//--->
//{"red", "green", "blue"}

let colors2 = Set(["red", "green", "blue", "red", "blue"])

//Result
//--->
//{"red", "blue", "green"}
```


## Tuples

* 하나의 value안에 여러개의 value를 담을 수 있는 자료형, Array와는 다름
* item을 추가하거나 삭제할 수 없음
* 아이템의 type을 변경할 수 없음, 동일한 type만 사용할 수 있음
* numeric position또는 이름으로 각 item에 접근할 수 있음.

```Swift
var name = (first: "Taylor", last: "Swift")
name.0
name.first
```


## Arrays vs sets vs tuples


```Swift
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//Result
//--->
//(house 555, street "Taylor Swift Avenue", city "Nashville")

let set = Set(["aardvark", "astronaut", "azalea"])

//Result
//--->
//{"astronaut", "azalea", "aardvark"}

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Result
//--->
//["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

```


## Dictionaries

* Key와 Value를 갖는 Data type
* 순서가 없음


```Swift
let heights = ["Taylor Swift": 1.78, "Ed Sheeran": 1.73]
heights["Taylor Swift"]

```


## Dictionary defaults values


```Swift
let favoriteIceCream = [
  "Paul": "Chocolate",
  "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]

// "Chocolate"

favoriteIceCream["Charlotte", default: "Unknown"]

// "Unknown"

favoriteIceCream

// ["Sophie": "Vanilla", "Paul": "Chocolate"]

favoriteIceCream["Charlotte"]

// nil

favoriteIceCream["Charlotte", default: "12"]

// "12"
```


## Creating empty collections

```Swift
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results2 = Array<Int>()
```


## Enumerations

* `enum`으로 정의하고 각각 `case`에 맞게 표현
* 열거형은 관련 값 그룹을 쉽게 사용할 수 있도록 정의 하는 방법

```Swift
let result3 = "failure"
let result4 = "failed"
let result5 = "fail"

enum Result {
  case success
  case failure
}

let result6 = Result.failure

```

## Enum associated values

* 열거 형은 간단한 값을 저장할뿐만 아니라 각 대소 문자에 연결된 값을 저장할 수도 있습니다. 이렇게하면 추가 정보를 열거 형에 첨부 할 수 있으므로 더 많은 미묘한 데이터를 나타낼 수 있습니다.
* 

```Swift
enum Activity {
  case board
  case running(destination: String)
  case talking(topic: String)
  case singing(volume: Int)
}

let taling = Activity.talking(topic: "football")
```


## Enum raw values

```Swift
enum Planet: Int {
  case mercury = 1
  case venus
  case earth
  case mars
}

let earth = Planet(rawValue: 2)
```


## Complex types: Summary

1. Array, set, tuple, dictionary는 하나의 value에 한 그룹의 item 들을 저장할 수 있음
2. Array는 순서에 관련있음
3. Set은 순서에 관계 없이 저장됨
4. Tuple은 Size가 고정되어 있고, 이름이나 순서로 접근할 수 있음
5. Dictionary는 key값에 따라 저장 또는 값이 불려짐
6. Enum은 spelling 실수를 막기 위해 관련된 값끼리 그룹화해서 사용하는 자료형
7. 정수 나 문자열에서 rawValue를 첨부 할 수 있도록 enum에 값을 첨부하거나 연결된 값을 추가하여 각 case에 대한 추가 정보를 저장할 수 있음.
