# Day 1


## Variables

* `var`로 선언
* 다른 값으로 바뀔 수 있음

```Swift
var str = "Hello, playground"
str = "Good morning"
```

## Strings and integers

* Integer : 변수 또는 상수에 `=` 이후에 정수가 올 경우
* String : 변수 또는 상수에 `=` 이후에 `"문자열"`이 올 경우

```Swift
var age = 38
var population = 8_000_000
var name = "Roy"
```


## Multi-line strings

* String 문자열에서 여러줄 문자열을 사용할 경우 `= """`과 줄을 바꿔서 입력하고 `"""`을 사용해서 마무리함.
* 줄 바꿈을 하지 않을 경우 : 각 줄 끝에 `\`를 사용하면 줄 바꿈이 되지 않음.

```Swift
var str1 = """
This goes
over multiple
lines
"""
print(str1)

// Result
--------------
This goes
over multiple
lines
--------------

var str2 = """
This goes \
over multiple \
lines
"""

print(str2)

// Result
--------------
This goes over multiple lines
--------------

```


## Doubles and booleans

* 일반적인 소수일 경우엔 `Double` 타입 자료형이고, `Float` 형의 경우 명시하여야 함.
* Bool값은 `true` 또는 `false`로 사용함.

```Swift
var pi = 3.141
var awesome = true
```


## String interpolation

* `\()`를 사용함.
* 상수, 변수, 리터럴 및 표현식을 혼합해 문자열 리터럴에 값을 포함시켜 새 문자열 값을 생성하는 방법. 

```Swift
var score = 85
var strOfScore = "Your score was \(score)"
var results = "The test results are here: \(strOfScore)"
```


## Constants

* `let` 으로 선언함.
* 한번 정해지면 바꿀 수 없음.

```Swift
let taylor = "swift"
```


## Type annotations

* 상수나 변수를 선언할 때, Type을 명시적으로 선언함.


```Swift
let str3 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
```


## Simple types: Summary

* You make variables using `var` and constants using `let`. It’s preferable to use constants as often as possible.
* Strings start and end with double quotes(`""`), but if you want them to run across multiple lines you should use three sets of double quotes(`"""`).
* __Integers__ hold whole numbers, __doubles__ hold fractional numbers, and __booleans__ hold true or false.
* String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
* Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
