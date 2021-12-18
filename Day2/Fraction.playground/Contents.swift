import Cocoa

func gcd(_ a: Int,_ b: Int) -> Int {
    if b > a {
        return gcd(b, a)
    }
    let remainder = a % b
    if remainder == 0 { return b }
    return gcd(b, remainder)
}

struct Fraction {
    private(set) var numerator: Int
    private var denominator: Int
    
    init(numerator: Int, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        reduce()
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
    
    mutating func multiply(by fraction: Fraction) {
        numerator *= fraction.numerator
        denominator *= fraction.denominator
        reduce()
    }
    
    func divided(by divisor: Fraction) -> Fraction {
        var copy = self
        copy.divide(by: divisor)
        return copy
    }
    
    mutating func divide(by divisor: Fraction) {
        numerator *= divisor.denominator
        denominator *= divisor.numerator
        reduce()
    }
    
    static func / (numerator: Fraction, divisor: Fraction) -> Fraction {
        numerator.divided(by: divisor)
    }
    
    static func /= (numerator: inout Fraction, divisor: Fraction) {
        numerator.divide(by: divisor)
    }
    
    mutating func reduce() {
        let gcd = gcd(numerator, denominator)
        numerator /= gcd
        denominator /= gcd
    }
}

//building a string from the instance
extension Fraction: CustomStringConvertible {
    var description: String {
        "\(numerator)/\(denominator)"
    }
}

//fraction creating
var fraction1 = Fraction(numerator: 12, denominator: 6)
var fraction2 = Fraction(numerator: 3, denominator: 9)

//divide
var fraction3 = Fraction(numerator: 43, denominator: 11)
fraction3.divide(by: fraction1)

//multiply
var fraction4 = Fraction(numerator: 23, denominator: 9)
fraction4.multiply(by: fraction2)


