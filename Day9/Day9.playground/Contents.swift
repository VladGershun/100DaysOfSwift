import Cocoa

//closures
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
var greetCopy1: () -> Void = greetUser
greetCopy()

//closure expresion
let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHello1 = { (name: String) -> String in
    "Hi \(name)!"
}

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
//the for is now gone from the original function
let user = data(1989)
print(user)

let sayHello2 = { (name: String) -> String in
    "Hi \(name)"
}

sayHello2("Taylor")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)

//trailing closures
let team1 = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

//let captainFirstTeam1 = team1.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//    return name1 < name2
//})
//
//print(captainFirstTeam1)

let captainFirstTeam1 = team1.sorted(by: { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
})

print(captainFirstTeam1)

//trailing closure syntax
let captainFirstTeam2 = team1.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
}

//short hand syntax
let captainFirstTeam3 = team1.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

//accept functions as parameters
func greetUser2() {
    print("Hi there!")
}

greetUser2()

var greetCopy2: () -> Void = greetUser2
greetCopy2()

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

//multiple functions
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

/*
 checkpoint 5
 - filter out any number that is even
 - sort array in accending order
 - format # is a lucky number
 */

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
//luckNumber.filter{ !$0.isMultiple(of: 2) }
//can't do that because filter is not a mutating method, instead it returns a new array
let filteredArray = luckyNumbers.filter{ !$0.isMultiple(of: 2) }
let sortedArray = filteredArray.sorted{ $0 < $1 }
let finishedArray = sortedArray.map{ String($0) + " is a lucky number" }

for i in 0..<finishedArray.count{
    print("\(finishedArray[i])")
}




