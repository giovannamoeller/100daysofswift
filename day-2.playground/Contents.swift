import UIKit

// Arrays
var names: [String] = ["Giovanna", "Julia", "Leticia"]

// Sets
let colors = Set(["red", "green", "blue"])

// Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

var person = (name: "Paul", age: 40, isMarried: true)

// Dictionaries

let heights: [String: Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
print(heights["Taylor Swift"] ?? "Unknown") // Unknown is default

// Default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Charlotte", default: "Unknown"]

// Empty collections

var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()
var words = Set<String>()
var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

// Enumerations

enum Result {
    case success
    case failure
}
var results23 = Result.failure
results23 = .success

// Enum associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Switch with enum

switch talking {
case .talking(let topic): print("hey im talking \(topic)")
    case .singing: print("heyy")
    case .running: print("heyyy")
    case .bored: print("bu")
}

// Enum raw values

enum Planet: Int {
    case mercury = 3
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
