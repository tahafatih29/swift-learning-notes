import Foundation

// Define possible errors
enum MathError: Error {
    case divisionByZero
    case negativeSquareRoot
}

// Function that may throw an error
func divide(_ a: Double, by b: Double) throws -> Double {
    if b == 0 {
        throw MathError.divisionByZero
    }
    return a / b
}

// Function that may throw another error
func squareRoot(_ number: Double) throws -> Double {
    if number < 0 {
        throw MathError.negativeSquareRoot
    }
    return sqrt(number)
}

// Example usage with do-catch
do {
    let result1 = try divide(10, by: 2)
    print("Division result: \(result1)")
    
    let result2 = try divide(5, by: 0)
    print("Division result: \(result2)") // This will not run
    
} catch MathError.divisionByZero {
    print("Error: Cannot divide by zero.")
} catch {
    print("Unexpected error: \(error).")
}

// Example usage with another throwing function
do {
    let result3 = try squareRoot(16)
    print("Square root result: \(result3)")
    
    let result4 = try squareRoot(-9)
    print("Square root result: \(result4)") // This will not run
    
} catch MathError.negativeSquareRoot {
    print("Error: Cannot take square root of a negative number.")
} catch {
    print("Unexpected error: \(error).")
}

// Using try? (optional result)
let safeDivision = try? divide(10, by: 0)
print("Safe division with try?: \(safeDivision as Any)") // nil if error occurs

// Using try! (force unwrapping - will crash if error occurs)
let forcedDivision = try! divide(10, by: 2)
print("Forced division with try!: \(forcedDivision)")

enum NetworkError: Error {
    case badURL
    case requestFailed
    case uknown
}

func fetchData(from url: String) throws -> String {
    guard url.hasPrefix("https") else {
        throw NetworkError.badURL
    }
    // request
    return "Sample data"
}

do {                                 //http: --> bad URL
    let result = try fetchData(from: "https://example.com") // --> "sample data"
        print(result)
}
catch NetworkError.badURL {
    print("Bad URL!")
}
catch NetworkError.requestFailed {
    print("Request failed")
}
catch {
    print("Unknown error: \(error)")
}
