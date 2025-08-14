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

let result = isNormalBMI(weight: 80, height: 191)
if (result.isNormal) && (result.bmi > 1) {
    print("your weight is normal")
}
else if !result.isNormal && (result.bmi > 1) {
    print("your weight is not normal pls check your health")
}
else if result.bmi <= 1 {
    print("check your height and enter correct value (M)")
}

