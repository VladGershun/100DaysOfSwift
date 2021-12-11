import Cocoa
import Foundation
import Darwin

//conditionals

//if someCondition {
//    print("Do something")
//}

let score = 85
if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where were going, we dont need roads")
}

if percentage < 85 {
    print("Sorry u failed")
}

if age >= 18 {
    print("You can vote")
}

let ourName = "Vlad Gershun"
let friendName = "Aron Bob"

if ourName > friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName < friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "usa"
if country == "usa" {
    print("Yay")
}

let name = "Vlad"
if name != "noone" {
    print("Welcome \(name)")
}

var username = "VladGershun"
if username == "" {
    
}
print("Welcome, \(username)")
//Swift is inefficient checking strings like this
//if username.count == 0
//if username.isEmpty == 0 - is more efficient

if username.isEmpty {
    username = "Anonymous"
}

//multiple conditions
let age1 = 16

if age1 >= 18 {
    print("Yay")
}
if age1 < 18 {
    print("awe")
}
//else statements
if age1 > 18 {
    print("yay")
} else {
    print("aw")
}

//if a {
//    //stuff
//} else if b {
//    //stuff
//} else {
//    //stuff
//}

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("its a nice day")
    }
}
//logical operator
if temp > 20 && temp < 30 {
    print("It's a nice day!")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("You can buy it!")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Lets Fly!")
} else if transport == .bicycle {
    print("Let's hope for a bike path...")
} else if transport == .car {
    print("Time for traffic...")
} else {
    print("Im going to to hire a scooter now!")
}

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

//switch statements
switch forecast {
case .sun:
    print("sun")
case .rain:
    print("rain")
case .wind:
    print("wind")
case .snow:
    print("snow")
case .unknown:
    print("unknown")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("Batman")
case "Mega-City One":
    print("Judge Bredd")
default:
    print("Who is you?")
}

//swift does not continue through switch statements
let day = 5
print("My true love gave to me")
//can use fallthourgh to fix that
switch day {
case 5:
    print("5 golden ringts")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 french hends")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("a partirdge in a pear tree")

}

//ternary conditinal operator
let age2 = 18
let canVote = age >= 18 ? "Yes" : "No"
//condition to check | is it true | is it false
//WTF - what are we checking | is it true | is it false

let hour = 23
print(hour < 12 ? "Its before noon" : "Its afternoon")

let names = ["Jane", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "light"
print(background)

