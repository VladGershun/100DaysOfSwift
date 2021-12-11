import Cocoa

//type annotations

//infering
let name = "Vlad"

let surname: String = "Lasso"
var score: Int = 0
var score1: Double = 0

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = false

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@vlad"]
var books: Set<String> = Set([
    "The bluest eye",
    "foundation"
])
//swift already sees that there will be stirngs
var soda: [String] = ["Coke", "Pepsi"]
var teams: [String] = [String]()
var cities: [String] = []

enum UIStle {
    case light, dark, system
}

var style = UIStle.light
style = .dark

let username: String
//stuff
username = "@vlad"
print(username)

/*
 Checkpoint 2
 -  Create an array of strings, print number of items, and number of unique items
 */

let array = [2, 3, 54, 32, 1, 1, 2]
print("Number of items \(array.count)")
let unique = Set(array)
print("Number of unique items \(unique.count)")
