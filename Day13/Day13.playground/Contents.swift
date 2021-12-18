import Cocoa

//protocols
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

//car conforms to the vehicle protocol
struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Thats to slow, i'm using a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

getTravelEstimates(using: [car, bike], distance: 150)

//opaque return types
func getRandomNumber() -> Int {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}

//swift types like Int and Bool conform to a protocal Equatable, which lets you compare ==
print(getRandomNumber() == getRandomNumber())

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

//extensions
var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
//using an extension makes your code more organized instead of using global functions
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}


let lotr = Book(title: "Lord of the Rings", pageCount: 1178)
let cat = Book(title: "Cats", pageCount: 23, readingHours: 123)

//create and use protocol extensions
let guests = ["Mario", "Luigi", "Peach"]

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let vlad = Employee(name: "Vlad Gershun")
vlad.sayHello()

/*
 Checkpoing 8
 - create a protocol to describe a building
 - int to store how many rooms
 - int for the cost
 - stirng of estate agent
 - sales summary method
 - 2 structs, House and Office
 */

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    func summary()
}

extension Building {
    func summary() {
        print("Hello, my name is \(agent) and I am selling a \(rooms) room building for a price of $\(cost) dollars.")
    }
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
}

let myHome = House(rooms: 6, cost: 450_000, agent: "Vlad Gershun")
myHome.summary()

let myOffice = Office(rooms: 32, cost: 2_321_321, agent: "Ryan Hurley")
myOffice.summary()

