import Cocoa

//variable
var name = "Ted"
name = "Rebecca"

//constants
let user = "Daphne"
print(user)

//strings
let actor = "Tom Cruise 🏃‍♂️"
let quote = "He tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

//switches
enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}

//init and deinit
class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

//protocol
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
}

//extensions
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote1 = "   The truth is rarely pure and never simple   "
let trimmed = quote1.trimmed()

//optionals
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

//unwrapping
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

//nil coalescing
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

func randomNumber(number: [Int]?) -> Int { number?.randomElement() ?? Int.random(in: 1...100) }

let numString = [12, 3, 443, 54, 2, 56]
print(randomNumber(number: numString))
