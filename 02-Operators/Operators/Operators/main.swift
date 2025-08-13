import Foundation

let myAge = 20
let yourAge = 50

if myAge > yourAge {
    print("I am older than you")
}
else if myAge < yourAge {
    print("I am younger than you")
}
else {
    print("We are the same age")
}

let myFatherAge = myAge + 20

if myFatherAge > yourAge {
    print("My father is older than you")
}
else if myFatherAge < yourAge{
    print("My father is younger than you")
}
else {
    print("My father is the same age as you")
}

let doublemyAge = myAge * 2
print("My age doubled is \(doublemyAge)")

let foo = !true // unary prefix

let name: String? = "John" // unary postfix

print(type(of: name))

let newName = name! // unary postfix

print(type(of: newName))

let a = 10 // unary prefix
let b = 20 // unary prefix

let sum = a + b // binary infix

print(sum)

let names = ["John", "Jane", "Jim"]

let surnames = ["Doe", "Smith", "Brown"]

let nameSurnames = names + surnames // binary infix

print(nameSurnames)

let fullNames = names.enumerated().map { index, name in
    "\(name) \(surnames[index])"
}
print(fullNames)


let age = 25

let message: String

if age >= 18 {
    message = "You are an adult"
} else {
    message = "You are not yet an adult"
}
print(message)

let age2 = 14

let message2 = age2 >= 18  ? "You are an adult" : "You are not yet an adult"

print(message2)

