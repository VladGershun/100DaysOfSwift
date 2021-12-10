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
