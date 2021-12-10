import Cocoa

struct Fraction {
    private(set) var numerator: Int
    private var denominator: Int
    
    init(numerator: Int, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func add(a: Fraction, b: Fraction) -> Fraction {
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
    
//    func divide(a: Fraction, b:Fraction) -> Fraction {
//        let newNumerator = a.numerator * b.denominator
//        let newDenominator = a.denominator * b.numerator
//        let newFraction = Fraction(numerator: newNumerator, denominator: newDenominator)
//        return newFraction
//    }
    
    static func divide(_ numerator: Fraction, by divisor: Fraction) -> Fraction {
        let newNumerator = numerator.numerator * divisor.denominator
        let newDenominator = numerator.denominator * divisor.numerator
        let newFraction = Fraction(numerator: newNumerator, denominator: newDenominator)
        return newFraction
    }
    
    func divided(by divisor: Fraction) -> Fraction {
        Fraction(
            numerator: self.numerator * divisor.denominator,
            denominator: divisor.numerator * self.denominator
        )
    }
    
    static func / (numerator: Fraction, divisor: Fraction) -> Fraction {
        numerator.divided(by: divisor)
    }
    
    static func /= (numerator: inout Fraction, divisor: Fraction) {
        numerator.divide(by: divisor)
    }
}

//building a string from the instance
extension Fraction: CustomStringConvertible {
    var description: String {
        "\(numerator)/\(denominator)"
    }
}

func printFraction(fraction: Fraction) {
    print("\(fraction)")
}

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
let fraction6 = Fraction.divide(fraction1, by: fraction2)
printFraction(fraction: fraction6)

var copy = fraction1
copy.divide(by: fraction2)
copy
fraction1.divided(by: fraction2)
Fraction.divide(fraction1, by: fraction2)
