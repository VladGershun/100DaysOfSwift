import Cocoa

//access control
struct BankAccount {
    //make funds only accesabily by items within the sturcture
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

//this is allowed
//account.funds -= 1000

//private - dont let anything outside the sturct use this
//fileprivate - dont let anyone outside the current file use tis
//public - let anyone anywhere use this
//private(set) - anyone can read this externaly, but only internal mehtods can write


//static properties and methods
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Vlad Gershun")
print(School.studentCount)

//self - the current value of struct 55, "Hello", true
//Self - the current type of sturct Int, String, Bool

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

print(Employee.example)


/*
 Checkpoint 6
 - mae a sturct with model, seats, current gear
 - methods for change gear up and down
 */

struct Car {
    let model: String
    let seats: Int
    private var currentGear = Int.random(in: 1...6) {
        didSet {
            print("Shifted into \(currentGear) gear!")
        }
    }
    
    init(model: String, seats: Int) {
        self.model = model
        self.seats = seats
    }
    
    mutating func gearUp() {
        if currentGear < 6 {
            self.currentGear += 1
        }
        
    }
    
    mutating func gearDown() {
        if currentGear > 1 {
            self.currentGear -= 1
        }
        
    }
    
    func info() {
        print("Model: \(model)")
        print("Seats: \(seats)")
        print("Gear: \(currentGear)")
    }
}

var car = Car(model: "Jetta", seats: 4)
car.info()
car.gearUp()
car.gearUp()
car.gearDown()


