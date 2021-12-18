import Cocoa

//optionals
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]
//unwrapping value
if let peachOpposite = opposites["Peach"] {
    print("Peach's opposite is \(peachOpposite)")
}

var username: String? = nil
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
//unwrap optional
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

//guard statements
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

//var myVar: Int? = 3
//
//if let unwrapped = myVar {
//    //Run if myVar has a value inside
//}
//
//guard let unwarpped = myVar else {
//    //Run if myVar does not have a value inside
//}

func printSquare1(of number: Int?) {
    guard let number = number else {
        print("Missing input")

        // 1: We *must* exit the function here
        return
    }

    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}


//nil coalescing
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]
//set a defualt value if nil
let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number1 = Int(input) ?? 0
print(number1)


//optional chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book1 {
    let title: String
    let author: String?
}

var book1: Book1? = nil
let author1 = book1?.author?.first?.uppercased() ?? "A"
print(author1)

//function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

/*
 Checkpoint 9
 - function that accpets optional arrya of ints
 - returns 1 int randomly
 - if array is empty or missing return random number betwen 1...100
 - write function in single line of code
 */
func randomNumber(number: [Int]?) -> Int { number?.randomElement() ?? Int.random(in: 1...100) }

let numbers = [Int]()
let numbers1 = [23, 12, 45, 4, 66]
print(randomNumber(number: numbers))
print(randomNumber(number: numbers1))

