import UIKit

// Creating basic closures

let driving = {
    print("I'm driving my car")
}

driving()

// Accepting parameters in a closure

let drivingTo = {
    (place: String) in
    print("I'm going to \(place) in my car");
}

drivingTo("Orlando");

// Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// Closures as parameters

let drivingAgain = {
    print("I'm driving");
}

func travel(action: () -> Void) {
    print("I'm getting ready")
    action();
    print("I arrived!");
}

travel(action: drivingAgain)

// Trailing closure syntax

let drivingInMyCar = {
    print("I'm driving in my car");
}

func travelTo(action: () -> Void) {
    print("I'm getting ready")
    action();
    print("I arrived!");
}

travelTo { // ou travelTo()
    print("I'm driving in my car") // Elimina o uso do drivingInMyCar
}



