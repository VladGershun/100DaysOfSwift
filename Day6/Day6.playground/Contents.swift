import Cocoa

//for loops
let platforms = ["iOS", "macOS", "tvOS"]
//os is a loop variable
for os in platforms {
    print("Swift works with \(os)!")
}
//... is called a range
for i in 1...12 {
    print("This is the \(i) table")
    for j in 1...12 {
        print("5 * \(j) is \(5 * j)")
    }
    print()
}

for i in 1...5 {
    print("Counting from 1 thought 5 \(i)")
}

for i in 1..<5 {
    print("Counting from 1 up to 5 \(i)")
}

var lyric = "haters gonna"
//can use _ if we are not trying to access anything special
for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

//while loops

var countdown = 10
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical hit!")

//skip loop items
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)

/*
 Checkpoint 3
 - FizzBuzz
 */
//old school way
for i in 1...100 {
    if(i % 3 == 0) {
        if(i % 5 == 0) {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
    } else if(i % 5 == 0) {
        print("Buzz")
    } else {
        print(i)
    }
}
//using methods
for i in 1...100 {
    if(i.isMultiple(of: 3)) {
        if(i.isMultiple(of: 5)) {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
    } else if(i.isMultiple(of: 5)) {
        print("Buzz")
    } else {
        print(i)
    }
}
