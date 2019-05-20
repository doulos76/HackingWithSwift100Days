import UIKit

//: # Simple Types

//: ## Variables
var str = "Hello, playground"
str = "Good morning"

//: ## Strings and Integer

var age = 38
var population = 8_000_000
var name = "Roy"

//: ## Multi-line strings

var str1 = """
This goes
over multiple
lines
"""
print(str1)

var str2 = """
This goes \
over multiple \
lines
"""

print(str2)

//: ## Doubles and Boolean

var pi = 3.141
var awesome = true

//: ## String interpolation

var score = 85
var strOfScore = "Your score was \(score)"
var results = "The test results are here: \(strOfScore)"

//: ## Constants

let taylor = "swift"

//: ## Type annotations

let str3 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

//: Simple types: Summary

//You make variables using `var` and constants using `let`. It’s preferable to use constants as often as possible.
//Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
//Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
//String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
//Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
