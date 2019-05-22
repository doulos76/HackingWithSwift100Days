# Day 3

* Operators and Conditions

## Arithmetic Operators

* 사칙연산
* `+`, `-`, `*`, `/`, `%`

```Swift
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

```

## Operator overloading

* `String` type에 `+`를 하면

```Swift
let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf
```

## Compound assignment operators

* `-=`, `+=`
* 복합 연산자

```Swift
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
```


## Comparison operators

* 비교 연산자

```Swift
let firstScore1 = 6
let secondScore1 = 4
firstScore1 == secondScore1
firstScore1 != secondScore1

firstScore1 < secondScore1
firstScore1 >= secondScore1

"Taylor" <= "Swift"
```


## Conditions

* `if 조건문 { }`
* `if 조건문 { } else { }`
* `if 조건문1 { } else if 조건문2 { } else { }


```Swift
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 21 {
  print("Blackjack!")
} else {
  print("Regular cards")
}

if firstCard + secondCard == 2 {
  print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
  print("Blackjack!")
} else {
  print("Regular cards")
}
```


## Combining conditions

* 조건1 `&&` 조건2 : 조건1과 조건2를 모두 만족해야 `true`
* 조건1 `||` 조건2 : 조건1 또는 조건2 하나가 `true`이면 `true`

```Swift
let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
  print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
  print("One of them is over 18")
}
```

## The ternary operator

```Swift
let firstCard1 = 11
let secondCard1 = 10
print(firstCard1 == secondCard1 ? "Cards are the same" : "Cards are different")

if firstCard1 == secondCard1 {
  print("Cards are the same")
} else {
  print("Cards are different")
}
```


## Switch statements

* `switch`
* `fallthrough` : 조건에 맞는 case문 이후 모두 수행

```Swift
let weather = "sunny"
switch weather {
case "rain":
  print("Bring an umbrella")
case "snow":
  print("Wrap up warm")
case "sunny":
  print("Wear sunscreen")
  fallthrough
default:
  print("Enjoy your day!")
}
```

## Range operators

* 1`..<`5 ---> 1, 2, 3, 4 
* 1`...`5 ---> 1, 2, 3, 4, 5

```Swift
let score4 = 85

switch score4 {
case 0..<50:
  print("You failed badly.")
case 50..<85:
  print("You did OK.")
default:
  print("You did great!")
}
```

## Operators and conditions summary

1. 산술연산자를 사용할 수 있다. (`+`, `-`. `*`. `/`, `%`)
2. 복합연산자를 사용해서 계산할 수 있음 (예) `-=`, `*=`, ...
3. `if`, `else`, `else if`등을 이용해서 조건에 맞는 결과로 분기할 때 사용함
4. 삼항연산자 (조건 ? 실행1 : 실행2) : 조건이 참이면 실행1, 거짓이면 실행2 실행
5. switch : 조건문이 다양할 때 `switch case` 사용
6. 범위 연산자 : `...`, `..<`