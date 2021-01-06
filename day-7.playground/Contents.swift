import UIKit

// Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) { // a função action recebe uma String
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

// Using closures as parameters when they return values

func makePizza(flavor: (String) -> String) {
    print("I'm making a pizza")
    let pizzaIsDone = flavor("Mussarela")
    print(pizzaIsDone)
}

makePizza { (pizzaFlavor: String) -> String in
    return "Pizza \(pizzaFlavor) is done!";
}

// Shorthand parameter names

func travelTo(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travelTo { place in
    "I'm going to \(place) my car"
}

travelTo {
    "I'm going to \($0) my car"
}

// Closures with multiple parameters

func travelAgain(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travelAgain { (place: String, miles: Int) in
    "I'm going to \(place) at \(miles) miles per hour."
}

// Returning closures from functions

func makePizzaAgain() -> (String) -> Void {
    return {
        print("I'm going to make a pizza of \($0)")
    }
}

let pizza = makePizzaAgain()
pizza("Flavor")
// makePizzaAgain()("Flavor")

// Capturing values

func travelToOrlando() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1;
    }
}

let result2 = travelToOrlando()
result2("Orlando")
result2("Orlando")
result2("Orlando")
result2("Orlando")

