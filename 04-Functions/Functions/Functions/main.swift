import Foundation

func main() {
    let string = "Hello, World!"
    print(string)
}
main()

func square(value: Int) -> Int {
    value * value
}

print(square(value:15))

func sumOfTwoInts(_ a: Int, _ b: Int) -> Int {
     a + b
}

print(sumOfTwoInts(10, 20))
print(type(of: sumOfTwoInts))
var r = sumOfTwoInts(4674, 5432)
print("result: \(r)")

func isNormalBMI(
    weight: Int,
    height: Double,
    
) -> (bmi: Double, isNormal: Bool) {
    var isNormal = false
    let bmi = Double(weight) / pow((height), 2)
    if bmi >= 18.5 && bmi <= 24.9 {
        isNormal = true
    }
    
    return (bmi, isNormal)
}

let result = isNormalBMI(weight: 80, height: 1.91)
if (result.isNormal) && (result.bmi > 1) {
    print("your weight is normal")
}
else if !result.isNormal && (result.bmi > 1) {
    print("your weight is not normal pls check your health")
}
else if result.bmi <= 1 {
    print("check your height and enter correct value (M)")
}
// external-internal argument names
@discardableResult
func calculateArea(_ a: Int, _ b: Int) -> Int {
    let area = a * b
    return area
}

calculateArea(10, 23)

class Logger {
    @discardableResult
    func log(message: String) -> Int {
        let logID = Int.random(in: 1000...9999)
        print("Log #\(logID): \(message)")
        return logID
    }
}

let logger = Logger()
let id = logger.log(message: "App started")
logger.log(message: "User clicked button")
@discardableResult
func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value * 2
    }
    return mainLogic(value: value + 5)
}

doSomethingComplicated(with: 20)

func getFullName (firstName: String = "Taha", lastName: String = "Kaya") -> String {
    "\(firstName) \(lastName)"
}
let fullName = getFullName()
print(fullName)

let customFullName = getFullName(firstName: "Ahmet")
print(customFullName)
