# Day 3

* Loops

## For loops

* `for` - `in` loop
* 반복문

```Swift
let count = 1...10

for number in count {
  print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
  print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
  print("play")
}
```

## While loops

* `while` 반복문

```Swift
var number1 = 1

while number1 <= 20 {
  print(number1)
  number1 += 1
}

print("Ready or not, here I come!")
```

## Repeat Loops

* `repeat`-`while`

```Swift
var number2 = 1
repeat {
  print(number2)
  number2 += 1
} while number2 <= 20

print("Ready or not, here I come!")

while false {
  print("This is false")
}

repeat {
  print("This is false")
} while false
```


## Exiting loops

* `break`

```Swift
var countDown = 10

while countDown >= 0 {
  print(countDown)
  countDown -= 1
}

print("Blast off!")

while countDown >= 0 {
  print(countDown)
  
  if countDown == 4 {
    print("I'm bored. Let's go now!")
    break
  }
  
  countDown -= 1
}
```


## Exiting multiple loops

* `for - in`문 앞에 Label을 넣고 내부에서 조건에 맞으면 `break`를 걸어서 빠져 나옴

```Swift
for i in 1...10 {
  for j in 1...10 {
    let product = i * j
    print("\(i) * \(j) is \(product)")
  }
}

outerLoop: for i in 1...10 {
  for j in 1...10 {
    let product = i * j
    print("\(i) * \(j) is \(product)")
    
    if product == 50 {
      print("It's a bullseye!")
      break outerLoop
    }
  }
}
```

## Skipping items

* `continue`문을 이용해서 나머지 생략하고 처음 조건문 쪽으로 이동해서 진행함.


```Swift
for i in 1...10 {
  if i % 2 == 1 {
    continue
  }
  print(i)
}

```

## Infinite loops

* `while` `true` { }
* exit 조건을 넣어야 함

```Swift
var counter = 0
while true {
  print(" ")
  counter += 1
  
  if counter == 273 {
    break
  }
}
```


## Looping summary

* 반복문은 조건이 거짓일 때 까지 반복함
* `for`문은 내부 loop의 각 항목을 임시 상수로 할당함
* 임시 상수가 필요하지 않을 때 `_`로 대신해서 사용할 수 있음
* `while` loop에서는 명시적인 조건을 확인함.
* `repeat - while`은 1번은 실행함.
* `break`문을 통해 single loop문을 나올 수 있으며, 중첩된 구조에서는 label을 붙여서 빠져 나올 수 있음
* `continue`를 사용해서 loop의 항목을 건너 뛸 수 있음
* 무한루프는 요청할 때까지 종료할 수 없음. 종료 조건을 넣는 것이 중요.