import UIKit

// Variables

var helloWorld = "Hello World!"

// Strings and integers

var str = "Hello, Gi"
// str = 8 -> ERRO! (type-safe language)
var population = 8_000_000 // melhor visualização

// Multi-line strings

var str1 = """
    This goes \
    over multiple
    lines
"""

// Doubles and booleans

var awesome = true // boolean
var pi = 3.14 // double

var myInt = 1
var myDouble = 1.0
// print(myInt + myDouble) -> ERRO! A variável double pode mudar para 3.5, por exemplo, e isso é inseguro já que o swift não consegue prever o valor final.

// String interpolation

var score = 100
print("Your score is \(score)")

// Constants

let name = "Giovanna"
// name = "Julia" -> ERRO! Let é uma constante

// Type annotations

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
let str2: String
str2 = "Hellllooo"
