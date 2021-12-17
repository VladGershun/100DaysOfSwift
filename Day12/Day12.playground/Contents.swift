import Cocoa

//classes
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

//inheritance
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) a day.")
    }
}

class Developer: Employee {
    func work() {
        print("Im writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I am a developer who will for for \(hours) a day")
    }
}
//class does not support inharatince
//no child can use final class as a parent
final class Manager: Employee {
    func work() {
        print("Im going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 9)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
let novall = Developer(hours: 12)
novall.printSummary()

//initializers for classes
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    //must call super.init to set parents properties
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

//copying classes
class User {
    var username = "Anonymous"
    
}

//classes are reference based vs strucks are value based

var user1 = User()
var user2 = user1
user2.username = "Vlad"

print(user1.username)
print(user2.username)

//deep copy
class User1 {
    var username = "Anonymous"

    func copy() -> User1 {
        let user = User1()
        user.username = username
        return user
    }
}

var user3 = User1()
var user4 = user3.copy()
user4.username = "Vlad"

print(user3.username)
print(user4.username)

//class deinitializer
class User2 {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

var persons = [User2]()

for i in 1...3 {
    let person = User2(id: i)
    print("User \(person.id): I'm in control!")
    persons.append(person)
}
//stay alive until array is cleared
print("Loop is finished!")
persons.removeAll()
print("Array is clear")

//class variables
class User3 {
    var name = "Paul"
}

var user = User3()
user.name = "Taylor"
user = User3()
print(user.name)

/*
 Checkpoint 7
 - create hierachy of animals
 - Animal with legs propety
 - Dog of Animal, with speak method
 - Corgi and Poodle subclasses of Dog
 - Cat another Animal, speak method, isTame Property
 = Persian and Lion subclass of cat
 */

class Animal {
    let legs: Int
    
    func speak() {
        print("Hello im an animal")
    }
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    override func speak() {
        print("Woof Woof, i'm a dog")
    }
    
    override init(legs: Int) {
        super.init(legs: legs)
    }
}

class Corgi: Dog {
    override init(legs: Int) {
        super.init(legs: legs)
    }
}

class Poodle: Dog {
    override init(legs: Int) {
        super.init(legs: legs)
    }
}

class Cat: Animal {
    var isTame: Bool
    
    override func speak() {
        print("Meow Meow, i'm a cat")
    }
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
        
    }
}

class Persian: Cat {
    override init(legs: Int, isTame: Bool) {
        super.init(legs: legs, isTame: isTame)
    }
    
    override func speak() {
        print("Meow Meow, i'm a persian cat")
    }
}

class Lion: Cat {
    override init(legs: Int, isTame: Bool) {
        super.init(legs: legs, isTame: isTame)
    }
}

let dog1 = Corgi(legs: 4)
let dog2 = Poodle(legs: 4)
let cat1 = Persian(legs: 4, isTame: true)
let cat2 = Lion(legs: 4, isTame: false)

dog1.speak()
cat2.speak()
dog2.speak()
cat1.speak()

