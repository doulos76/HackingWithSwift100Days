# Day 5

* functions, parameters, and errors

	* `func` keyword
	* 반복을 막고, 재사용가능하게 하기 위함


## Writing functions

* `func`
* Reuseable

```Swift
func printHelp() {
  let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
  print(message)
}

printHelp()
```

## Accepting parameters

* `func funcName(parameter: Type) {...}`

```Swift
print("Hello, world!")

func square(number: Int) {
  print(number * number)
}

square(number: 8)

```

## Returning values

* `->` 이후에 Return type을 지정
* 함수 body안에 `return` 결과값을 넣어야 함.

```Swift
func square1(number: Int) -> Int {
  return number * number
}

let result = square1(number: 8)
print(result)
```


## Parameter labels

* internal argument
* `func functionName(argument parameter: Type) { }`

```Swift
func square2(number: Int) -> Int {
  return number * number
}

let result1 = square2(number: 8)

func sayHello(to name: String) {
  print("Hello, \(name)!")
}

sayHello(to: "Taylor")```


## Omitting parameter labels

* `_`를 넣어서 exteranl parameter name( argument )를 생략할 수 있음.

```Swift
func greet(_ person: String) {
  print("Hello, \(person)!")
}

greet("Taylor")
```

## Default parameters

* parameter에 값을 default로 넣을 수 있음.

```Swift
func greet(_ person: String, nicely: Bool = true) {
  if nicely == true {
    print("Hello, \(person)!")
  } else {
    print("Oh no, it's \(person) again...")
  }
}

greet("Taylor")
greet("Taylor", nicely: false)
```

## Variadic functions

* `...`

```Swift
print("Haters", "gonna", "hate")

func square(numbers: Int...) {
  for number in numbers {
    print("\(number) squared is \(number * number)")
  }
}

square(numbers: 1, 2, 3, 4, 5)
```


## Writing throwing functions

```Swift
enum PasswordError: Error {
  case obvious
}

func checkPassword(_ password: String) throws -> Bool {
  if password == "password" {
    throw PasswordError.obvious
  }
  return true
}
```

## Running throwing functions

```Swift
do {
  try checkPassword("password")
  print("That password is good!")
} catch {
  print("You can't use that password.")
}
```


## inout parameters 

* `inout`
* reference type

```Swift
func doubleInPlace(number: inout Int) {
  number * 2
}

var myNum = 10
doubleInPlace(number: &myNum)
```


## Functions summary

* 함수는 코드의 재사용에 용이함.
* `parameter`를 사용해서 값을 넘겨 줄 수 있음
* return 값을 갖음
* internal parameter, external argument
* parameter는 default 값을 갖음
* parameter가 연속적으로 추가할 경우 `...`을 사용함
* function은 error를 던질 때, `throws`를 사용함
* `inout`을 이용해서 내부, 외부 변수를 변경할 수 있음
