# Day 6

* Closures, Part Two

## Using closures as parameters when they accept parameters


```Swift
func travel(action: (String) -> Void) {
  print("I'm getting ready to go.")
  action("London")
  print("I arrived!")
}

travel { (place: String) in
  print("I'm going to \(place) in my car")
}
```

## Using closures as parameters when they return values


```Swift
func travel1(action: (String) -> String) {
  print("I'm getting ready to go.")
  let description = action("London")
  print(description)
  print("I arrived")
}

travel1 { (place: String) -> String in
  return "I'm going to \(place) in my car"
}
```

## Shorthand parameter names


```Swift
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
```


## Closures with multiple parameters


```Swift
func travel3(action: (String, Int) -> String) {
  print("I'm getting ready to go.")
  let description = action("London", 60)
  print(description)
  print("I arrived!")
}

travel3 {
  "I'm going to \($0) at \($1) miles per hour"
}
```


## Returning closures from functions
 

```Swift
func travel4() -> (String) -> Void {
  return {
    print("I'm going to \($0)")
  }
}

let result = travel4()
result("London")

let result2 = travel4()("London")
```

## Capturing values

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

## Closures summary

* You can assign closures to variables, then call them later on.
* Closures can accept parameters and return values, like regular functions.
* You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
* If the last parameter to your function is a closure, you can use trailing closure syntax.
* Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
* If you use external values inside your closures, they will be captured so the closure can refer to them later.

