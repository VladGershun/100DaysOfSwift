import Cocoa

//structures
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    //these are called properties
    let name: String
    var vacationRemaining = 14
    //mutating function lets us change the data of the structure
    //this function is called a method
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

//this is an instance
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

let kane = Employee(name: "Lana Kane", vacationRemaining: 23)
//if default variable is set then function signature changes
let vlad = Employee(name: "Vlad Gershun")

let a = 1
let b = 2.0
//double is a struct with an init
let c = Double(a) + b


//computed property
struct Employee1 {
    //stored property
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    //computed property
    var vacationRemaining: Int {
        //get the value of vacationRemaning
        get {
            vacationAllocated - vacationTaken
        }
        //set the value for vacationRemaning
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer1 = Employee1(name: "Sterling Archer", vacationAllocated: 14)
archer1.vacationTaken += 4
archer1.vacationRemaining = 5
print(archer1.vacationRemaining)
archer1.vacationTaken += 4
print(archer1.vacationRemaining)

//property observer
//old code
//struct Game {
//    var score = 0
//}
//
//var game = Game()
//game.score += 10
//print("Score is now \(game.score)")
//game.score -= 3
//print("Score is now \(game.score)")
//game.score += 1

struct Game {
    var score = 0 {
        //runs everytime our computer property was set
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

//initializers
//old code - memberwise initializer
//struct Player {
//    let name: String
//    let number: Int
//}
//
//let player = Player(name: "Megan R", number: 15)

struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

struct Player1 {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player1(name: "Megan R")
print(player.number)
