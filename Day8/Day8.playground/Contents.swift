import Cocoa

//more fractions, default values for parameters
//set default value of end to 12
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
//default parameters was false
characters.removeAll(keepingCapacity: true)
print(characters.count)

//error handeling in functions
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Too short.")
} catch {
    //Swifts error messages
    print("There was an error: \(error.localizedDescription)")
}

//try! - when you are sure that an error will not occur
//let result1 = try! checkPassword(string)
//print("Password rating: \(result1)")

/*
 checkpoint 4
 -  write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number.
 */

enum MathErrors: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ number: Int) throws -> Int {
    if(number < 0) {
        throw MathErrors.outOfBounds
    }
    for i in 1...100 {
        for j in 1...100 {
            if(i == j) {
                if((i * j) == number) {
                    return i
                }
            }
        }
    }
    throw MathErrors.noRoot
}

let number = 10000
do {
    let answer = try squareRoot(number)
    print("Square root of \(number) is \(answer)")
} catch {
    print("\(number) has no square root!")
}
