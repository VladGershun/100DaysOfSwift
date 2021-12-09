import Cocoa

struct Fraction {
    let numerator: Int
    let denominator: Int
    
    init(numerator: Int, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
//    why does this print not work?
//    func print(fraction: Fraction) {
//        print(fraction.numerator)
//    }
    
    func add(a: Fraction, b: Fraction) -> Fraction {
//        why does this inequality not work?
//        var gcd: Int
//        var remainder: Int
//        while a != 0 {
//        }
        let newDenominator = a.denominator * b.denominator
        let aNumerator = a.numerator * b.denominator
        let bNumerator = b.numerator * a.denominator
        let newNumerator = aNumerator + bNumerator
        let newFraction = Fraction(numerator: newNumerator, denominator: newDenominator)
        return newFraction
    }
    
    func subtract(a: Fraction, b: Fraction) -> Fraction {
        let newDenominator = a.denominator * b.denominator
        let aNumerator = a.numerator * b.denominator
        let bNumerator = b.numerator * a.denominator
        let newNumerator = aNumerator - bNumerator
        let newFraction = Fraction(numerator: newNumerator, denominator: newDenominator)
        return newFraction
    }
    
    func multiply(a: Fraction, b: Fraction) -> Fraction {
        let newNumerator = a.numerator * b.numerator
        let newDenominator = a.denominator * b.denominator
        let newFraction = Fraction(numerator: newNumerator, denominator: newDenominator)
        return newFraction
    }
    
    func divide(a: Fraction, b:Fraction) -> Fraction {
        let newNumerator = a.numerator * b.denominator
        let newDenominator = a.denominator * b.numerator
        let newFraction = Fraction(numerator: newNumerator, denominator: newDenominator)
        return newFraction
    }
    
}

func printFraction(fraction: Fraction) {
    print("\(fraction.numerator)/\(fraction.denominator)")
}
//why is Fraction structure not changing colors?
let fraction1 = Fraction(numerator: 3, denominator: 4)
let fraction2 = Fraction(numerator: 5, denominator: 2)

//adding
let fraction3 = fraction1.add(a: fraction1, b: fraction2)
printFraction(fraction: fraction3)

//subtracting
let fraction4 = fraction1.subtract(a: fraction1, b: fraction2)
printFraction(fraction: fraction4)

//multiplying
let fraction5 = fraction1.multiply(a: fraction1, b: fraction2)
printFraction(fraction: fraction5)

//dividing
let fraction6 = fraction1.divide(a: fraction1, b: fraction2)
printFraction(fraction: fraction6)



