import Cocoa

//varaibles values can change or vary
var greeting = "Hello, playground"
var name = "Ted"
name = "Rebecca"
name = "Keeley"

//constants cannot be changed
let character = "Daphne"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

//prefer to use constants over variables
let managerName = "Micheal Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

//strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let quote = "Then he tapped on a sign saying \"Believe\" and walked away."

//multiline strings
let movie = """
A day in
the life of an
Apple engineer
"""

//string length
print(actor.count)
let nameLength = actor.count
print(nameLength)

//uppercase
print(actor.uppercased())
//check to see if a string starts with something
print(movie.hasPrefix("A day"))
//check to see if a string ends with something
print(movie.hasSuffix("engineer"))

//integers
let score = 10
let reallyBig = 100000000
//use underscores to break up numbers
let big = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

//compound assignment operators
var counter = 10
counter = counter + 5
counter += 5
print(counter)
counter *= 2
counter -= 2
counter /= 2

//is multiple
let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

//decimal numbers / floating point numbers
let decimal = 0.1 + 0.2
print(decimal)
 
//type safty prevents this
let a = 1
let b = 2.0
let c = Double(a) + b
let d = a + Int(b)

//if you add a decimal point Swift treates it as a double
let double1 = 3.1
let double2 = 3131.3131
let doulbe3 = 3.0
let int1 = 3

//we are telling swift that the varialbe name holds a type String
var name1 = "Nicolas Cage"
name1 = "John Travolta"

//treats rating as a double
var rating = 5.0
rating *= 2
