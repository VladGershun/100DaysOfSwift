import Cocoa

//boolean
let goodDogs = true
var gameOver = false
let isMultiple = 120.isMultiple(of: 3)
print(gameOver)
//toggle has the same action as not (!)
gameOver.toggle()
print(gameOver)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

//concatination
let firstPart = "Hello"
let secondPart = "World"
let greeting = firstPart + secondPart
let lyric = firstPart + " Big " + secondPart
print(lyric)

//operator overloading - using + for concatination instead of mathematically

//swift cannot join all of these parts together in one try
let luggageCode = "1" + "2" + "3" + "4" + "5"

//string interpelation - more efficeint way to concatinate
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old"
print(message)
//we can concatinate different kinds of types using string interpelation
print("5 x 5 is \(5 * 5)")

/*
CHECKPOINT 1
- create a constant holding any temperature in Celsius
- convert that to fahrenheit by mulitpling by 9, dividing by 5, and adding 32
- print the resulsts showing both celsius and fahrenheit values
*/

let celsius = 13.3
var fahrenheit = celsius * 9
fahrenheit /= 5
fahrenheit += 32
print("Celsius: \(celsius) Fahrenheit: \(fahrenheit)")




