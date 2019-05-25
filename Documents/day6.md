# Day 6

* Closures, Part One


## Creating basic closures

* `Type functionName = { ... }`

```Swift
let driving = {
  print("I'm driving in my car")
}

driving()
```

## Accepting parameters in a closure

* `Type functionName = { (parameter: Type) in ... }`

```Swift
let driving1 = { (place: String) in
  print("I'm going to \(place) in my car")
}

driving1 ("London")
```

## Returning values from a closure

* parameter와 in 사이에 `-> Type`을 넣어줌.
* `return` returnValue

```Swift
let driving2 = { (place: String) in
  print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
  return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)
```


## Closures as parameters

* closure를 일급 객체( 여기서는 parameter)로 사용할 수 있음


```Swift
let driving3 = {
  print("I'm getting ready to go.")
}

func travel(action: () -> Void) {
  print("I'm getting ready to go.")
  action()
  print("I arrived!")
}

travel(action: driving3)

```


## Trailing closures syntax
 

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
