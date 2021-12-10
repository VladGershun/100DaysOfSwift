import Cocoa

//array of strings
var beatles = ["John", "Paul", "George", "Ringo"]
//array of integers
let numbers = [4, 8, 15, 16, 23, 43]
//array of doubles
var temperatures = [25.3, 28.2, 26.3]

print(beatles[0])
print(numbers[2])
print(temperatures[2])

//arrays must hold same kind of type
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
print(beatles)

var scores = Array<Int>()
scores.append(100)
scores.append(32)
scores.append(43)
print(scores)

var albums = Array<String>()
//var albums = [Strings]()  short hand syntax
albums.append("Folklore")
albums.append("Believe")
albums.append("Map of Soul")
print(albums)
print(albums.count)
//.remove and .removeAll
albums.remove(at: 1)
print(albums)
albums.removeAll()
print(albums)

let bondMovies = ["Casino Royale", "Sepctre", "No Time to Die"]
//checking for value in array
print(bondMovies.contains("Frozen"))
//sorting an array
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())
//reversing an array. Swift only reverses it when its needed
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

//dictionaries
//left side is keys, right side is value
let employee = ["Name": "Taylor Swift",
                "Job": "Singer",
                "Location": "Nashville"]
//since the keys might not exist they are "optional"
//we can use default case to handle that
print(employee["Name", default: "Unknown"])
print(employee["Job", default: "Unknown"])
print(employee["Location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Mauve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Lebron James"] = 206

//can overwrite value in key
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Batman"] = "Penguin"

//sets - don't remember order, don't allow duplicates
var actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samual L Jackson",
])
print(actors)
//adding items to set - insert
actors.insert("Paul Walker")
//will not add duplicate
actors.insert("Nicolas Cage")
print(actors)

//enumerators - Swift enums are highly effiecient
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
//short hand notation
day = .friday
day = .tuesday
