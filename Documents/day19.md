# Day 19

* __Project 2, Part One__
	* Setting up
	* Designing your layout
	* Making the basic game work: UIButton and CALayer

## Setting up

* project setting

## Designing your layout

* autolayout
* __Editor__ menu and choose __Resolve Auto Layout Issues__ > __Update Frames__

## Making the basic game work: UIButton and CALayer

1. Property 설정

* button Property

```Swift
  @IBOutlet var button1: UIButton!
  @IBOutlet var button2: UIButton!
  @IBOutlet var button3: UIButton!
```

* 나라이름, 점수 설정

* `class` 안에 설정

```Swift
var countries = [String]()
var score = 0
```

2. 나라이름 배열 설정

* `viewDidLoad`안에 설정 (나라 이름을 각각 `append()`할 수 있지만, 한꺼번에 String array를 만들어 `+=`연산자를 넣어서 append 할수 있음)

```Swift
countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "span", "uk", "us"]
```

3. button의 외곽선 설정

* `viewDidLoad`안에 설정

	- button의 CALayer를 사용함

```Swift
button1.layer.borderWidth = 1
button2.layer.borderWidth = 1
button3.layer.borderWidth = 1
    
button1.layer.borderColor = UIColor.lightGray.cgColor
button2.layer.borderColor = UIColor.lightGray.cgColor
button3.layer.borderColor = UIColor.lightGray.cgColor
```


## 참조

* [UIButton](https://developer.apple.com/documentation/uikit/uibutton)
* [CALayer](https://developer.apple.com/documentation/quartzcore/calayer)

