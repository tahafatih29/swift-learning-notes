import Foundation

let a = 3
let b = 5

let sum = a + b

if sum == 10 {
    print(sum)
}
else if sum > 10 {
    print("sum>10")
}
else {
    print("sum<10")
}

let name: String? = "Taha"
let age: Int? = 24
let isStudent = true
let gender = "male"
let currentYear = Calendar.current.component(.year, from: Date())
var bornYear: Int? = nil
if let age = age {
    bornYear = currentYear - age
}
else {
    bornYear = nil
}
if (name != nil && age != nil && bornYear != nil ) && (isStudent && gender == "male")   {
    print("Hello \(name!), your are \(age!) years old, You were born in \(bornYear!)")
}
else {
    print("No INFO or missing parameters")
}
