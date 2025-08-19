import Foundation

extension Int {
    func plusTrhee() -> Int {
        return self + 3
    }
}
let two = 2
let result = two.plusTrhee()
print(result)

struct Person {
    var name: String
    var surname: String
    
}
extension Person {
    init(fullName: String){
        let components = fullName.components(separatedBy: " ")
        self.init(name: components.first ?? fullName,
                  surname: components.last ?? fullName)
 
        }
   
    }

let person = Person(fullName: "John Doe")
print(person )
print(person.name)
print(person.surname)

protocol GoesVroom {
    var vroomValue: String { get }
    func goVroom() -> String
}

extension GoesVroom {
    func goVroom() -> String {
        return "\(self.vroomValue) goes vroom!"
    }
}

extension GoesVroom {
    func goVroomVroomEvenMore() -> String {
        return "\(self.vroomValue) is vrooming even more!"
    }
}

struct Car{
    let manufacturer: String
    let model: String
}

let modelX = Car(manufacturer: "Tesla", model: "Model X")

extension Car: GoesVroom {
    var vroomValue: String {
        "\(self.manufacturer) \(self.model)"
    }
     
}

print(modelX.goVroom())

print(modelX.goVroomVroomEvenMore())

class MyDouble {
    let value: Double
    init(_ value: Double) {
        self.value = value
    }
}
 
extension MyDouble {
    convenience init() {
        self.init(4.5)
    }
}

let myDouble = MyDouble()
print(myDouble.value)
